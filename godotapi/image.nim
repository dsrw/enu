
import
  godot, godottypes, godotinternal, resource

export
  godottypes, resource

const
  ALPHA_BIT* = 1'i64
  ALPHA_BLEND* = 2'i64
  ALPHA_NONE* = 0'i64
  COMPRESS_ETC* = 3'i64
  COMPRESS_ETC2* = 4'i64
  COMPRESS_PVRTC2* = 1'i64
  COMPRESS_PVRTC4* = 2'i64
  COMPRESS_S3TC* = 0'i64
  COMPRESS_SOURCE_GENERIC* = 0'i64
  COMPRESS_SOURCE_NORMAL* = 2'i64
  COMPRESS_SOURCE_SRGB* = 1'i64
  FORMAT_BPTC_RGBA* = 22'i64
  FORMAT_BPTC_RGBF* = 23'i64
  FORMAT_BPTC_RGBFU* = 24'i64
  FORMAT_DXT1* = 17'i64
  FORMAT_DXT3* = 18'i64
  FORMAT_DXT5* = 19'i64
  FORMAT_ETC* = 29'i64
  FORMAT_ETC2_R11* = 30'i64
  FORMAT_ETC2_R11S* = 31'i64
  FORMAT_ETC2_RG11* = 32'i64
  FORMAT_ETC2_RG11S* = 33'i64
  FORMAT_ETC2_RGB8* = 34'i64
  FORMAT_ETC2_RGB8A1* = 36'i64
  FORMAT_ETC2_RGBA8* = 35'i64
  FORMAT_L8* = 0'i64
  FORMAT_LA8* = 1'i64
  FORMAT_MAX* = 37'i64
  FORMAT_PVRTC2* = 25'i64
  FORMAT_PVRTC2A* = 26'i64
  FORMAT_PVRTC4* = 27'i64
  FORMAT_PVRTC4A* = 28'i64
  FORMAT_R8* = 2'i64
  FORMAT_RF* = 8'i64
  FORMAT_RG8* = 3'i64
  FORMAT_RGB8* = 4'i64
  FORMAT_RGBA4444* = 6'i64
  FORMAT_RGBA5551* = 7'i64
  FORMAT_RGBA8* = 5'i64
  FORMAT_RGBAF* = 11'i64
  FORMAT_RGBAH* = 15'i64
  FORMAT_RGBE9995* = 16'i64
  FORMAT_RGBF* = 10'i64
  FORMAT_RGBH* = 14'i64
  FORMAT_RGF* = 9'i64
  FORMAT_RGH* = 13'i64
  FORMAT_RGTC_R* = 20'i64
  FORMAT_RGTC_RG* = 21'i64
  FORMAT_RH* = 12'i64
  INTERPOLATE_BILINEAR* = 1'i64
  INTERPOLATE_CUBIC* = 2'i64
  INTERPOLATE_LANCZOS* = 4'i64
  INTERPOLATE_NEAREST* = 0'i64
  INTERPOLATE_TRILINEAR* = 3'i64
  MAX_HEIGHT* = 16384'i64
  MAX_WIDTH* = 16384'i64
proc data*(self: Image): Dictionary {.gcsafe, locks: 0.}
proc `data=`*(self: Image; val: Dictionary) {.gcsafe, locks: 0.}
proc blendRect*(self: Image; src: Image; srcRect: Rect2; dst: Vector2) {.gcsafe, locks: 0.}
proc blendRectMask*(self: Image; src: Image; mask: Image; srcRect: Rect2; dst: Vector2) {.
    gcsafe, locks: 0.}
proc blitRect*(self: Image; src: Image; srcRect: Rect2; dst: Vector2) {.gcsafe, locks: 0.}
proc blitRectMask*(self: Image; src: Image; mask: Image; srcRect: Rect2; dst: Vector2) {.
    gcsafe, locks: 0.}
proc bumpmapToNormalmap*(self: Image; bumpScale: float64 = 1.0) {.gcsafe, locks: 0.}
proc clearMipmaps*(self: Image) {.gcsafe, locks: 0.}
proc compress*(self: Image; mode: int64; source: int64; lossyQuality: float64): Error {.
    gcsafe, locks: 0.}
