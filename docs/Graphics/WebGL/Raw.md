## Module Graphics.WebGL.Raw

#### `activeTexture`

``` purescript
activeTexture :: WebGLContext -> GLenum -> Eff (canvas :: Canvas | eff) Unit
```

#### `attachShader`

``` purescript
attachShader :: WebGLContext -> WebGLProgram -> WebGLShader -> Eff (canvas :: Canvas | eff) Unit
```

#### `bindAttribLocation`

``` purescript
bindAttribLocation :: WebGLContext -> WebGLProgram -> GLuint -> DOMString -> Eff (canvas :: Canvas | eff) Unit
```

#### `bindBuffer`

``` purescript
bindBuffer :: WebGLContext -> GLenum -> WebGLBuffer -> Eff (canvas :: Canvas | eff) Unit
```

#### `bindFramebuffer`

``` purescript
bindFramebuffer :: WebGLContext -> GLenum -> WebGLFramebuffer -> Eff (canvas :: Canvas | eff) Unit
```

#### `bindRenderbuffer`

``` purescript
bindRenderbuffer :: WebGLContext -> GLenum -> WebGLRenderbuffer -> Eff (canvas :: Canvas | eff) Unit
```

#### `bindTexture`

``` purescript
bindTexture :: WebGLContext -> GLenum -> WebGLTexture -> Eff (canvas :: Canvas | eff) Unit
```

#### `blendColor`

``` purescript
blendColor :: WebGLContext -> GLclampf -> GLclampf -> GLclampf -> GLclampf -> Eff (canvas :: Canvas | eff) Unit
```

#### `blendEquation`

``` purescript
blendEquation :: WebGLContext -> GLenum -> Eff (canvas :: Canvas | eff) Unit
```

#### `blendEquationSeparate`

``` purescript
blendEquationSeparate :: WebGLContext -> GLenum -> GLenum -> Eff (canvas :: Canvas | eff) Unit
```

#### `blendFunc`

``` purescript
blendFunc :: WebGLContext -> GLenum -> GLenum -> Eff (canvas :: Canvas | eff) Unit
```

#### `blendFuncSeparate`

``` purescript
blendFuncSeparate :: WebGLContext -> GLenum -> GLenum -> GLenum -> GLenum -> Eff (canvas :: Canvas | eff) Unit
```

#### `bufferData`

``` purescript
bufferData :: WebGLContext -> GLenum -> BufferDataSource -> GLenum -> Eff (canvas :: Canvas | eff) Unit
```

#### `bufferData_`

``` purescript
bufferData_ :: WebGLContext -> GLenum -> GLsizeiptr -> GLenum -> Eff (canvas :: Canvas | eff) Unit
```

#### `bufferSubData`

``` purescript
bufferSubData :: WebGLContext -> GLenum -> GLintptr -> BufferDataSource -> Eff (canvas :: Canvas | eff) Unit
```

#### `checkFramebufferStatus`

``` purescript
checkFramebufferStatus :: WebGLContext -> GLenum -> Eff (canvas :: Canvas | eff) GLenum
```

#### `clear`

``` purescript
clear :: WebGLContext -> GLbitfield -> Eff (canvas :: Canvas | eff) Unit
```

#### `clearColor`

``` purescript
clearColor :: WebGLContext -> GLclampf -> GLclampf -> GLclampf -> GLclampf -> Eff (canvas :: Canvas | eff) Unit
```

#### `clearDepth`

``` purescript
clearDepth :: WebGLContext -> GLclampf -> Eff (canvas :: Canvas | eff) Unit
```

#### `clearStencil`

``` purescript
clearStencil :: WebGLContext -> GLint -> Eff (canvas :: Canvas | eff) Unit
```

#### `colorMask`

``` purescript
colorMask :: WebGLContext -> GLboolean -> GLboolean -> GLboolean -> GLboolean -> Eff (canvas :: Canvas | eff) Unit
```

#### `compileShader`

``` purescript
compileShader :: WebGLContext -> WebGLShader -> Eff (canvas :: Canvas | eff) Unit
```

#### `compressedTexImage2D`

``` purescript
compressedTexImage2D :: WebGLContext -> GLenum -> GLint -> GLenum -> GLsizei -> GLsizei -> GLint -> ArrayBufferView -> Eff (canvas :: Canvas | eff) Unit
```

