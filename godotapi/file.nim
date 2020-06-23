
import
  godot, godottypes, godotinternal, reference

export
  godottypes, reference

const
  COMPRESSION_DEFLATE* = 1'i64
  COMPRESSION_FASTLZ* = 0'i64
  COMPRESSION_GZIP* = 3'i64
  COMPRESSION_ZSTD* = 2'i64
  READ* = 1'i64
  READ_WRITE* = 3'i64
  WRITE* = 2'i64
  WRITE_READ* = 7'i64
proc endianSwap*(self: godottypes.File): bool {.gcsafe, locks: 0.}
proc `endianSwap=`*(self: godottypes.File; val: bool) {.gcsafe, locks: 0.}
proc close*(self: godottypes.File) {.gcsafe, locks: 0.}
proc eofReached*(self: godottypes.File): bool {.gcsafe, locks: 0.}
proc fileExists*(self: godottypes.File; path: string): bool {.gcsafe, locks: 0.}
proc get16*(self: godottypes.File): int64 {.gcsafe, locks: 0.}
proc get32*(self: godottypes.File): int64 {.gcsafe, locks: 0.}
proc get64*(self: godottypes.File): int64 {.gcsafe, locks: 0.}
proc get8*(self: godottypes.File): int64 {.gcsafe, locks: 0.}
proc getAsText*(self: godottypes.File): string {.gcsafe, locks: 0.}
proc getBuffer*(self: godottypes.File; len: int64): PoolByteArray {.gcsafe, locks: 0.}
proc getCsvLine*(self: godottypes.File; delim: string = ","): PoolStringArray {.gcsafe,
    locks: 0.}
proc getDouble*(self: godottypes.File): float64 {.gcsafe, locks: 0.}
proc getError*(self: godottypes.File): Error {.gcsafe, locks: 0.}
proc getFloat*(self: godottypes.File): float64 {.gcsafe, locks: 0.}
proc getLen*(self: godottypes.File): int64 {.gcsafe, locks: 0.}
proc getLine*(self: godottypes.File): string {.gcsafe, locks: 0.}
proc getMd5*(self: godottypes.File; path: string): string {.gcsafe, locks: 0.}
proc getModifiedTime*(self: godottypes.File; file: string): int64 {.gcsafe, locks: 0.}
proc getPascalString*(self: godottypes.File): string {.gcsafe, locks: 0.}
proc getPath*(self: godottypes.File): string {.gcsafe, locks: 0.}
proc getPathAbsolute*(self: godottypes.File): string {.gcsafe, locks: 0.}
proc getPosition*(self: godottypes.File): int64 {.gcsafe, locks: 0.}
proc getReal*(self: godottypes.File): float64 {.gcsafe, locks: 0.}
proc getSha256*(self: godottypes.File; path: string): string {.gcsafe, locks: 0.}
proc getVar*(self: godottypes.File; allowObjects: bool = false): Variant {.gcsafe,
    locks: 0.}
