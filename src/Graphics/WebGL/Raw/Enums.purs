-- This file is automatically generated! Don't edit this file, but
-- instead modify purescript-webgl-generator.

module Graphics.WebGL.Raw.Enums where

import Graphics.WebGL.Raw.Types
import qualified Prelude as Pre

depthBufferBit :: GLenum
depthBufferBit = 256

stencilBufferBit :: GLenum
stencilBufferBit = 1024

colorBufferBit :: GLenum
colorBufferBit = 16384

points :: GLenum
points = 0

lines :: GLenum
lines = 1

lineLoop :: GLenum
lineLoop = 2

lineStrip :: GLenum
lineStrip = 3

triangles :: GLenum
triangles = 4

triangleStrip :: GLenum
triangleStrip = 5

triangleFan :: GLenum
triangleFan = 6

zero :: GLenum
zero = 0

one :: GLenum
one = 1

srcColor :: GLenum
srcColor = 768

oneMinusSrcColor :: GLenum
oneMinusSrcColor = 769

srcAlpha :: GLenum
srcAlpha = 770

oneMinusSrcAlpha :: GLenum
oneMinusSrcAlpha = 771

dstAlpha :: GLenum
dstAlpha = 772

oneMinusDstAlpha :: GLenum
oneMinusDstAlpha = 773

dstColor :: GLenum
dstColor = 774

oneMinusDstColor :: GLenum
oneMinusDstColor = 775

srcAlphaSaturate :: GLenum
srcAlphaSaturate = 776

funcAdd :: GLenum
funcAdd = 32774

blendEquation :: GLenum
blendEquation = 32777

blendEquationRgb :: GLenum
blendEquationRgb = 32777

blendEquationAlpha :: GLenum
blendEquationAlpha = 34877

funcSubtract :: GLenum
funcSubtract = 32778

funcReverseSubtract :: GLenum
funcReverseSubtract = 32779

blendDstRgb :: GLenum
blendDstRgb = 32968

blendSrcRgb :: GLenum
blendSrcRgb = 32969

blendDstAlpha :: GLenum
blendDstAlpha = 32970

blendSrcAlpha :: GLenum
blendSrcAlpha = 32971

constantColor :: GLenum
constantColor = 32769

oneMinusConstantColor :: GLenum
oneMinusConstantColor = 32770

constantAlpha :: GLenum
constantAlpha = 32771

oneMinusConstantAlpha :: GLenum
oneMinusConstantAlpha = 32772

blendColor :: GLenum
blendColor = 32773

arrayBuffer :: GLenum
arrayBuffer = 34962

elementArrayBuffer :: GLenum
elementArrayBuffer = 34963

arrayBufferBinding :: GLenum
arrayBufferBinding = 34964

elementArrayBufferBinding :: GLenum
elementArrayBufferBinding = 34965

streamDraw :: GLenum
streamDraw = 35040

staticDraw :: GLenum
staticDraw = 35044

dynamicDraw :: GLenum
dynamicDraw = 35048

bufferSize :: GLenum
bufferSize = 34660

bufferUsage :: GLenum
bufferUsage = 34661

currentVertexAttrib :: GLenum
currentVertexAttrib = 34342

front :: GLenum
front = 1028

back :: GLenum
back = 1029

frontAndBack :: GLenum
frontAndBack = 1032

texture2d :: GLenum
texture2d = 3553

cullFace :: GLenum
cullFace = 2884

blend :: GLenum
blend = 3042

dither :: GLenum
dither = 3024

stencilTest :: GLenum
stencilTest = 2960

depthTest :: GLenum
depthTest = 2929

scissorTest :: GLenum
scissorTest = 3089

polygonOffsetFill :: GLenum
polygonOffsetFill = 32823

sampleAlphaToCoverage :: GLenum
sampleAlphaToCoverage = 32926

sampleCoverage :: GLenum
sampleCoverage = 32928

noError :: GLenum
noError = 0

invalidEnum :: GLenum
invalidEnum = 1280

invalidValue :: GLenum
invalidValue = 1281

invalidOperation :: GLenum
invalidOperation = 1282

outOfMemory :: GLenum
outOfMemory = 1285

cw :: GLenum
cw = 2304

ccw :: GLenum
ccw = 2305

lineWidth :: GLenum
lineWidth = 2849

aliasedPointSizeRange :: GLenum
aliasedPointSizeRange = 33901

aliasedLineWidthRange :: GLenum
aliasedLineWidthRange = 33902

cullFaceMode :: GLenum
cullFaceMode = 2885

frontFace :: GLenum
frontFace = 2886

depthRange :: GLenum
depthRange = 2928

depthWritemask :: GLenum
depthWritemask = 2930

depthClearValue :: GLenum
depthClearValue = 2931