#### `compressedTexSubImage2D`

``` purescript
compressedTexSubImage2D :: WebGLContext -> GLenum -> GLint -> GLint -> GLint -> GLsizei -> GLsizei -> GLenum -> ArrayBufferView -> Eff (canvas :: Canvas | eff) Unit
```

#### `copyTexImage2D`

``` purescript
copyTexImage2D :: WebGLContext -> GLenum -> GLint -> GLenum -> GLint -> GLint -> GLsizei -> GLsizei -> GLint -> Eff (canvas :: Canvas | eff) Unit
```

#### `copyTexSubImage2D`

``` purescript
copyTexSubImage2D :: WebGLContext -> GLenum -> GLint -> GLint -> GLint -> GLint -> GLint -> GLsizei -> GLsizei -> Eff (canvas :: Canvas | eff) Unit
```

#### `createBuffer`

``` purescript
createBuffer :: WebGLContext -> Eff (canvas :: Canvas | eff) (Maybe WebGLBuffer)
```

#### `createFramebuffer`

``` purescript
createFramebuffer :: WebGLContext -> Eff (canvas :: Canvas | eff) (Maybe WebGLFramebuffer)
```

#### `createProgram`

``` purescript
createProgram :: WebGLContext -> Eff (canvas :: Canvas | eff) (Maybe WebGLProgram)
```

#### `createRenderbuffer`

``` purescript
createRenderbuffer :: WebGLContext -> Eff (canvas :: Canvas | eff) (Maybe WebGLRenderbuffer)
```

#### `createShader`

``` purescript
createShader :: WebGLContext -> GLenum -> Eff (canvas :: Canvas | eff) (Maybe WebGLShader)
```

#### `createTexture`

``` purescript
createTexture :: WebGLContext -> Eff (canvas :: Canvas | eff) (Maybe WebGLTexture)
```

#### `cullFace`

``` purescript
cullFace :: WebGLContext -> GLenum -> Eff (canvas :: Canvas | eff) Unit
```

#### `deleteBuffer`

``` purescript
deleteBuffer :: WebGLContext -> WebGLBuffer -> Eff (canvas :: Canvas | eff) Unit
```

#### `deleteFramebuffer`

``` purescript
deleteFramebuffer :: WebGLContext -> WebGLFramebuffer -> Eff (canvas :: Canvas | eff) Unit
```

#### `deleteProgram`

``` purescript
deleteProgram :: WebGLContext -> WebGLProgram -> Eff (canvas :: Canvas | eff) Unit
```

#### `deleteRenderbuffer`

``` purescript
deleteRenderbuffer :: WebGLContext -> WebGLRenderbuffer -> Eff (canvas :: Canvas | eff) Unit
```

#### `deleteShader`

``` purescript
deleteShader :: WebGLContext -> WebGLShader -> Eff (canvas :: Canvas | eff) Unit
```

#### `deleteTexture`

``` purescript
deleteTexture :: WebGLContext -> WebGLTexture -> Eff (canvas :: Canvas | eff) Unit
```

#### `depthFunc`

``` purescript
depthFunc :: WebGLContext -> GLenum -> Eff (canvas :: Canvas | eff) Unit
```

#### `depthMask`

``` purescript
depthMask :: WebGLContext -> GLboolean -> Eff (canvas :: Canvas | eff) Unit
```

#### `depthRange`

``` purescript
depthRange :: WebGLContext -> GLclampf -> GLclampf -> Eff (canvas :: Canvas | eff) Unit
```

#### `detachShader`

``` purescript
detachShader :: WebGLContext -> WebGLProgram -> WebGLShader -> Eff (canvas :: Canvas | eff) Unit
```

#### `disable`

``` purescript
disable :: WebGLContext -> GLenum -> Eff (canvas :: Canvas | eff) Unit
```

#### `disableVertexAttribArray`

``` purescript
disableVertexAttribArray :: WebGLContext -> GLuint -> Eff (canvas :: Canvas | eff) Unit
```

#### `drawArrays`

``` purescript
drawArrays :: WebGLContext -> GLenum -> GLint -> GLsizei -> Eff (canvas :: Canvas | eff) Unit
```