proc isOpen*(self: godottypes.File): bool {.gcsafe, locks: 0.}
proc open*(self: godottypes.File; path: string; flags: int64): Error {.gcsafe, locks: 0.}
proc openCompressed*(self: godottypes.File; path: string; modeFlags: int64;
                    compressionMode: int64 = 0'i64): Error {.gcsafe, locks: 0.}
proc openEncrypted*(self: godottypes.File; path: string; modeFlags: int64;
                   key: PoolByteArray): Error {.gcsafe, locks: 0.}
proc openEncryptedWithPass*(self: godottypes.File; path: string; modeFlags: int64;
                           pass: string): Error {.gcsafe, locks: 0.}
proc seek*(self: godottypes.File; position: int64) {.gcsafe, locks: 0.}
proc seekEnd*(self: godottypes.File; position: int64 = 0'i64) {.gcsafe, locks: 0.}
proc store16*(self: godottypes.File; value: int64) {.gcsafe, locks: 0.}
proc store32*(self: godottypes.File; value: int64) {.gcsafe, locks: 0.}
proc store64*(self: godottypes.File; value: int64) {.gcsafe, locks: 0.}
proc store8*(self: godottypes.File; value: int64) {.gcsafe, locks: 0.}
proc storeBuffer*(self: godottypes.File; buffer: PoolByteArray) {.gcsafe, locks: 0.}
proc storeCsvLine*(self: godottypes.File; values: PoolStringArray;
                  delim: string = ",") {.gcsafe, locks: 0.}
proc storeDouble*(self: godottypes.File; value: float64) {.gcsafe, locks: 0.}
proc storeFloat*(self: godottypes.File; value: float64) {.gcsafe, locks: 0.}
proc storeLine*(self: godottypes.File; line: string) {.gcsafe, locks: 0.}
proc storePascalString*(self: godottypes.File; string: string) {.gcsafe, locks: 0.}
proc storeReal*(self: godottypes.File; value: float64) {.gcsafe, locks: 0.}
proc storeString*(self: godottypes.File; string: string) {.gcsafe, locks: 0.}
proc storeVar*(self: godottypes.File; value: Variant; fullObjects: bool = false) {.
    gcsafe, locks: 0.}
var fileGetEndianSwapMethodBind {.threadvar.}: ptr GodotMethodBind
proc endianSwap(self: godottypes.File): bool =
  if isNil(fileGetEndianSwapMethodBind):
    fileGetEndianSwapMethodBind = getMethod(cstring"_File",
        cstring"get_endian_swap")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  fileGetEndianSwapMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var fileSetEndianSwapMethodBind {.threadvar.}: ptr GodotMethodBind
proc `endianSwap=`(self: godottypes.File; val: bool) =
  if isNil(fileSetEndianSwapMethodBind):
    fileSetEndianSwapMethodBind = getMethod(cstring"_File",
        cstring"set_endian_swap")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  fileSetEndianSwapMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                      ptrCallRet)

var fileCloseMethodBind {.threadvar.}: ptr GodotMethodBind
proc close(self: godottypes.File) =
  if isNil(fileCloseMethodBind):
    fileCloseMethodBind = getMethod(cstring"_File", cstring"close")
  var ptrCallRet: pointer
  fileCloseMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var fileEofReachedMethodBind {.threadvar.}: ptr GodotMethodBind
proc eofReached(self: godottypes.File): bool =
  if isNil(fileEofReachedMethodBind):
    fileEofReachedMethodBind = getMethod(cstring"_File", cstring"eof_reached")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  fileEofReachedMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var fileFileExistsMethodBind {.threadvar.}: ptr GodotMethodBind
proc fileExists(self: godottypes.File; path: string): bool =
  if isNil(fileFileExistsMethodBind):
    fileFileExistsMethodBind = getMethod(cstring"_File", cstring"file_exists")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(path)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  fileFileExistsMethodBind.ptrCall(self.godotObject, argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)

var fileGet16MethodBind {.threadvar.}: ptr GodotMethodBind
proc get16(self: godottypes.File): int64 =
  if isNil(fileGet16MethodBind):
    fileGet16MethodBind = getMethod(cstring"_File", cstring"get_16")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  fileGet16MethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var fileGet32MethodBind {.threadvar.}: ptr GodotMethodBind
proc get32(self: godottypes.File): int64 =
  if isNil(fileGet32MethodBind):
    fileGet32MethodBind = getMethod(cstring"_File", cstring"get_32")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  fileGet32MethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var fileGet64MethodBind {.threadvar.}: ptr GodotMethodBind
proc get64(self: godottypes.File): int64 =
  if isNil(fileGet64MethodBind):
    fileGet64MethodBind = getMethod(cstring"_File", cstring"get_64")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  fileGet64MethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var fileGet8MethodBind {.threadvar.}: ptr GodotMethodBind
proc get8(self: godottypes.File): int64 =
  if isNil(fileGet8MethodBind):
    fileGet8MethodBind = getMethod(cstring"_File", cstring"get_8")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  fileGet8MethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var fileGetAsTextMethodBind {.threadvar.}: ptr GodotMethodBind
proc getAsText(self: godottypes.File): string =
  if isNil(fileGetAsTextMethodBind):
    fileGetAsTextMethodBind = getMethod(cstring"_File", cstring"get_as_text")
  var ptrCallRet: pointer
  var ptrCallVal: GodotString
  ptrCallRet = addr(ptrCallVal)
  fileGetAsTextMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = $ptrCallVal
  deinit(ptrCallVal)

var fileGetBufferMethodBind {.threadvar.}: ptr GodotMethodBind
proc getBuffer(self: godottypes.File; len: int64): PoolByteArray =
  if isNil(fileGetBufferMethodBind):
    fileGetBufferMethodBind = getMethod(cstring"_File", cstring"get_buffer")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(len)
  var ptrCallRet: pointer
  var ptrCallVal: GodotPoolByteArray
  ptrCallRet = addr(ptrCallVal)
  fileGetBufferMethodBind.ptrCall(self.godotObject, argsToPassToGodot, ptrCallRet)
  result = newPoolByteArray(ptrCallVal)

var fileGetCsvLineMethodBind {.threadvar.}: ptr GodotMethodBind
proc getCsvLine(self: godottypes.File; delim: string = ","): PoolStringArray =
  if isNil(fileGetCsvLineMethodBind):
    fileGetCsvLineMethodBind = getMethod(cstring"_File", cstring"get_csv_line")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(delim)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  var ptrCallVal: GodotPoolStringArray
  ptrCallRet = addr(ptrCallVal)
  fileGetCsvLineMethodBind.ptrCall(self.godotObject, argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)
  result = newPoolStringArray(ptrCallVal)

var fileGetDoubleMethodBind {.threadvar.}: ptr GodotMethodBind
proc getDouble(self: godottypes.File): float64 =
  if isNil(fileGetDoubleMethodBind):
    fileGetDoubleMethodBind = getMethod(cstring"_File", cstring"get_double")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  fileGetDoubleMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var fileGetErrorMethodBind {.threadvar.}: ptr GodotMethodBind
proc getError(self: godottypes.File): Error =
  if isNil(fileGetErrorMethodBind):
    fileGetErrorMethodBind = getMethod(cstring"_File", cstring"get_error")
  var ptrCallRet: pointer
  var ptrCallVal: int64
  ptrCallRet = addr(ptrCallVal)
  fileGetErrorMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = Error(ptrCallVal)

var fileGetFloatMethodBind {.threadvar.}: ptr GodotMethodBind
proc getFloat(self: godottypes.File): float64 =
  if isNil(fileGetFloatMethodBind):
    fileGetFloatMethodBind = getMethod(cstring"_File", cstring"get_float")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  fileGetFloatMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var fileGetLenMethodBind {.threadvar.}: ptr GodotMethodBind
proc getLen(self: godottypes.File): int64 =
  if isNil(fileGetLenMethodBind):
    fileGetLenMethodBind = getMethod(cstring"_File", cstring"get_len")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  fileGetLenMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var fileGetLineMethodBind {.threadvar.}: ptr GodotMethodBind
proc getLine(self: godottypes.File): string =
  if isNil(fileGetLineMethodBind):
    fileGetLineMethodBind = getMethod(cstring"_File", cstring"get_line")
  var ptrCallRet: pointer
  var ptrCallVal: GodotString
  ptrCallRet = addr(ptrCallVal)
  fileGetLineMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = $ptrCallVal
  deinit(ptrCallVal)

var fileGetMd5MethodBind {.threadvar.}: ptr GodotMethodBind
proc getMd5(self: godottypes.File; path: string): string =
  if isNil(fileGetMd5MethodBind):
    fileGetMd5MethodBind = getMethod(cstring"_File", cstring"get_md5")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(path)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  var ptrCallVal: GodotString
  ptrCallRet = addr(ptrCallVal)
  fileGetMd5MethodBind.ptrCall(self.godotObject, argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)
  result = $ptrCallVal
  deinit(ptrCallVal)

var fileGetModifiedTimeMethodBind {.threadvar.}: ptr GodotMethodBind
proc getModifiedTime(self: godottypes.File; file: string): int64 =
  if isNil(fileGetModifiedTimeMethodBind):
    fileGetModifiedTimeMethodBind = getMethod(cstring"_File",
        cstring"get_modified_time")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(file)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  fileGetModifiedTimeMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                        ptrCallRet)
  deinit(argToPassToGodot0)

