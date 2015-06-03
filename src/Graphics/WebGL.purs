module Graphics.WebGL where

import Debug.Trace

import Data.Maybe (Maybe (..))
import Graphics.Canvas (Canvas (), CanvasElement (), getCanvasElementById)

import qualified Graphics.WebGL.Raw.Enums as Enum
import qualified Graphics.WebGL.Raw       as Raw

import Control.Bind
import Control.Monad
import Control.Monad.Error.Trans
import Control.Monad.Error.Class
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
""" :: forall maybe. Fn4 CanvasElement WebGLContextAttrs (WebGLContext -> maybe) maybe (Eff (canvas :: Canvas) (Maybe WebGLContext))

getWebGLContextWithAttrs :: CanvasElement -> WebGLContextAttrs -> Eff (canvas :: Canvas) (Maybe WebGLContext)
getWebGLContextWithAttrs canvas attrs = runFn4 getWebGLContextWithAttrsImpl canvas attrs Just Nothing

getWebGLContext :: CanvasElement -> Eff (canvas :: Canvas) (Maybe WebGLContext)
getWebGLContext canvas = getWebGLContextWithAttrs canvas defaultWebGLContextAttrs

-- webgl monad HOMG

data BufferType = DepthBuffer | ColorBuffer | StencilBuffer

toBufferBit :: BufferType -> Number
toBufferBit DepthBuffer   = Enum.depthBufferBit
toBufferBit ColorBuffer   = Enum.colorBufferBit
toBufferBit StencilBuffer = Enum.stencilBufferBit

data WebGLError = WebGLError

type WebGL a = ReaderT WebGLContext (ErrorT WebGLError (Eff (canvas :: Canvas))) a

isContextLost :: WebGL Boolean
isContextLost = do
  ctx <- ask
  liftReaderT $ liftEff $ Raw.isContextLost ctx

getError :: WebGL Number
getError = do
  ctx <- ask
  liftReaderT $ liftEff $ Raw.getError ctx

debugger :: WebGL Unit
debugger = do
  hasCtx <- not <$> isContextLost
  errNum <- getError
  when (hasCtx && errNum == Enum.noError) (throwError WebGLError)

clearColor :: Number -> Number -> Number -> Number -> WebGL Unit
clearColor r g b o = do
  ctx <- ask
  liftReaderT $ liftEff $ Raw.clearColor ctx r g b o

clear :: BufferType -> WebGL Unit
clear buffer = do
  ctx <- ask
  liftReaderT $ liftEff $ Raw.clear ctx $ toBufferBit buffer

myWebGLProgram :: WebGL Unit
myWebGLProgram = do
  clearColor 1.0 0.0 0.0 1.0
  clear ColorBuffer
  debugger

main :: Eff (canvas :: Canvas) (Either WebGLError Unit)
main = do
    (Just el) <- getCanvasElementById "webgl"
    (Just webgl) <- getWebGLContext el
    runErrorT $ runReaderT myWebGLProgram webgl



{--       err <- liftEff $ Raw.getError ctx --}
{--       case (err == Enum.noError) of --}
{--         true -> return bool --}
{--         _    -> throwError WebGLError --}

{--   {1-- Right <$> (Raw.isContextLost <$> ask) --1} --}
{--   {1-- x <- ask --1} --}
{--   {1-- bool <- Raw.isContextLost ctx --1} --}
{--   {1-- liftReaderT $ return $ Right bool --1} --}


{-- {1-- getSupportedExtensions :: WebGL [String] --1} --}
{-- {1-- getSupportedExtensions = do --1} --}
{-- {1--     ctx <- ask --1} --}
{-- {1--     exts <- Raw.getSupportedExtensions <$> ask --1} --}
{-- {1--     liftReaderT $ liftEff do --1} --}
{-- {1--       err <- Raw.getError ctx --1} --}
{-- {1--       case (err == Enum.noError) of --1} --}
{-- {1--         true -> Right exts --1} --}
{-- {1--         _    -> Left WebGLError --1} --}

{-- myProg :: WebGL Boolean --}
{-- myProg = do --}
{--     bool <- isContextLost --}
{--     num <- getError --}
{--     return bool --}

{-- main :: forall eff. Eff (canvas :: Canvas | eff) (Either WebGLError Boolean) --}
{-- main = do --}
{--   (Just el) <- getCanvasElementById "webgl" --}
{--   (Just gl) <- getWebGLContext el --}
{--   runReaderT isContextLost gl --}