#### `drawElements`

``` purescript
drawElements :: WebGLContext -> GLenum -> GLsizei -> GLenum -> GLintptr -> Eff (canvas :: Canvas | eff) Unit
```

#### `enable`

``` purescript
enable :: WebGLContext -> GLenum -> Eff (canvas :: Canvas | eff) Unit
```

#### `enableVertexAttribArray`

``` purescript
enableVertexAttribArray :: WebGLContext -> GLuint -> Eff (canvas :: Canvas | eff) Unit
```

#### `finish`

``` purescript
finish :: WebGLContext -> Eff (canvas :: Canvas | eff) Unit
```

#### `flush`

``` purescript
flush :: WebGLContext -> Eff (canvas :: Canvas | eff) Unit
```

#### `framebufferRenderbuffer`

``` purescript
framebufferRenderbuffer :: WebGLContext -> GLenum -> GLenum -> GLenum -> WebGLRenderbuffer -> Eff (canvas :: Canvas | eff) Unit
```

#### `framebufferTexture2D`

``` purescript
framebufferTexture2D :: WebGLContext -> GLenum -> GLenum -> GLenum -> WebGLTexture -> GLint -> Eff (canvas :: Canvas | eff) Unit
```

#### `frontFace`

``` purescript
frontFace :: WebGLContext -> GLenum -> Eff (canvas :: Canvas | eff) Unit
```

#### `generateMipmap`

``` purescript
generateMipmap :: WebGLContext -> GLenum -> Eff (canvas :: Canvas | eff) Unit
```

#### `getActiveAttrib`

``` purescript
getActiveAttrib :: WebGLContext -> WebGLProgram -> GLuint -> Eff (canvas :: Canvas | eff) (Maybe WebGLActiveInfo)
```

#### `getActiveUniform`

``` purescript
getActiveUniform :: WebGLContext -> WebGLProgram -> GLuint -> Eff (canvas :: Canvas | eff) (Maybe WebGLActiveInfo)
```

#### `getAttachedShaders`

``` purescript
getAttachedShaders :: WebGLContext -> WebGLProgram -> Eff (canvas :: Canvas | eff) (Array WebGLShader)
```

#### `getAttribLocation`

``` purescript
getAttribLocation :: WebGLContext -> WebGLProgram -> DOMString -> Eff (canvas :: Canvas | eff) GLint
```

#### `getBufferParameter`

``` purescript
getBufferParameter :: forall a. WebGLContext -> GLenum -> GLenum -> Eff (canvas :: Canvas | eff) (Maybe a)
```

#### `getContextAttributes`

``` purescript
getContextAttributes :: WebGLContext -> Eff (canvas :: Canvas | eff) (Maybe WebGLContextAttributes)
```

#### `getError`

``` purescript
getError :: WebGLContext -> Eff (canvas :: Canvas | eff) GLenum
```

#### `getExtension`

``` purescript
getExtension :: forall a. WebGLContext -> DOMString -> Eff (canvas :: Canvas | eff) (Maybe a)
```

#### `getFramebufferAttachmentParameter`

``` purescript
getFramebufferAttachmentParameter :: forall a. WebGLContext -> GLenum -> GLenum -> GLenum -> Eff (canvas :: Canvas | eff) (Maybe a)
```

#### `getParameter`

``` purescript
getParameter :: forall a. WebGLContext -> GLenum -> Eff (canvas :: Canvas | eff) (Maybe a)
```

#### `getProgramInfoLog`

``` purescript
getProgramInfoLog :: WebGLContext -> WebGLProgram -> Eff (canvas :: Canvas | eff) (Maybe DOMString)
```

#### `getProgramParameter`

``` purescript
getProgramParameter :: forall a. WebGLContext -> WebGLProgram -> GLenum -> Eff (canvas :: Canvas | eff) (Maybe a)
```

#### `getRenderbufferParameter`

``` purescript
getRenderbufferParameter :: forall a. WebGLContext -> GLenum -> GLenum -> Eff (canvas :: Canvas | eff) (Maybe a)
```

#### `getShaderInfoLog`

``` purescript
getShaderInfoLog :: WebGLContext -> WebGLShader -> Eff (canvas :: Canvas | eff) (Maybe DOMString)
```