proc convert*(self: Image; format: int64) {.gcsafe, locks: 0.}
proc copyFrom*(self: Image; src: Image) {.gcsafe, locks: 0.}
proc create*(self: Image; width: int64; height: int64; useMipmaps: bool; format: int64) {.
    gcsafe, locks: 0.}
proc createFromData*(self: Image; width: int64; height: int64; useMipmaps: bool;
                    format: int64; data: PoolByteArray) {.gcsafe, locks: 0.}
proc crop*(self: Image; width: int64; height: int64) {.gcsafe, locks: 0.}
proc decompress*(self: Image): Error {.gcsafe, locks: 0.}
proc detectAlpha*(self: Image): int64 {.gcsafe, locks: 0.}
proc expandX2Hq2x*(self: Image) {.gcsafe, locks: 0.}
proc fill*(self: Image; color: Color) {.gcsafe, locks: 0.}
proc fixAlphaEdges*(self: Image) {.gcsafe, locks: 0.}
proc flipX*(self: Image) {.gcsafe, locks: 0.}
proc flipY*(self: Image) {.gcsafe, locks: 0.}
proc generateMipmaps*(self: Image; renormalize: bool = false): Error {.gcsafe, locks: 0.}
proc getDataImpl*(self: Image): PoolByteArray {.gcsafe, locks: 0.}
proc getFormat*(self: Image): int64 {.gcsafe, locks: 0.}
proc getHeight*(self: Image): int64 {.gcsafe, locks: 0.}
proc getMipmapOffset*(self: Image; mipmap: int64): int64 {.gcsafe, locks: 0.}
proc getPixel*(self: Image; x: int64; y: int64): Color {.gcsafe, locks: 0.}
proc getPixelv*(self: Image; src: Vector2): Color {.gcsafe, locks: 0.}
proc getRect*(self: Image; rect: Rect2): Image {.gcsafe, locks: 0.}
proc getSize*(self: Image): Vector2 {.gcsafe, locks: 0.}
proc getUsedRect*(self: Image): Rect2 {.gcsafe, locks: 0.}
proc getWidth*(self: Image): int64 {.gcsafe, locks: 0.}
proc hasMipmaps*(self: Image): bool {.gcsafe, locks: 0.}
proc isCompressed*(self: Image): bool {.gcsafe, locks: 0.}
proc isEmpty*(self: Image): bool {.gcsafe, locks: 0.}
proc isInvisible*(self: Image): bool {.gcsafe, locks: 0.}
proc load*(self: Image; path: string): Error {.gcsafe, locks: 0.}
proc loadJpgFromBuffer*(self: Image; buffer: PoolByteArray): Error {.gcsafe, locks: 0.}
proc loadPngFromBuffer*(self: Image; buffer: PoolByteArray): Error {.gcsafe, locks: 0.}
proc loadWebpFromBuffer*(self: Image; buffer: PoolByteArray): Error {.gcsafe, locks: 0.}
proc lock*(self: Image) {.gcsafe, locks: 0.}
proc normalmapToXy*(self: Image) {.gcsafe, locks: 0.}
proc premultiplyAlpha*(self: Image) {.gcsafe, locks: 0.}
proc resize*(self: Image; width: int64; height: int64; interpolation: int64 = 1'i64) {.
    gcsafe, locks: 0.}
proc resizeToPo2*(self: Image; square: bool = false) {.gcsafe, locks: 0.}
proc rgbeToSrgb*(self: Image): Image {.gcsafe, locks: 0.}
proc saveExr*(self: Image; path: string; grayscale: bool = false): Error {.gcsafe, locks: 0.}
proc savePng*(self: Image; path: string): Error {.gcsafe, locks: 0.}
proc savePngToBuffer*(self: Image): PoolByteArray {.gcsafe, locks: 0.}
proc setPixel*(self: Image; x: int64; y: int64; color: Color) {.gcsafe, locks: 0.}
proc setPixelv*(self: Image; dst: Vector2; color: Color) {.gcsafe, locks: 0.}
proc shrinkX2*(self: Image) {.gcsafe, locks: 0.}
proc srgbToLinear*(self: Image) {.gcsafe, locks: 0.}
proc unlock*(self: Image) {.gcsafe, locks: 0.}
var imageUnderscoregetDataMethodBind {.threadvar.}: ptr GodotMethodBind
proc data(self: Image): Dictionary =
  if isNil(imageUnderscoregetDataMethodBind):
    imageUnderscoregetDataMethodBind = getMethod(cstring"Image",
        cstring"_get_data")
  var ptrCallRet: pointer
  var ptrCallVal: GodotDictionary
  ptrCallRet = addr(ptrCallVal)
  imageUnderscoregetDataMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = newDictionary(ptrCallVal)