var fileGetPascalStringMethodBind {.threadvar.}: ptr GodotMethodBind
proc getPascalString(self: godottypes.File): string =
  if isNil(fileGetPascalStringMethodBind):
    fileGetPascalStringMethodBind = getMethod(cstring"_File",
        cstring"get_pascal_string")
  var ptrCallRet: pointer
  var ptrCallVal: GodotString
  ptrCallRet = addr(ptrCallVal)
  fileGetPascalStringMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = $ptrCallVal
  deinit(ptrCallVal)

var fileGetPathMethodBind {.threadvar.}: ptr GodotMethodBind
proc getPath(self: godottypes.File): string =
  if isNil(fileGetPathMethodBind):
    fileGetPathMethodBind = getMethod(cstring"_File", cstring"get_path")
  var ptrCallRet: pointer
  var ptrCallVal: GodotString
  ptrCallRet = addr(ptrCallVal)
  fileGetPathMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = $ptrCallVal
  deinit(ptrCallVal)

var fileGetPathAbsoluteMethodBind {.threadvar.}: ptr GodotMethodBind
proc getPathAbsolute(self: godottypes.File): string =
  if isNil(fileGetPathAbsoluteMethodBind):
    fileGetPathAbsoluteMethodBind = getMethod(cstring"_File",
        cstring"get_path_absolute")
  var ptrCallRet: pointer
  var ptrCallVal: GodotString
  ptrCallRet = addr(ptrCallVal)
  fileGetPathAbsoluteMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = $ptrCallVal
  deinit(ptrCallVal)