#### `getShaderParameter`

``` purescript
getShaderParameter :: forall a. WebGLContext -> WebGLShader -> GLenum -> Eff (canvas :: Canvas | eff) (Maybe a)
```

#### `getShaderPrecisionFormat`

``` purescript
getShaderPrecisionFormat :: WebGLContext -> GLenum -> GLenum -> Eff (canvas :: Canvas | eff) (Maybe WebGLShaderPrecisionFormat)
```

#### `getShaderSource`

``` purescript
getShaderSource :: WebGLContext -> WebGLShader -> Eff (canvas :: Canvas | eff) (Maybe DOMString)
```

#### `getSupportedExtensions`

``` purescript
getSupportedExtensions :: WebGLContext -> Eff (canvas :: Canvas | eff) (Array DOMString)
```

#### `getTexParameter`

``` purescript
getTexParameter :: forall a. WebGLContext -> GLenum -> GLenum -> Eff (canvas :: Canvas | eff) (Maybe a)
```

#### `getUniform`

``` purescript
getUniform :: forall a. WebGLContext -> WebGLProgram -> WebGLUniformLocation -> Eff (canvas :: Canvas | eff) (Maybe a)
```

#### `getUniformLocation`

``` purescript
getUniformLocation :: WebGLContext -> WebGLProgram -> DOMString -> Eff (canvas :: Canvas | eff) (Maybe WebGLUniformLocation)
```

#### `getVertexAttrib`

``` purescript
getVertexAttrib :: forall a. WebGLContext -> GLuint -> GLenum -> Eff (canvas :: Canvas | eff) (Maybe a)
```

#### `getVertexAttribOffset`

``` purescript
getVertexAttribOffset :: WebGLContext -> GLuint -> GLenum -> Eff (canvas :: Canvas | eff) GLsizeiptr
```

#### `hint`

``` purescript
hint :: WebGLContext -> GLenum -> GLenum -> Eff (canvas :: Canvas | eff) Unit
```

#### `isBuffer`

``` purescript
isBuffer :: WebGLContext -> WebGLBuffer -> Eff (canvas :: Canvas | eff) GLboolean
```

#### `isContextLost`

``` purescript
isContextLost :: WebGLContext -> Eff (canvas :: Canvas | eff) Boolean
```

#### `isEnabled`

``` purescript
isEnabled :: WebGLContext -> GLenum -> Eff (canvas :: Canvas | eff) GLboolean
```

#### `isFramebuffer`

``` purescript
isFramebuffer :: WebGLContext -> WebGLFramebuffer -> Eff (canvas :: Canvas | eff) GLboolean
```

#### `isProgram`

``` purescript
isProgram :: WebGLContext -> WebGLProgram -> Eff (canvas :: Canvas | eff) GLboolean
```

#### `isRenderbuffer`

``` purescript
isRenderbuffer :: WebGLContext -> WebGLRenderbuffer -> Eff (canvas :: Canvas | eff) GLboolean
```

#### `isShader`

``` purescript
isShader :: WebGLContext -> WebGLShader -> Eff (canvas :: Canvas | eff) GLboolean
```

#### `isTexture`

``` purescript
isTexture :: WebGLContext -> WebGLTexture -> Eff (canvas :: Canvas | eff) GLboolean
```

#### `lineWidth`

``` purescript
lineWidth :: WebGLContext -> GLfloat -> Eff (canvas :: Canvas | eff) Unit
```

#### `linkProgram`

``` purescript
linkProgram :: WebGLContext -> WebGLProgram -> Eff (canvas :: Canvas | eff) Unit
```

#### `pixelStorei`

``` purescript
pixelStorei :: WebGLContext -> GLenum -> GLint -> Eff (canvas :: Canvas | eff) Unit
```

#### `polygonOffset`

``` purescript
polygonOffset :: WebGLContext -> GLfloat -> GLfloat -> Eff (canvas :: Canvas | eff) Unit
```

#### `readPixels`

``` purescript
readPixels :: WebGLContext -> GLint -> GLint -> GLsizei -> GLsizei -> GLenum -> GLenum -> ArrayBufferView -> Eff (canvas :: Canvas | eff) Unit
```