depthFunc :: GLenum
depthFunc = 2932

stencilClearValue :: GLenum
stencilClearValue = 2961

stencilFunc :: GLenum
stencilFunc = 2962

stencilFail :: GLenum
stencilFail = 2964

stencilPassDepthFail :: GLenum
stencilPassDepthFail = 2965

stencilPassDepthPass :: GLenum
stencilPassDepthPass = 2966

stencilRef :: GLenum
stencilRef = 2967

stencilValueMask :: GLenum
stencilValueMask = 2963

stencilWritemask :: GLenum
stencilWritemask = 2968

stencilBackFunc :: GLenum
stencilBackFunc = 34816

stencilBackFail :: GLenum
stencilBackFail = 34817

stencilBackPassDepthFail :: GLenum
stencilBackPassDepthFail = 34818

stencilBackPassDepthPass :: GLenum
stencilBackPassDepthPass = 34819

stencilBackRef :: GLenum
stencilBackRef = 36003

stencilBackValueMask :: GLenum
stencilBackValueMask = 36004

stencilBackWritemask :: GLenum
stencilBackWritemask = 36005

viewport :: GLenum
viewport = 2978

scissorBox :: GLenum
scissorBox = 3088

colorClearValue :: GLenum
colorClearValue = 3106

colorWritemask :: GLenum
colorWritemask = 3107

unpackAlignment :: GLenum
unpackAlignment = 3317

packAlignment :: GLenum
packAlignment = 3333

maxTextureSize :: GLenum
maxTextureSize = 3379

maxViewportDims :: GLenum
maxViewportDims = 3386

subpixelBits :: GLenum
subpixelBits = 3408

redBits :: GLenum
redBits = 3410

greenBits :: GLenum
greenBits = 3411

blueBits :: GLenum
blueBits = 3412

alphaBits :: GLenum
alphaBits = 3413

depthBits :: GLenum
depthBits = 3414

stencilBits :: GLenum
stencilBits = 3415

polygonOffsetUnits :: GLenum
polygonOffsetUnits = 10752

polygonOffsetFactor :: GLenum
polygonOffsetFactor = 32824

textureBinding2d :: GLenum
textureBinding2d = 32873

sampleBuffers :: GLenum
sampleBuffers = 32936

samples :: GLenum
samples = 32937

sampleCoverageValue :: GLenum
sampleCoverageValue = 32938

sampleCoverageInvert :: GLenum
sampleCoverageInvert = 32939

numCompressedTextureFormats :: GLenum
numCompressedTextureFormats = 34466

compressedTextureFormats :: GLenum
compressedTextureFormats = 34467

dontCare :: GLenum
dontCare = 4352

fastest :: GLenum
fastest = 4353

nicest :: GLenum
nicest = 4354

generateMipmapHint :: GLenum
generateMipmapHint = 33170

byte :: GLenum
byte = 5120

unsignedByte :: GLenum
unsignedByte = 5121

short :: GLenum
short = 5122

unsignedShort :: GLenum
unsignedShort = 5123

int :: GLenum
int = 5124

unsignedInt :: GLenum
unsignedInt = 5125

float :: GLenum
float = 5126

depthComponent :: GLenum
depthComponent = 6402

alpha :: GLenum
alpha = 6406

rgb :: GLenum
rgb = 6407

rgba :: GLenum
rgba = 6408

luminance :: GLenum
luminance = 6409

luminanceAlpha :: GLenum
luminanceAlpha = 6410

unsignedShort4444 :: GLenum
unsignedShort4444 = 32819

unsignedShort5551 :: GLenum
unsignedShort5551 = 32820

unsignedShort565 :: GLenum
unsignedShort565 = 33635

fragmentShader :: GLenum
fragmentShader = 35632

vertexShader :: GLenum
vertexShader = 35633

maxVertexAttribs :: GLenum
maxVertexAttribs = 34921

maxVertexUniformVectors :: GLenum
maxVertexUniformVectors = 36347

maxVaryingVectors :: GLenum
maxVaryingVectors = 36348

maxCombinedTextureImageUnits :: GLenum
maxCombinedTextureImageUnits = 35661

maxVertexTextureImageUnits :: GLenum
maxVertexTextureImageUnits = 35660

maxTextureImageUnits :: GLenum
maxTextureImageUnits = 34930

maxFragmentUniformVectors :: GLenum
maxFragmentUniformVectors = 36349

shaderType :: GLenum
shaderType = 35663

deleteStatus :: GLenum
deleteStatus = 35712

linkStatus :: GLenum
linkStatus = 35714

validateStatus :: GLenum
validateStatus = 35715

attachedShaders :: GLenum
attachedShaders = 35717

activeUniforms :: GLenum
activeUniforms = 35718

activeUniformMaxLength :: GLenum
activeUniformMaxLength = 35719