var fileGetPositionMethodBind {.threadvar.}: ptr GodotMethodBind
proc getPosition(self: godottypes.File): int64 =
  if isNil(fileGetPositionMethodBind):
    fileGetPositionMethodBind = getMethod(cstring"_File", cstring"get_position")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  fileGetPositionMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var fileGetRealMethodBind {.threadvar.}: ptr GodotMethodBind
proc getReal(self: godottypes.File): float64 =
  if isNil(fileGetRealMethodBind):
    fileGetRealMethodBind = getMethod(cstring"_File", cstring"get_real")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  fileGetRealMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var fileGetSha256MethodBind {.threadvar.}: ptr GodotMethodBind
proc getSha256(self: godottypes.File; path: string): string =
  if isNil(fileGetSha256MethodBind):
    fileGetSha256MethodBind = getMethod(cstring"_File", cstring"get_sha256")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(path)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  var ptrCallVal: GodotString
  ptrCallRet = addr(ptrCallVal)
  fileGetSha256MethodBind.ptrCall(self.godotObject, argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)
  result = $ptrCallVal
  deinit(ptrCallVal)

var fileGetVarMethodBind {.threadvar.}: ptr GodotMethodBind
proc getVar(self: godottypes.File; allowObjects: bool = false): Variant =
  if isNil(fileGetVarMethodBind):
    fileGetVarMethodBind = getMethod(cstring"_File", cstring"get_var")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(allowObjects)
  var ptrCallRet: pointer
  var ptrCallVal: GodotVariant
  ptrCallRet = addr(ptrCallVal)
  fileGetVarMethodBind.ptrCall(self.godotObject, argsToPassToGodot, ptrCallRet)
  result = newVariant(ptrCallVal)

var fileIsOpenMethodBind {.threadvar.}: ptr GodotMethodBind
proc isOpen(self: godottypes.File): bool =
  if isNil(fileIsOpenMethodBind):
    fileIsOpenMethodBind = getMethod(cstring"_File", cstring"is_open")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  fileIsOpenMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var fileOpenMethodBind {.threadvar.}: ptr GodotMethodBind
proc open(self: godottypes.File; path: string; flags: int64): Error =
  if isNil(fileOpenMethodBind):
    fileOpenMethodBind = getMethod(cstring"_File", cstring"open")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(path)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  argsToPassToGodot[][1] = unsafeAddr(flags)
  var ptrCallRet: pointer
  var ptrCallVal: int64
  ptrCallRet = addr(ptrCallVal)
  fileOpenMethodBind.ptrCall(self.godotObject, argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)
  result = Error(ptrCallVal)