#### `renderbufferStorage`

``` purescript
renderbufferStorage :: WebGLContext -> GLenum -> GLenum -> GLsizei -> GLsizei -> Eff (canvas :: Canvas | eff) Unit
```

#### `sampleCoverage`

``` purescript
sampleCoverage :: WebGLContext -> GLclampf -> GLboolean -> Eff (canvas :: Canvas | eff) Unit
```

#### `scissor`

``` purescript
scissor :: WebGLContext -> GLint -> GLint -> GLsizei -> GLsizei -> Eff (canvas :: Canvas | eff) Unit
```

#### `shaderSource`

``` purescript
shaderSource :: WebGLContext -> WebGLShader -> DOMString -> Eff (canvas :: Canvas | eff) Unit
```

#### `stencilFunc`

``` purescript
stencilFunc :: WebGLContext -> GLenum -> GLint -> GLuint -> Eff (canvas :: Canvas | eff) Unit
```

#### `stencilFuncSeparate`

``` purescript
stencilFuncSeparate :: WebGLContext -> GLenum -> GLenum -> GLint -> GLuint -> Eff (canvas :: Canvas | eff) Unit
```

#### `stencilMask`

``` purescript
stencilMask :: WebGLContext -> GLuint -> Eff (canvas :: Canvas | eff) Unit
```

#### `stencilMaskSeparate`

``` purescript
stencilMaskSeparate :: WebGLContext -> GLenum -> GLuint -> Eff (canvas :: Canvas | eff) Unit
```

#### `stencilOp`

``` purescript
stencilOp :: WebGLContext -> GLenum -> GLenum -> GLenum -> Eff (canvas :: Canvas | eff) Unit
```

#### `stencilOpSeparate`

``` purescript
stencilOpSeparate :: WebGLContext -> GLenum -> GLenum -> GLenum -> GLenum -> Eff (canvas :: Canvas | eff) Unit
```

#### `texImage2D`

``` purescript
texImage2D :: WebGLContext -> GLenum -> GLint -> GLenum -> GLenum -> GLenum -> TexImageSource -> Eff (canvas :: Canvas | eff) Unit
```

#### `texImage2D_`

``` purescript
texImage2D_ :: WebGLContext -> GLenum -> GLint -> GLenum -> GLsizei -> GLsizei -> GLint -> GLenum -> GLenum -> ArrayBufferView -> Eff (canvas :: Canvas | eff) Unit
```

#### `texParameterf`

``` purescript
texParameterf :: WebGLContext -> GLenum -> GLenum -> GLfloat -> Eff (canvas :: Canvas | eff) Unit
```

#### `texParameteri`

``` purescript
texParameteri :: WebGLContext -> GLenum -> GLenum -> GLint -> Eff (canvas :: Canvas | eff) Unit
```

#### `texSubImage2D`

``` purescript
texSubImage2D :: WebGLContext -> GLenum -> GLint -> GLint -> GLint -> GLenum -> GLenum -> TexImageSource -> Eff (canvas :: Canvas | eff) Unit
```

#### `texSubImage2D_`

``` purescript
texSubImage2D_ :: WebGLContext -> GLenum -> GLint -> GLint -> GLint -> GLsizei -> GLsizei -> GLenum -> GLenum -> ArrayBufferView -> Eff (canvas :: Canvas | eff) Unit
```

#### `uniform1f`

``` purescript
uniform1f :: WebGLContext -> WebGLUniformLocation -> GLfloat -> Eff (canvas :: Canvas | eff) Unit
```

#### `uniform1fv`

``` purescript
uniform1fv :: WebGLContext -> WebGLUniformLocation -> Array GLfloat -> Eff (canvas :: Canvas | eff) Unit
```

#### `uniform1fv_`

``` purescript
uniform1fv_ :: WebGLContext -> WebGLUniformLocation -> Float32Array -> Eff (canvas :: Canvas | eff) Unit
```

#### `uniform1i`

``` purescript
uniform1i :: WebGLContext -> WebGLUniformLocation -> GLint -> Eff (canvas :: Canvas | eff) Unit
```

#### `uniform1iv`

``` purescript
uniform1iv :: WebGLContext -> WebGLUniformLocation -> Array Int -> Eff (canvas :: Canvas | eff) Unit
```