var imageUnderscoresetDataMethodBind {.threadvar.}: ptr GodotMethodBind
proc `data=`(self: Image; val: Dictionary) =
  if isNil(imageUnderscoresetDataMethodBind):
    imageUnderscoresetDataMethodBind = getMethod(cstring"Image",
        cstring"_set_data")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = val.godotDictionary
  var ptrCallRet: pointer
  imageUnderscoresetDataMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var imageBlendRectMethodBind {.threadvar.}: ptr GodotMethodBind
proc blendRect(self: Image; src: Image; srcRect: Rect2; dst: Vector2) =
  if isNil(imageBlendRectMethodBind):
    imageBlendRectMethodBind = getMethod(cstring"Image", cstring"blend_rect")
  var
    argsStatic: array[3, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not src.isNil:
    src.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  argsToPassToGodot[][1] = unsafeAddr(srcRect)
  argsToPassToGodot[][2] = unsafeAddr(dst)
  var ptrCallRet: pointer
  imageBlendRectMethodBind.ptrCall(self.godotObject, argsToPassToGodot, ptrCallRet)

var imageBlendRectMaskMethodBind {.threadvar.}: ptr GodotMethodBind
proc blendRectMask(self: Image; src: Image; mask: Image; srcRect: Rect2; dst: Vector2) =
  if isNil(imageBlendRectMaskMethodBind):
    imageBlendRectMaskMethodBind = getMethod(cstring"Image",
        cstring"blend_rect_mask")
  var
    argsStatic: array[4, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not src.isNil:
    src.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  let argToPassToGodot1 = if not mask.isNil:
    mask.godotObject
  else:
    nil
  argsToPassToGodot[][1] = argToPassToGodot1
  argsToPassToGodot[][2] = unsafeAddr(srcRect)
  argsToPassToGodot[][3] = unsafeAddr(dst)
  var ptrCallRet: pointer
  imageBlendRectMaskMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                       ptrCallRet)

var imageBlitRectMethodBind {.threadvar.}: ptr GodotMethodBind
proc blitRect(self: Image; src: Image; srcRect: Rect2; dst: Vector2) =
  if isNil(imageBlitRectMethodBind):
    imageBlitRectMethodBind = getMethod(cstring"Image", cstring"blit_rect")
  var
    argsStatic: array[3, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not src.isNil:
    src.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  argsToPassToGodot[][1] = unsafeAddr(srcRect)
  argsToPassToGodot[][2] = unsafeAddr(dst)
  var ptrCallRet: pointer
  imageBlitRectMethodBind.ptrCall(self.godotObject, argsToPassToGodot, ptrCallRet)

var imageBlitRectMaskMethodBind {.threadvar.}: ptr GodotMethodBind
proc blitRectMask(self: Image; src: Image; mask: Image; srcRect: Rect2; dst: Vector2) =
  if isNil(imageBlitRectMaskMethodBind):
    imageBlitRectMaskMethodBind = getMethod(cstring"Image",
        cstring"blit_rect_mask")
  var
    argsStatic: array[4, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not src.isNil:
    src.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  let argToPassToGodot1 = if not mask.isNil:
    mask.godotObject
  else:
    nil
  argsToPassToGodot[][1] = argToPassToGodot1
  argsToPassToGodot[][2] = unsafeAddr(srcRect)
  argsToPassToGodot[][3] = unsafeAddr(dst)
  var ptrCallRet: pointer
  imageBlitRectMaskMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                      ptrCallRet)

var imageBumpmapToNormalmapMethodBind {.threadvar.}: ptr GodotMethodBind
proc bumpmapToNormalmap(self: Image; bumpScale: float64 = 1.0) =
  if isNil(imageBumpmapToNormalmapMethodBind):
    imageBumpmapToNormalmapMethodBind = getMethod(cstring"Image",
        cstring"bumpmap_to_normalmap")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(bumpScale)
  var ptrCallRet: pointer
  imageBumpmapToNormalmapMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var imageClearMipmapsMethodBind {.threadvar.}: ptr GodotMethodBind
proc clearMipmaps(self: Image) =
  if isNil(imageClearMipmapsMethodBind):
    imageClearMipmapsMethodBind = getMethod(cstring"Image", cstring"clear_mipmaps")
  var ptrCallRet: pointer
  imageClearMipmapsMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var imageCompressMethodBind {.threadvar.}: ptr GodotMethodBind
proc compress(self: Image; mode: int64; source: int64; lossyQuality: float64): Error =
  if isNil(imageCompressMethodBind):
    imageCompressMethodBind = getMethod(cstring"Image", cstring"compress")
  var
    argsStatic: array[3, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(mode)
  argsToPassToGodot[][1] = unsafeAddr(source)
  argsToPassToGodot[][2] = unsafeAddr(lossyQuality)
  var ptrCallRet: pointer
  var ptrCallVal: int64
  ptrCallRet = addr(ptrCallVal)
  imageCompressMethodBind.ptrCall(self.godotObject, argsToPassToGodot, ptrCallRet)
  result = Error(ptrCallVal)

var imageConvertMethodBind {.threadvar.}: ptr GodotMethodBind
proc convert(self: Image; format: int64) =
  if isNil(imageConvertMethodBind):
    imageConvertMethodBind = getMethod(cstring"Image", cstring"convert")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(format)
  var ptrCallRet: pointer
  imageConvertMethodBind.ptrCall(self.godotObject, argsToPassToGodot, ptrCallRet)

var imageCopyFromMethodBind {.threadvar.}: ptr GodotMethodBind
proc copyFrom(self: Image; src: Image) =
  if isNil(imageCopyFromMethodBind):
    imageCopyFromMethodBind = getMethod(cstring"Image", cstring"copy_from")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not src.isNil:
    src.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  var ptrCallRet: pointer
  imageCopyFromMethodBind.ptrCall(self.godotObject, argsToPassToGodot, ptrCallRet)

var imageCreateMethodBind {.threadvar.}: ptr GodotMethodBind
proc create(self: Image; width: int64; height: int64; useMipmaps: bool; format: int64) =
  if isNil(imageCreateMethodBind):
    imageCreateMethodBind = getMethod(cstring"Image", cstring"create")
  var
    argsStatic: array[4, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(width)
  argsToPassToGodot[][1] = unsafeAddr(height)
  argsToPassToGodot[][2] = unsafeAddr(useMipmaps)
  argsToPassToGodot[][3] = unsafeAddr(format)
  var ptrCallRet: pointer
  imageCreateMethodBind.ptrCall(self.godotObject, argsToPassToGodot, ptrCallRet)

var imageCreateFromDataMethodBind {.threadvar.}: ptr GodotMethodBind
proc createFromData(self: Image; width: int64; height: int64; useMipmaps: bool;
                   format: int64; data: PoolByteArray) =
  if isNil(imageCreateFromDataMethodBind):
    imageCreateFromDataMethodBind = getMethod(cstring"Image",
        cstring"create_from_data")
  var
    argsStatic: array[5, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(width)
  argsToPassToGodot[][1] = unsafeAddr(height)
  argsToPassToGodot[][2] = unsafeAddr(useMipmaps)
  argsToPassToGodot[][3] = unsafeAddr(format)
  argsToPassToGodot[][4] = data.godotPoolByteArray
  var ptrCallRet: pointer
  imageCreateFromDataMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                        ptrCallRet)

var imageCropMethodBind {.threadvar.}: ptr GodotMethodBind
proc crop(self: Image; width: int64; height: int64) =
  if isNil(imageCropMethodBind):
    imageCropMethodBind = getMethod(cstring"Image", cstring"crop")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(width)
  argsToPassToGodot[][1] = unsafeAddr(height)
  var ptrCallRet: pointer
  imageCropMethodBind.ptrCall(self.godotObject, argsToPassToGodot, ptrCallRet)

var imageDecompressMethodBind {.threadvar.}: ptr GodotMethodBind
proc decompress(self: Image): Error =
  if isNil(imageDecompressMethodBind):
    imageDecompressMethodBind = getMethod(cstring"Image", cstring"decompress")
  var ptrCallRet: pointer
  var ptrCallVal: int64
  ptrCallRet = addr(ptrCallVal)
  imageDecompressMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = Error(ptrCallVal)

var imageDetectAlphaMethodBind {.threadvar.}: ptr GodotMethodBind
proc detectAlpha(self: Image): int64 =
  if isNil(imageDetectAlphaMethodBind):
    imageDetectAlphaMethodBind = getMethod(cstring"Image", cstring"detect_alpha")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  imageDetectAlphaMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var imageExpandX2Hq2xMethodBind {.threadvar.}: ptr GodotMethodBind
proc expandX2Hq2x(self: Image) =
  if isNil(imageExpandX2Hq2xMethodBind):
    imageExpandX2Hq2xMethodBind = getMethod(cstring"Image",
        cstring"expand_x2_hq2x")
  var ptrCallRet: pointer
  imageExpandX2Hq2xMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var imageFillMethodBind {.threadvar.}: ptr GodotMethodBind
proc fill(self: Image; color: Color) =
  if isNil(imageFillMethodBind):
    imageFillMethodBind = getMethod(cstring"Image", cstring"fill")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(color)
  var ptrCallRet: pointer
  imageFillMethodBind.ptrCall(self.godotObject, argsToPassToGodot, ptrCallRet)

var imageFixAlphaEdgesMethodBind {.threadvar.}: ptr GodotMethodBind
proc fixAlphaEdges(self: Image) =
  if isNil(imageFixAlphaEdgesMethodBind):
    imageFixAlphaEdgesMethodBind = getMethod(cstring"Image",
        cstring"fix_alpha_edges")
  var ptrCallRet: pointer
  imageFixAlphaEdgesMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var imageFlipXMethodBind {.threadvar.}: ptr GodotMethodBind
proc flipX(self: Image) =
  if isNil(imageFlipXMethodBind):
    imageFlipXMethodBind = getMethod(cstring"Image", cstring"flip_x")
  var ptrCallRet: pointer
  imageFlipXMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var imageFlipYMethodBind {.threadvar.}: ptr GodotMethodBind
proc flipY(self: Image) =
  if isNil(imageFlipYMethodBind):
    imageFlipYMethodBind = getMethod(cstring"Image", cstring"flip_y")
  var ptrCallRet: pointer
  imageFlipYMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var imageGenerateMipmapsMethodBind {.threadvar.}: ptr GodotMethodBind
proc generateMipmaps(self: Image; renormalize: bool = false): Error =
  if isNil(imageGenerateMipmapsMethodBind):
    imageGenerateMipmapsMethodBind = getMethod(cstring"Image",
        cstring"generate_mipmaps")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(renormalize)
  var ptrCallRet: pointer
  var ptrCallVal: int64
  ptrCallRet = addr(ptrCallVal)
  imageGenerateMipmapsMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)
  result = Error(ptrCallVal)

var imageGetDataMethodBind {.threadvar.}: ptr GodotMethodBind
proc getDataImpl(self: Image): PoolByteArray =
  if isNil(imageGetDataMethodBind):
    imageGetDataMethodBind = getMethod(cstring"Image", cstring"get_data")
  var ptrCallRet: pointer
  var ptrCallVal: GodotPoolByteArray
  ptrCallRet = addr(ptrCallVal)
  imageGetDataMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = newPoolByteArray(ptrCallVal)

var imageGetFormatMethodBind {.threadvar.}: ptr GodotMethodBind
proc getFormat(self: Image): int64 =
  if isNil(imageGetFormatMethodBind):
    imageGetFormatMethodBind = getMethod(cstring"Image", cstring"get_format")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  imageGetFormatMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var imageGetHeightMethodBind {.threadvar.}: ptr GodotMethodBind
proc getHeight(self: Image): int64 =
  if isNil(imageGetHeightMethodBind):
    imageGetHeightMethodBind = getMethod(cstring"Image", cstring"get_height")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  imageGetHeightMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var imageGetMipmapOffsetMethodBind {.threadvar.}: ptr GodotMethodBind
proc getMipmapOffset(self: Image; mipmap: int64): int64 =
  if isNil(imageGetMipmapOffsetMethodBind):
    imageGetMipmapOffsetMethodBind = getMethod(cstring"Image",
        cstring"get_mipmap_offset")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(mipmap)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  imageGetMipmapOffsetMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var imageGetPixelMethodBind {.threadvar.}: ptr GodotMethodBind
proc getPixel(self: Image; x: int64; y: int64): Color =
  if isNil(imageGetPixelMethodBind):
    imageGetPixelMethodBind = getMethod(cstring"Image", cstring"get_pixel")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(x)
  argsToPassToGodot[][1] = unsafeAddr(y)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  imageGetPixelMethodBind.ptrCall(self.godotObject, argsToPassToGodot, ptrCallRet)

var imageGetPixelvMethodBind {.threadvar.}: ptr GodotMethodBind
proc getPixelv(self: Image; src: Vector2): Color =
  if isNil(imageGetPixelvMethodBind):
    imageGetPixelvMethodBind = getMethod(cstring"Image", cstring"get_pixelv")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(src)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  imageGetPixelvMethodBind.ptrCall(self.godotObject, argsToPassToGodot, ptrCallRet)

var imageGetRectMethodBind {.threadvar.}: ptr GodotMethodBind
proc getRect(self: Image; rect: Rect2): Image =
  if isNil(imageGetRectMethodBind):
    imageGetRectMethodBind = getMethod(cstring"Image", cstring"get_rect")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(rect)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  imageGetRectMethodBind.ptrCall(self.godotObject, argsToPassToGodot, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

var imageGetSizeMethodBind {.threadvar.}: ptr GodotMethodBind
proc getSize(self: Image): Vector2 =
  if isNil(imageGetSizeMethodBind):
    imageGetSizeMethodBind = getMethod(cstring"Image", cstring"get_size")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  imageGetSizeMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var imageGetUsedRectMethodBind {.threadvar.}: ptr GodotMethodBind
proc getUsedRect(self: Image): Rect2 =
  if isNil(imageGetUsedRectMethodBind):
    imageGetUsedRectMethodBind = getMethod(cstring"Image", cstring"get_used_rect")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  imageGetUsedRectMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var imageGetWidthMethodBind {.threadvar.}: ptr GodotMethodBind
proc getWidth(self: Image): int64 =
  if isNil(imageGetWidthMethodBind):
    imageGetWidthMethodBind = getMethod(cstring"Image", cstring"get_width")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  imageGetWidthMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var imageHasMipmapsMethodBind {.threadvar.}: ptr GodotMethodBind
proc hasMipmaps(self: Image): bool =
  if isNil(imageHasMipmapsMethodBind):
    imageHasMipmapsMethodBind = getMethod(cstring"Image", cstring"has_mipmaps")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  imageHasMipmapsMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var imageIsCompressedMethodBind {.threadvar.}: ptr GodotMethodBind
proc isCompressed(self: Image): bool =
  if isNil(imageIsCompressedMethodBind):
    imageIsCompressedMethodBind = getMethod(cstring"Image", cstring"is_compressed")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  imageIsCompressedMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var imageIsEmptyMethodBind {.threadvar.}: ptr GodotMethodBind
proc isEmpty(self: Image): bool =
  if isNil(imageIsEmptyMethodBind):
    imageIsEmptyMethodBind = getMethod(cstring"Image", cstring"is_empty")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  imageIsEmptyMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var imageIsInvisibleMethodBind {.threadvar.}: ptr GodotMethodBind
proc isInvisible(self: Image): bool =
  if isNil(imageIsInvisibleMethodBind):
    imageIsInvisibleMethodBind = getMethod(cstring"Image", cstring"is_invisible")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  imageIsInvisibleMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var imageLoadMethodBind {.threadvar.}: ptr GodotMethodBind
proc load(self: Image; path: string): Error =
  if isNil(imageLoadMethodBind):
    imageLoadMethodBind = getMethod(cstring"Image", cstring"load")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(path)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  var ptrCallVal: int64
  ptrCallRet = addr(ptrCallVal)
  imageLoadMethodBind.ptrCall(self.godotObject, argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)
  result = Error(ptrCallVal)

var imageLoadJpgFromBufferMethodBind {.threadvar.}: ptr GodotMethodBind
proc loadJpgFromBuffer(self: Image; buffer: PoolByteArray): Error =
  if isNil(imageLoadJpgFromBufferMethodBind):
    imageLoadJpgFromBufferMethodBind = getMethod(cstring"Image",
        cstring"load_jpg_from_buffer")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = buffer.godotPoolByteArray
  var ptrCallRet: pointer
  var ptrCallVal: int64
  ptrCallRet = addr(ptrCallVal)
  imageLoadJpgFromBufferMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)
  result = Error(ptrCallVal)

var imageLoadPngFromBufferMethodBind {.threadvar.}: ptr GodotMethodBind
proc loadPngFromBuffer(self: Image; buffer: PoolByteArray): Error =
  if isNil(imageLoadPngFromBufferMethodBind):
    imageLoadPngFromBufferMethodBind = getMethod(cstring"Image",
        cstring"load_png_from_buffer")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = buffer.godotPoolByteArray
  var ptrCallRet: pointer
  var ptrCallVal: int64
  ptrCallRet = addr(ptrCallVal)
  imageLoadPngFromBufferMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)
  result = Error(ptrCallVal)

var imageLoadWebpFromBufferMethodBind {.threadvar.}: ptr GodotMethodBind
proc loadWebpFromBuffer(self: Image; buffer: PoolByteArray): Error =
  if isNil(imageLoadWebpFromBufferMethodBind):
    imageLoadWebpFromBufferMethodBind = getMethod(cstring"Image",
        cstring"load_webp_from_buffer")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = buffer.godotPoolByteArray
  var ptrCallRet: pointer
  var ptrCallVal: int64
  ptrCallRet = addr(ptrCallVal)
  imageLoadWebpFromBufferMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)
  result = Error(ptrCallVal)

var imageLockMethodBind {.threadvar.}: ptr GodotMethodBind
proc lock(self: Image) =
  if isNil(imageLockMethodBind):
    imageLockMethodBind = getMethod(cstring"Image", cstring"lock")
  var ptrCallRet: pointer
  imageLockMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var imageNormalmapToXyMethodBind {.threadvar.}: ptr GodotMethodBind
proc normalmapToXy(self: Image) =
  if isNil(imageNormalmapToXyMethodBind):
    imageNormalmapToXyMethodBind = getMethod(cstring"Image",
        cstring"normalmap_to_xy")
  var ptrCallRet: pointer
  imageNormalmapToXyMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var imagePremultiplyAlphaMethodBind {.threadvar.}: ptr GodotMethodBind
proc premultiplyAlpha(self: Image) =
  if isNil(imagePremultiplyAlphaMethodBind):
    imagePremultiplyAlphaMethodBind = getMethod(cstring"Image",
        cstring"premultiply_alpha")
  var ptrCallRet: pointer
  imagePremultiplyAlphaMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var imageResizeMethodBind {.threadvar.}: ptr GodotMethodBind
proc resize(self: Image; width: int64; height: int64; interpolation: int64 = 1'i64) =
  if isNil(imageResizeMethodBind):
    imageResizeMethodBind = getMethod(cstring"Image", cstring"resize")
  var
    argsStatic: array[3, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(width)
  argsToPassToGodot[][1] = unsafeAddr(height)
  argsToPassToGodot[][2] = unsafeAddr(interpolation)
  var ptrCallRet: pointer
  imageResizeMethodBind.ptrCall(self.godotObject, argsToPassToGodot, ptrCallRet)

var imageResizeToPo2MethodBind {.threadvar.}: ptr GodotMethodBind
proc resizeToPo2(self: Image; square: bool = false) =
  if isNil(imageResizeToPo2MethodBind):
    imageResizeToPo2MethodBind = getMethod(cstring"Image", cstring"resize_to_po2")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(square)
  var ptrCallRet: pointer
  imageResizeToPo2MethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                     ptrCallRet)

var imageRgbeToSrgbMethodBind {.threadvar.}: ptr GodotMethodBind
proc rgbeToSrgb(self: Image): Image =
  if isNil(imageRgbeToSrgbMethodBind):
    imageRgbeToSrgbMethodBind = getMethod(cstring"Image", cstring"rgbe_to_srgb")
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  imageRgbeToSrgbMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

var imageSaveExrMethodBind {.threadvar.}: ptr GodotMethodBind
proc saveExr(self: Image; path: string; grayscale: bool = false): Error =
  if isNil(imageSaveExrMethodBind):
    imageSaveExrMethodBind = getMethod(cstring"Image", cstring"save_exr")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(path)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  argsToPassToGodot[][1] = unsafeAddr(grayscale)
  var ptrCallRet: pointer
  var ptrCallVal: int64
  ptrCallRet = addr(ptrCallVal)
  imageSaveExrMethodBind.ptrCall(self.godotObject, argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)
  result = Error(ptrCallVal)

var imageSavePngMethodBind {.threadvar.}: ptr GodotMethodBind
proc savePng(self: Image; path: string): Error =
  if isNil(imageSavePngMethodBind):
    imageSavePngMethodBind = getMethod(cstring"Image", cstring"save_png")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(path)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  var ptrCallVal: int64
  ptrCallRet = addr(ptrCallVal)
  imageSavePngMethodBind.ptrCall(self.godotObject, argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)
  result = Error(ptrCallVal)

var imageSavePngToBufferMethodBind {.threadvar.}: ptr GodotMethodBind
proc savePngToBuffer(self: Image): PoolByteArray =
  if isNil(imageSavePngToBufferMethodBind):
    imageSavePngToBufferMethodBind = getMethod(cstring"Image",
        cstring"save_png_to_buffer")
  var ptrCallRet: pointer
  var ptrCallVal: GodotPoolByteArray
  ptrCallRet = addr(ptrCallVal)
  imageSavePngToBufferMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = newPoolByteArray(ptrCallVal)

var imageSetPixelMethodBind {.threadvar.}: ptr GodotMethodBind
proc setPixel(self: Image; x: int64; y: int64; color: Color) =
  if isNil(imageSetPixelMethodBind):
    imageSetPixelMethodBind = getMethod(cstring"Image", cstring"set_pixel")
  var
    argsStatic: array[3, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(x)
  argsToPassToGodot[][1] = unsafeAddr(y)
  argsToPassToGodot[][2] = unsafeAddr(color)
  var ptrCallRet: pointer
  imageSetPixelMethodBind.ptrCall(self.godotObject, argsToPassToGodot, ptrCallRet)

var imageSetPixelvMethodBind {.threadvar.}: ptr GodotMethodBind
proc setPixelv(self: Image; dst: Vector2; color: Color) =
  if isNil(imageSetPixelvMethodBind):
    imageSetPixelvMethodBind = getMethod(cstring"Image", cstring"set_pixelv")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(dst)
  argsToPassToGodot[][1] = unsafeAddr(color)
  var ptrCallRet: pointer
  imageSetPixelvMethodBind.ptrCall(self.godotObject, argsToPassToGodot, ptrCallRet)

var imageShrinkX2MethodBind {.threadvar.}: ptr GodotMethodBind
proc shrinkX2(self: Image) =
  if isNil(imageShrinkX2MethodBind):
    imageShrinkX2MethodBind = getMethod(cstring"Image", cstring"shrink_x2")
  var ptrCallRet: pointer
  imageShrinkX2MethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var imageSrgbToLinearMethodBind {.threadvar.}: ptr GodotMethodBind
proc srgbToLinear(self: Image) =
  if isNil(imageSrgbToLinearMethodBind):
    imageSrgbToLinearMethodBind = getMethod(cstring"Image",
        cstring"srgb_to_linear")
  var ptrCallRet: pointer
  imageSrgbToLinearMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var imageUnlockMethodBind {.threadvar.}: ptr GodotMethodBind
proc unlock(self: Image) =
  if isNil(imageUnlockMethodBind):
    imageUnlockMethodBind = getMethod(cstring"Image", cstring"unlock")
  var ptrCallRet: pointer
  imageUnlockMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
