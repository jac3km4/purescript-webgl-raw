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

-- webgl monad HOMG

data BufferType = Depth | Color | Stencil

toBufferBit :: BufferType -> Number
toBufferBit Depth   = Enum.depthBufferBit
toBufferBit Color   = Enum.colorBufferBit
toBufferBit Stencil = Enum.stencilBufferBit

data WebGLError = WebGLError

data WebGLFree more
  = IsContextLost (Boolean -> more)
  | Clear BufferType more

type WebGL a = FreeC WebGLFree a

isContextLost :: WebGL Boolean
isContextLost = liftFC $ IsContextLost id

clear :: BufferType -> WebGL Unit
clear b = liftFC $ Clear b unit

runWebGL :: forall eff a. WebGLContext
         -> (WebGLError -> Eff (canvas :: Canvas | eff) Unit)
         -> WebGL a
         -> Eff (canvas :: Canvas | eff) a
runWebGL ctx onError = runFreeCM (interp ctx onError $ return unit)

debugWebGL :: forall eff a. WebGLContext
           -> (WebGLError -> Eff (canvas :: Canvas | eff) Unit)
           -> WebGL a
           -> Eff (canvas :: Canvas | eff) a
debugWebGL ctx onError = runFreeCM (interp ctx onError debug)
  where
    debug :: Eff (canvas :: Canvas | eff) Unit
    debug = do
      err <- GL.getError ctx
      unless (err == Enum.noError) (onError $ toWebGLError err)

interp :: forall eff. WebGLContext
       -> (WebGLError -> Eff (canvas :: Canvas | eff) Unit)
       -> (Eff (canvas :: Canvas | eff) Unit)
       -> Natural WebGLFree (Eff (canvas :: Canvas | eff))
interp ctx onError debug method = case method of
    (IsContextLost fn) -> do
        val <- GL.isContextLost ctx
        debug
        return (fn val)
    (Clear bufferType next) -> do
        GL.clear ctx (toBufferBit bufferType)
        debug
        return $ const next unit

toWebGLError :: Number -> WebGLError
toWebGLError _ = WebGLError