#### `uniform1iv_`

``` purescript
uniform1iv_ :: WebGLContext -> WebGLUniformLocation -> Int32Array -> Eff (canvas :: Canvas | eff) Unit
```

#### `uniform2f`

``` purescript
uniform2f :: WebGLContext -> WebGLUniformLocation -> GLfloat -> GLfloat -> Eff (canvas :: Canvas | eff) Unit
```

#### `uniform2fv`

``` purescript
uniform2fv :: WebGLContext -> WebGLUniformLocation -> Array GLfloat -> Eff (canvas :: Canvas | eff) Unit
```

#### `uniform2fv_`

``` purescript
uniform2fv_ :: WebGLContext -> WebGLUniformLocation -> Float32Array -> Eff (canvas :: Canvas | eff) Unit
```

#### `uniform2i`

``` purescript
uniform2i :: WebGLContext -> WebGLUniformLocation -> GLint -> GLint -> Eff (canvas :: Canvas | eff) Unit
```

#### `uniform2iv`

``` purescript
uniform2iv :: WebGLContext -> WebGLUniformLocation -> Array Int -> Eff (canvas :: Canvas | eff) Unit
```

#### `uniform2iv_`

``` purescript
uniform2iv_ :: WebGLContext -> WebGLUniformLocation -> Int32Array -> Eff (canvas :: Canvas | eff) Unit
```

#### `uniform3f`

``` purescript
uniform3f :: WebGLContext -> WebGLUniformLocation -> GLfloat -> GLfloat -> GLfloat -> Eff (canvas :: Canvas | eff) Unit
```

#### `uniform3fv`

``` purescript
uniform3fv :: WebGLContext -> WebGLUniformLocation -> Array GLfloat -> Eff (canvas :: Canvas | eff) Unit
```

#### `uniform3fv_`

``` purescript
uniform3fv_ :: WebGLContext -> WebGLUniformLocation -> Float32Array -> Eff (canvas :: Canvas | eff) Unit
```

#### `uniform3i`

``` purescript
uniform3i :: WebGLContext -> WebGLUniformLocation -> GLint -> GLint -> GLint -> Eff (canvas :: Canvas | eff) Unit
```

#### `uniform3iv`

``` purescript
uniform3iv :: WebGLContext -> WebGLUniformLocation -> Array Int -> Eff (canvas :: Canvas | eff) Unit
```

#### `uniform3iv_`

``` purescript
uniform3iv_ :: WebGLContext -> WebGLUniformLocation -> Int32Array -> Eff (canvas :: Canvas | eff) Unit
```

#### `uniform4f`

``` purescript
uniform4f :: WebGLContext -> WebGLUniformLocation -> GLfloat -> GLfloat -> GLfloat -> GLfloat -> Eff (canvas :: Canvas | eff) Unit
```

#### `uniform4fv`

``` purescript
uniform4fv :: WebGLContext -> WebGLUniformLocation -> Array GLfloat -> Eff (canvas :: Canvas | eff) Unit
```

#### `uniform4fv_`

``` purescript
uniform4fv_ :: WebGLContext -> WebGLUniformLocation -> Float32Array -> Eff (canvas :: Canvas | eff) Unit
```

#### `uniform4i`

``` purescript
uniform4i :: WebGLContext -> WebGLUniformLocation -> GLint -> GLint -> GLint -> GLint -> Eff (canvas :: Canvas | eff) Unit
```

#### `uniform4iv`

``` purescript
uniform4iv :: WebGLContext -> WebGLUniformLocation -> Array Int -> Eff (canvas :: Canvas | eff) Unit
```

#### `uniform4iv_`

``` purescript
uniform4iv_ :: WebGLContext -> WebGLUniformLocation -> Int32Array -> Eff (canvas :: Canvas | eff) Unit
```

#### `uniformMatrix2fv`

``` purescript
uniformMatrix2fv :: WebGLContext -> WebGLUniformLocation -> GLboolean -> Array GLfloat -> Eff (canvas :: Canvas | eff) Unit
```

#### `uniformMatrix2fv_`

``` purescript
uniformMatrix2fv_ :: WebGLContext -> WebGLUniformLocation -> GLboolean -> Float32Array -> Eff (canvas :: Canvas | eff) Unit
```

