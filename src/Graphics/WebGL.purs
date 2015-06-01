module Graphics.WebGL where

import Debug.Trace

import Data.Maybe (Maybe (..))
import Graphics.Canvas (Canvas (), CanvasElement (), getCanvasElementById)

import qualified Graphics.WebGL.Raw.Enums as Enum
import qualified Graphics.WebGL.Raw       as Raw

import Control.Bind
import Control.Monad
import Control.Monad.Eff
import Control.Monad.Eff.Class
import Control.Monad.Free
import Control.Monad.Reader.Trans
import Control.Monad.Reader.Class
import Data.Coyoneda
import Data.Either
import Data.Function
import Data.Traversable
import Graphics.WebGL.Raw.Types

foreign import data WebGLCanvas :: *

type WebGLContextAttrs =
  { alpha                           :: Boolean
  , depth                           :: Boolean
  , stencil                         :: Boolean
  , antialias                       :: Boolean
  , premultipliedAlpha              :: Boolean
  , preserveDrawingBuffer           :: Boolean
  , preferLowPowerToHighPerformance :: Boolean
  , failIfMajorPerformanceCaveat    :: Boolean
  }

defaultWebGLContextAttrs :: WebGLContextAttrs
defaultWebGLContextAttrs =
  { alpha:                            true
  , depth:                            true
  , stencil:                          false
  , antialias:                        true
  , premultipliedAlpha:               true
  , preserveDrawingBuffer:            false
  , preferLowPowerToHighPerformance:  false
  , failIfMajorPerformanceCaveat:     false
  }

foreign import getWebGLContextWithAttrsImpl """
  function getWebGLContextImpl(canvas, attrs, Just, Nothing) {
    return function () {
      try {
        return Just(
          canvas.getContext('webgl', attrs) || canvas.getContext('experimental-webgl', attrs)
        );
      } catch(err) {
        return Nothing;
      };
    }
  }
""" :: forall eff maybe. Fn4 CanvasElement WebGLContextAttrs (WebGLContext -> maybe) maybe (Eff (canvas :: Canvas | eff) (Maybe WebGLContext))

getWebGLContextWithAttrs :: forall eff. CanvasElement -> WebGLContextAttrs -> Eff (canvas :: Canvas | eff) (Maybe WebGLContext)
getWebGLContextWithAttrs canvas attrs = runFn4 getWebGLContextWithAttrsImpl canvas attrs Just Nothing

getWebGLContext :: forall eff. CanvasElement -> Eff (canvas :: Canvas | eff) (Maybe WebGLContext)
getWebGLContext canvas = getWebGLContextWithAttrs canvas defaultWebGLContextAttrs

-- webgl monad HOMG

data BufferType = Depth | Color | Stencil

toBufferBit :: BufferType -> Number
toBufferBit Depth   = Enum.depthBufferBit
toBufferBit Color   = Enum.colorBufferBit
toBufferBit Stencil = Enum.stencilBufferBit

data WebGLError = WebGLError

type WebGL a = forall eff. ReaderT WebGLContext (Eff (canvas :: Canvas | eff)) (Either WebGLError a)

isContextLost :: WebGL Boolean
isContextLost = do
  ctx <- ask
  liftReaderT do
    bool <- Raw.isContextLost ctx
    err  <- Raw.getError ctx
    case err == Enum.noError of
      true -> return $ Right bool
      _    -> return $ Left WebGLError

  {-- Right <$> (Raw.isContextLost <$> ask) --}
  {-- x <- ask --}
  return $ Left WebGLError
  {-- bool <- Raw.isContextLost ctx --}
  {-- liftReaderT $ return $ Right bool --}

getError :: WebGL Number
getError = do
  ctx <- ask
  liftReaderT do
    err <- Raw.getError ctx
    return $ Right err

{-- getSupportedExtensions :: WebGL [String] --}
{-- getSupportedExtensions = do --}
{--     ctx <- ask --}
{--     exts <- Raw.getSupportedExtensions <$> ask --}
{--     liftReaderT $ liftEff do --}
{--       err <- Raw.getError ctx --}
{--       case (err == Enum.noError) of --}
{--         true -> Right exts --}
{--         _    -> Left WebGLError --}

myProg :: WebGL Boolean
myProg = do
    bool <- isContextLost
    num <- getError
    return bool

main :: forall eff. Eff (canvas :: Canvas | eff) (Either WebGLError Boolean)
main = do
  (Just el) <- getCanvasElementById "webgl"
  (Just gl) <- getWebGLContext el
  runReaderT myProg gl
