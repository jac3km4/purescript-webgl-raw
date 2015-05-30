module Graphics.WebGL where

import Debug.Trace

import Data.Maybe (Maybe (..))
import Graphics.Canvas (Canvas (), CanvasElement (), getCanvasElementById)

import qualified Graphics.WebGL.Raw.Enums as Enum
import qualified Graphics.WebGL.Raw       as GL

import Control.Monad
import Control.Monad.Eff
import Control.Monad.Eff.Class
import Control.Monad.Free
import Control.Monad.Reader.Trans
import Control.Monad.Reader.Class
import Data.Coyoneda
import Data.Either
import Data.Function
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

-- finally the WebGL monad

{-- runWebGL :: forall eff a. WebGLContext --}
{--          -> ReaderT WebGLContext (Eff (canvas :: Canvas | eff)) (Either WebGLError a) --}
{--          -> Eff (canvas :: Canvas | eff) (Either WebGLError a) --}
{-- runWebGL ctx r = runReaderT r ctx --}

{-- blorp :: WebGLContext -> Either WebGLError Unit --}
{-- blorp = const (Right unit) --}

{-- example :: forall eff. Eff (canvas :: Canvas | eff) (Either WebGLError Boolean) --}
{-- example = do --}
{--   (Just canvas) <- getCanvasElementById "nope" --}
{--   (Just ctx)    <- getWebGLContext canvas --}
{--   runWebGL ctx (return $ Left WebGLError) --}

data BufferType = Depth | Color | Stencil

toBufferBit :: BufferType -> Number
toBufferBit Depth   = Enum.depthBufferBit
toBufferBit Color   = Enum.colorBufferBit
toBufferBit Stencil = Enum.stencilBufferBit

data WebGLError = WebGLError

data WebGLFree more
  = IsContextLost more
  | Clear BufferType more

type WebGL a = FreeC WebGLFree a

isContextLost :: WebGL Unit
isContextLost = liftFC $ IsContextLost unit

clear :: BufferType -> WebGL Unit
clear b = liftFC $ Clear b unit

runWebGL :: forall eff a. WebGLContext -> (WebGLError -> Eff (canvas :: Canvas | eff) a) -> WebGL a -> Eff (canvas :: Canvas | eff) a
runWebGL ctx onError = runFreeCM interp
  where
    interp :: forall eff. Natural WebGLFree (Eff (canvas :: Canvas | eff))
    interp (IsContextLost next) = const next <$> GL.isContextLost ctx
    interp (Clear bufferType next) = const next <$> GL.clear ctx (toBufferBit bufferType)