#### `uniformMatrix3fv`

``` purescript
uniformMatrix3fv :: WebGLContext -> WebGLUniformLocation -> GLboolean -> Array GLfloat -> Eff (canvas :: Canvas | eff) Unit
```

#### `uniformMatrix3fv_`

``` purescript
uniformMatrix3fv_ :: WebGLContext -> WebGLUniformLocation -> GLboolean -> Float32Array -> Eff (canvas :: Canvas | eff) Unit
```

#### `uniformMatrix4fv`

``` purescript
uniformMatrix4fv :: WebGLContext -> WebGLUniformLocation -> GLboolean -> Array GLfloat -> Eff (canvas :: Canvas | eff) Unit
```

#### `uniformMatrix4fv_`

``` purescript
uniformMatrix4fv_ :: WebGLContext -> WebGLUniformLocation -> GLboolean -> Float32Array -> Eff (canvas :: Canvas | eff) Unit
```

#### `useProgram`

``` purescript
useProgram :: WebGLContext -> WebGLProgram -> Eff (canvas :: Canvas | eff) Unit
```

#### `validateProgram`

``` purescript
validateProgram :: WebGLContext -> WebGLProgram -> Eff (canvas :: Canvas | eff) Unit
```

#### `vertexAttrib1f`

``` purescript
vertexAttrib1f :: WebGLContext -> GLuint -> GLfloat -> Eff (canvas :: Canvas | eff) Unit
```

#### `vertexAttrib1fv`

``` purescript
vertexAttrib1fv :: WebGLContext -> GLuint -> Array GLfloat -> Eff (canvas :: Canvas | eff) Unit
```

#### `vertexAttrib1fv_`

``` purescript
vertexAttrib1fv_ :: WebGLContext -> GLuint -> Float32Array -> Eff (canvas :: Canvas | eff) Unit
```

#### `vertexAttrib2f`

``` purescript
vertexAttrib2f :: WebGLContext -> GLuint -> GLfloat -> GLfloat -> Eff (canvas :: Canvas | eff) Unit
```

#### `vertexAttrib2fv`

``` purescript
vertexAttrib2fv :: WebGLContext -> GLuint -> Array GLfloat -> Eff (canvas :: Canvas | eff) Unit
```

#### `vertexAttrib2fv_`

``` purescript
vertexAttrib2fv_ :: WebGLContext -> GLuint -> Float32Array -> Eff (canvas :: Canvas | eff) Unit
```

#### `vertexAttrib3f`

``` purescript
vertexAttrib3f :: WebGLContext -> GLuint -> GLfloat -> GLfloat -> GLfloat -> Eff (canvas :: Canvas | eff) Unit
```

#### `vertexAttrib3fv`

``` purescript
vertexAttrib3fv :: WebGLContext -> GLuint -> Array GLfloat -> Eff (canvas :: Canvas | eff) Unit
```

#### `vertexAttrib3fv_`

``` purescript
vertexAttrib3fv_ :: WebGLContext -> GLuint -> Float32Array -> Eff (canvas :: Canvas | eff) Unit
```

#### `vertexAttrib4f`

``` purescript
vertexAttrib4f :: WebGLContext -> GLuint -> GLfloat -> GLfloat -> GLfloat -> GLfloat -> Eff (canvas :: Canvas | eff) Unit
```

#### `vertexAttrib4fv`

``` purescript
vertexAttrib4fv :: WebGLContext -> GLuint -> Array GLfloat -> Eff (canvas :: Canvas | eff) Unit
```

#### `vertexAttrib4fv_`

``` purescript
vertexAttrib4fv_ :: WebGLContext -> GLuint -> Float32Array -> Eff (canvas :: Canvas | eff) Unit
```

#### `vertexAttribPointer`

``` purescript
vertexAttribPointer :: WebGLContext -> GLuint -> GLint -> GLenum -> GLboolean -> GLsizei -> GLintptr -> Eff (canvas :: Canvas | eff) Unit
```

#### `viewport`

``` purescript
viewport :: WebGLContext -> GLint -> GLint -> GLsizei -> GLsizei -> Eff (canvas :: Canvas | eff) Unit
```