activeAttributes :: GLenum
activeAttributes = 35721

activeAttributeMaxLength :: GLenum
activeAttributeMaxLength = 35722

shadingLanguageVersion :: GLenum
shadingLanguageVersion = 35724

currentProgram :: GLenum
currentProgram = 35725

never :: GLenum
never = 512

less :: GLenum
less = 513

equal :: GLenum
equal = 514

lequal :: GLenum
lequal = 515

greater :: GLenum
greater = 516

notequal :: GLenum
notequal = 517

gequal :: GLenum
gequal = 518

always :: GLenum
always = 519

keep :: GLenum
keep = 7680

replace :: GLenum
replace = 7681

incr :: GLenum
incr = 7682

decr :: GLenum
decr = 7683

invert :: GLenum
invert = 5386

incrWrap :: GLenum
incrWrap = 34055

decrWrap :: GLenum
decrWrap = 34056

vendor :: GLenum
vendor = 7936

renderer :: GLenum
renderer = 7937

version :: GLenum
version = 7938

nearest :: GLenum
nearest = 9728

linear :: GLenum
linear = 9729

nearestMipmapNearest :: GLenum
nearestMipmapNearest = 9984

linearMipmapNearest :: GLenum
linearMipmapNearest = 9985

nearestMipmapLinear :: GLenum
nearestMipmapLinear = 9986

linearMipmapLinear :: GLenum
linearMipmapLinear = 9987

textureMagFilter :: GLenum
textureMagFilter = 10240

textureMinFilter :: GLenum
textureMinFilter = 10241

textureWrapS :: GLenum
textureWrapS = 10242

textureWrapT :: GLenum
textureWrapT = 10243

texture :: GLenum
texture = 5890

textureCubeMap :: GLenum
textureCubeMap = 34067

textureBindingCubeMap :: GLenum
textureBindingCubeMap = 34068

textureCubeMapPositiveX :: GLenum
textureCubeMapPositiveX = 34069

textureCubeMapNegativeX :: GLenum
textureCubeMapNegativeX = 34070

textureCubeMapPositiveY :: GLenum
textureCubeMapPositiveY = 34071

textureCubeMapNegativeY :: GLenum
textureCubeMapNegativeY = 34072

textureCubeMapPositiveZ :: GLenum
textureCubeMapPositiveZ = 34073

textureCubeMapNegativeZ :: GLenum
textureCubeMapNegativeZ = 34074

maxCubeMapTextureSize :: GLenum
maxCubeMapTextureSize = 34076

texture0 :: GLenum
texture0 = 33984

texture1 :: GLenum
texture1 = 33985

texture2 :: GLenum
texture2 = 33986

texture3 :: GLenum
texture3 = 33987

texture4 :: GLenum
texture4 = 33988

texture5 :: GLenum
texture5 = 33989

texture6 :: GLenum
texture6 = 33990

texture7 :: GLenum
texture7 = 33991

texture8 :: GLenum
texture8 = 33992

texture9 :: GLenum
texture9 = 33993

texture10 :: GLenum
texture10 = 33994

texture11 :: GLenum
texture11 = 33995

texture12 :: GLenum
texture12 = 33996

texture13 :: GLenum
texture13 = 33997

texture14 :: GLenum
texture14 = 33998

texture15 :: GLenum
texture15 = 33999

texture16 :: GLenum
texture16 = 34000

texture17 :: GLenum
texture17 = 34001

texture18 :: GLenum
texture18 = 34002

texture19 :: GLenum
texture19 = 34003

texture20 :: GLenum
texture20 = 34004

texture21 :: GLenum
texture21 = 34005

texture22 :: GLenum
texture22 = 34006

texture23 :: GLenum
texture23 = 34007

texture24 :: GLenum
texture24 = 34008

texture25 :: GLenum
texture25 = 34009

texture26 :: GLenum
texture26 = 34010

texture27 :: GLenum
texture27 = 34011

texture28 :: GLenum
texture28 = 34012

texture29 :: GLenum
texture29 = 34013

texture30 :: GLenum
texture30 = 34014

texture31 :: GLenum
texture31 = 34015

activeTexture :: GLenum
activeTexture = 34016

repeat :: GLenum
repeat = 10497

clampToEdge :: GLenum
clampToEdge = 33071

mirroredRepeat :: GLenum
mirroredRepeat = 33648

floatVec2 :: GLenum
floatVec2 = 35664

floatVec3 :: GLenum
floatVec3 = 35665

floatVec4 :: GLenum
floatVec4 = 35666

intVec2 :: GLenum
intVec2 = 35667

intVec3 :: GLenum
intVec3 = 35668

intVec4 :: GLenum
intVec4 = 35669

bool :: GLenum
bool = 35670