var fileOpenCompressedMethodBind {.threadvar.}: ptr GodotMethodBind
proc openCompressed(self: godottypes.File; path: string; modeFlags: int64;
                   compressionMode: int64 = 0'i64): Error =
  if isNil(fileOpenCompressedMethodBind):
    fileOpenCompressedMethodBind = getMethod(cstring"_File",
        cstring"open_compressed")
  var
    argsStatic: array[3, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(path)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  argsToPassToGodot[][1] = unsafeAddr(modeFlags)
  argsToPassToGodot[][2] = unsafeAddr(compressionMode)
  var ptrCallRet: pointer
  var ptrCallVal: int64
  ptrCallRet = addr(ptrCallVal)
  fileOpenCompressedMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                       ptrCallRet)
  deinit(argToPassToGodot0)
  result = Error(ptrCallVal)

var fileOpenEncryptedMethodBind {.threadvar.}: ptr GodotMethodBind
proc openEncrypted(self: godottypes.File; path: string; modeFlags: int64;
                  key: PoolByteArray): Error =
  if isNil(fileOpenEncryptedMethodBind):
    fileOpenEncryptedMethodBind = getMethod(cstring"_File",
        cstring"open_encrypted")
  var
    argsStatic: array[3, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(path)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  argsToPassToGodot[][1] = unsafeAddr(modeFlags)
  argsToPassToGodot[][2] = key.godotPoolByteArray
  var ptrCallRet: pointer
  var ptrCallVal: int64
  ptrCallRet = addr(ptrCallVal)
  fileOpenEncryptedMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                      ptrCallRet)
  deinit(argToPassToGodot0)
  result = Error(ptrCallVal)

var fileOpenEncryptedWithPassMethodBind {.threadvar.}: ptr GodotMethodBind
proc openEncryptedWithPass(self: godottypes.File; path: string; modeFlags: int64;
                          pass: string): Error =
  if isNil(fileOpenEncryptedWithPassMethodBind):
    fileOpenEncryptedWithPassMethodBind = getMethod(cstring"_File",
        cstring"open_encrypted_with_pass")
  var
    argsStatic: array[3, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(path)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  argsToPassToGodot[][1] = unsafeAddr(modeFlags)
  var argToPassToGodot2 = toGodotString(pass)
  argsToPassToGodot[][2] = unsafeAddr(argToPassToGodot2)
  var ptrCallRet: pointer
  var ptrCallVal: int64
  ptrCallRet = addr(ptrCallVal)
  fileOpenEncryptedWithPassMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)
  deinit(argToPassToGodot2)
  result = Error(ptrCallVal)

var fileSeekMethodBind {.threadvar.}: ptr GodotMethodBind
proc seek(self: godottypes.File; position: int64) =
  if isNil(fileSeekMethodBind):
    fileSeekMethodBind = getMethod(cstring"_File", cstring"seek")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(position)
  var ptrCallRet: pointer
  fileSeekMethodBind.ptrCall(self.godotObject, argsToPassToGodot, ptrCallRet)

var fileSeekEndMethodBind {.threadvar.}: ptr GodotMethodBind
proc seekEnd(self: godottypes.File; position: int64 = 0'i64) =
  if isNil(fileSeekEndMethodBind):
    fileSeekEndMethodBind = getMethod(cstring"_File", cstring"seek_end")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(position)
  var ptrCallRet: pointer
  fileSeekEndMethodBind.ptrCall(self.godotObject, argsToPassToGodot, ptrCallRet)

var fileStore16MethodBind {.threadvar.}: ptr GodotMethodBind
proc store16(self: godottypes.File; value: int64) =
  if isNil(fileStore16MethodBind):
    fileStore16MethodBind = getMethod(cstring"_File", cstring"store_16")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(value)
  var ptrCallRet: pointer
  fileStore16MethodBind.ptrCall(self.godotObject, argsToPassToGodot, ptrCallRet)

var fileStore32MethodBind {.threadvar.}: ptr GodotMethodBind
proc store32(self: godottypes.File; value: int64) =
  if isNil(fileStore32MethodBind):
    fileStore32MethodBind = getMethod(cstring"_File", cstring"store_32")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(value)
  var ptrCallRet: pointer
  fileStore32MethodBind.ptrCall(self.godotObject, argsToPassToGodot, ptrCallRet)

var fileStore64MethodBind {.threadvar.}: ptr GodotMethodBind
proc store64(self: godottypes.File; value: int64) =
  if isNil(fileStore64MethodBind):
    fileStore64MethodBind = getMethod(cstring"_File", cstring"store_64")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(value)
  var ptrCallRet: pointer
  fileStore64MethodBind.ptrCall(self.godotObject, argsToPassToGodot, ptrCallRet)

var fileStore8MethodBind {.threadvar.}: ptr GodotMethodBind
proc store8(self: godottypes.File; value: int64) =
  if isNil(fileStore8MethodBind):
    fileStore8MethodBind = getMethod(cstring"_File", cstring"store_8")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(value)
  var ptrCallRet: pointer
  fileStore8MethodBind.ptrCall(self.godotObject, argsToPassToGodot, ptrCallRet)

var fileStoreBufferMethodBind {.threadvar.}: ptr GodotMethodBind
proc storeBuffer(self: godottypes.File; buffer: PoolByteArray) =
  if isNil(fileStoreBufferMethodBind):
    fileStoreBufferMethodBind = getMethod(cstring"_File", cstring"store_buffer")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = buffer.godotPoolByteArray
  var ptrCallRet: pointer
  fileStoreBufferMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                    ptrCallRet)

var fileStoreCsvLineMethodBind {.threadvar.}: ptr GodotMethodBind
proc storeCsvLine(self: godottypes.File; values: PoolStringArray; delim: string = ",") =
  if isNil(fileStoreCsvLineMethodBind):
    fileStoreCsvLineMethodBind = getMethod(cstring"_File", cstring"store_csv_line")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = values.godotPoolStringArray
  var argToPassToGodot1 = toGodotString(delim)
  argsToPassToGodot[][1] = unsafeAddr(argToPassToGodot1)
  var ptrCallRet: pointer
  fileStoreCsvLineMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                     ptrCallRet)
  deinit(argToPassToGodot1)