boolVec2 :: GLenum
boolVec2 = 35671

boolVec3 :: GLenum
boolVec3 = 35672

boolVec4 :: GLenum
boolVec4 = 35673

floatMat2 :: GLenum
floatMat2 = 35674

floatMat3 :: GLenum
floatMat3 = 35675

floatMat4 :: GLenum
floatMat4 = 35676

sampler2d :: GLenum
sampler2d = 35678

samplerCube :: GLenum
samplerCube = 35680

vertexAttribArrayEnabled :: GLenum
vertexAttribArrayEnabled = 34338

vertexAttribArraySize :: GLenum
vertexAttribArraySize = 34339

vertexAttribArrayStride :: GLenum
vertexAttribArrayStride = 34340

vertexAttribArrayType :: GLenum
vertexAttribArrayType = 34341

vertexAttribArrayNormalized :: GLenum
vertexAttribArrayNormalized = 34922

vertexAttribArrayPointer :: GLenum
vertexAttribArrayPointer = 34373

vertexAttribArrayBufferBinding :: GLenum
vertexAttribArrayBufferBinding = 34975

compileStatus :: GLenum
compileStatus = 35713

infoLogLength :: GLenum
infoLogLength = 35716

shaderSourceLength :: GLenum
shaderSourceLength = 35720

lowFloat :: GLenum
lowFloat = 36336

mediumFloat :: GLenum
mediumFloat = 36337

highFloat :: GLenum
highFloat = 36338

lowInt :: GLenum
lowInt = 36339

mediumInt :: GLenum
mediumInt = 36340

highInt :: GLenum
highInt = 36341

framebuffer :: GLenum
framebuffer = 36160

renderbuffer :: GLenum
renderbuffer = 36161

rgba4 :: GLenum
rgba4 = 32854

rgb5A1 :: GLenum
rgb5A1 = 32855

rgb565 :: GLenum
rgb565 = 36194

depthComponent16 :: GLenum
depthComponent16 = 33189

stencilIndex :: GLenum
stencilIndex = 6401

stencilIndex8 :: GLenum
stencilIndex8 = 36168

depthStencil :: GLenum
depthStencil = 34041

renderbufferWidth :: GLenum
renderbufferWidth = 36162

renderbufferHeight :: GLenum
renderbufferHeight = 36163

renderbufferInternalFormat :: GLenum
renderbufferInternalFormat = 36164

renderbufferRedSize :: GLenum
renderbufferRedSize = 36176

renderbufferGreenSize :: GLenum
renderbufferGreenSize = 36177

renderbufferBlueSize :: GLenum
renderbufferBlueSize = 36178

renderbufferAlphaSize :: GLenum
renderbufferAlphaSize = 36179

renderbufferDepthSize :: GLenum
renderbufferDepthSize = 36180

renderbufferStencilSize :: GLenum
renderbufferStencilSize = 36181

framebufferAttachmentObjectType :: GLenum
framebufferAttachmentObjectType = 36048

framebufferAttachmentObjectName :: GLenum
framebufferAttachmentObjectName = 36049

framebufferAttachmentTextureLevel :: GLenum
framebufferAttachmentTextureLevel = 36050

framebufferAttachmentTextureCubeMapFace :: GLenum
framebufferAttachmentTextureCubeMapFace = 36051

colorAttachment0 :: GLenum
colorAttachment0 = 36064

depthAttachment :: GLenum
depthAttachment = 36096

stencilAttachment :: GLenum
stencilAttachment = 36128

depthStencilAttachment :: GLenum
depthStencilAttachment = 33306

none :: GLenum
none = 0

framebufferComplete :: GLenum
framebufferComplete = 36053

framebufferIncompleteAttachment :: GLenum
framebufferIncompleteAttachment = 36054

framebufferIncompleteMissingAttachment :: GLenum
framebufferIncompleteMissingAttachment = 36055

framebufferIncompleteDimensions :: GLenum
framebufferIncompleteDimensions = 36057

framebufferUnsupported :: GLenum
framebufferUnsupported = 36061

framebufferBinding :: GLenum
framebufferBinding = 36006

renderbufferBinding :: GLenum
renderbufferBinding = 36007

maxRenderbufferSize :: GLenum
maxRenderbufferSize = 34024

invalidFramebufferOperation :: GLenum
invalidFramebufferOperation = 1286

unpackFlipYWebgl :: GLenum
unpackFlipYWebgl = 37440

unpackPremultiplyAlphaWebgl :: GLenum
unpackPremultiplyAlphaWebgl = 37441

contextLostWebgl :: GLenum
contextLostWebgl = 37442

unpackColorspaceConversionWebgl :: GLenum
unpackColorspaceConversionWebgl = 37443

browserDefaultWebgl :: GLenum
browserDefaultWebgl = 37444