var fileStoreDoubleMethodBind {.threadvar.}: ptr GodotMethodBind
proc storeDouble(self: godottypes.File; value: float64) =
  if isNil(fileStoreDoubleMethodBind):
    fileStoreDoubleMethodBind = getMethod(cstring"_File", cstring"store_double")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(value)
  var ptrCallRet: pointer
  fileStoreDoubleMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                    ptrCallRet)

var fileStoreFloatMethodBind {.threadvar.}: ptr GodotMethodBind
proc storeFloat(self: godottypes.File; value: float64) =
  if isNil(fileStoreFloatMethodBind):
    fileStoreFloatMethodBind = getMethod(cstring"_File", cstring"store_float")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(value)
  var ptrCallRet: pointer
  fileStoreFloatMethodBind.ptrCall(self.godotObject, argsToPassToGodot, ptrCallRet)

var fileStoreLineMethodBind {.threadvar.}: ptr GodotMethodBind
proc storeLine(self: godottypes.File; line: string) =
  if isNil(fileStoreLineMethodBind):
    fileStoreLineMethodBind = getMethod(cstring"_File", cstring"store_line")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(line)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  fileStoreLineMethodBind.ptrCall(self.godotObject, argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)

var fileStorePascalStringMethodBind {.threadvar.}: ptr GodotMethodBind
proc storePascalString(self: godottypes.File; string: string) =
  if isNil(fileStorePascalStringMethodBind):
    fileStorePascalStringMethodBind = getMethod(cstring"_File",
        cstring"store_pascal_string")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(string)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  fileStorePascalStringMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)
  deinit(argToPassToGodot0)

var fileStoreRealMethodBind {.threadvar.}: ptr GodotMethodBind
proc storeReal(self: godottypes.File; value: float64) =
  if isNil(fileStoreRealMethodBind):
    fileStoreRealMethodBind = getMethod(cstring"_File", cstring"store_real")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(value)
  var ptrCallRet: pointer
  fileStoreRealMethodBind.ptrCall(self.godotObject, argsToPassToGodot, ptrCallRet)

var fileStoreStringMethodBind {.threadvar.}: ptr GodotMethodBind
proc storeString(self: godottypes.File; string: string) =
  if isNil(fileStoreStringMethodBind):
    fileStoreStringMethodBind = getMethod(cstring"_File", cstring"store_string")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(string)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  fileStoreStringMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                    ptrCallRet)
  deinit(argToPassToGodot0)

var fileStoreVarMethodBind {.threadvar.}: ptr GodotMethodBind
proc storeVar(self: godottypes.File; value: Variant; fullObjects: bool = false) =
  if isNil(fileStoreVarMethodBind):
    fileStoreVarMethodBind = getMethod(cstring"_File", cstring"store_var")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = value.godotVariant
  argsToPassToGodot[][1] = unsafeAddr(fullObjects)
  var ptrCallRet: pointer
  fileStoreVarMethodBind.ptrCall(self.godotObject, argsToPassToGodot, ptrCallRet)
