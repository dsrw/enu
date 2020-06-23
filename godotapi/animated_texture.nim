
import
  godot, godottypes, godotinternal, texture

export
  godottypes, texture

const
  MAX_FRAMES* = 256'i64
proc currentFrame*(self: AnimatedTexture): int64 {.gcsafe, locks: 0.}
proc `currentFrame=`*(self: AnimatedTexture; val: int64) {.gcsafe, locks: 0.}
proc fps*(self: AnimatedTexture): float64 {.gcsafe, locks: 0.}
proc `fps=`*(self: AnimatedTexture; val: float64) {.gcsafe, locks: 0.}
proc frame0delaySec*(self: AnimatedTexture): float64 {.gcsafe, locks: 0.}
proc `frame0delaySec=`*(self: AnimatedTexture; val: float64) {.gcsafe, locks: 0.}
proc frame0texture*(self: AnimatedTexture): Texture {.gcsafe, locks: 0.}
proc `frame0texture=`*(self: AnimatedTexture; val: Texture) {.gcsafe, locks: 0.}
proc frame1delaySec*(self: AnimatedTexture): float64 {.gcsafe, locks: 0.}
proc `frame1delaySec=`*(self: AnimatedTexture; val: float64) {.gcsafe, locks: 0.}
proc frame1texture*(self: AnimatedTexture): Texture {.gcsafe, locks: 0.}
proc `frame1texture=`*(self: AnimatedTexture; val: Texture) {.gcsafe, locks: 0.}
proc frame10delaySec*(self: AnimatedTexture): float64 {.gcsafe, locks: 0.}
proc `frame10delaySec=`*(self: AnimatedTexture; val: float64) {.gcsafe, locks: 0.}
proc frame10texture*(self: AnimatedTexture): Texture {.gcsafe, locks: 0.}
proc `frame10texture=`*(self: AnimatedTexture; val: Texture) {.gcsafe, locks: 0.}
proc frame100delaySec*(self: AnimatedTexture): float64 {.gcsafe, locks: 0.}
proc `frame100delaySec=`*(self: AnimatedTexture; val: float64) {.gcsafe, locks: 0.}
proc frame100texture*(self: AnimatedTexture): Texture {.gcsafe, locks: 0.}
proc `frame100texture=`*(self: AnimatedTexture; val: Texture) {.gcsafe, locks: 0.}
proc frame101delaySec*(self: AnimatedTexture): float64 {.gcsafe, locks: 0.}
proc `frame101delaySec=`*(self: AnimatedTexture; val: float64) {.gcsafe, locks: 0.}
proc frame101texture*(self: AnimatedTexture): Texture {.gcsafe, locks: 0.}
proc `frame101texture=`*(self: AnimatedTexture; val: Texture) {.gcsafe, locks: 0.}
proc frame102delaySec*(self: AnimatedTexture): float64 {.gcsafe, locks: 0.}
proc `frame102delaySec=`*(self: AnimatedTexture; val: float64) {.gcsafe, locks: 0.}
proc frame102texture*(self: AnimatedTexture): Texture {.gcsafe, locks: 0.}
proc `frame102texture=`*(self: AnimatedTexture; val: Texture) {.gcsafe, locks: 0.}
proc frame103delaySec*(self: AnimatedTexture): float64 {.gcsafe, locks: 0.}
proc `frame103delaySec=`*(self: AnimatedTexture; val: float64) {.gcsafe, locks: 0.}
proc frame103texture*(self: AnimatedTexture): Texture {.gcsafe, locks: 0.}
proc `frame103texture=`*(self: AnimatedTexture; val: Texture) {.gcsafe, locks: 0.}
proc frame104delaySec*(self: AnimatedTexture): float64 {.gcsafe, locks: 0.}
proc `frame104delaySec=`*(self: AnimatedTexture; val: float64) {.gcsafe, locks: 0.}
proc frame104texture*(self: AnimatedTexture): Texture {.gcsafe, locks: 0.}
proc `frame104texture=`*(self: AnimatedTexture; val: Texture) {.gcsafe, locks: 0.}
proc frame105delaySec*(self: AnimatedTexture): float64 {.gcsafe, locks: 0.}
proc `frame105delaySec=`*(self: AnimatedTexture; val: float64) {.gcsafe, locks: 0.}
proc frame105texture*(self: AnimatedTexture): Texture {.gcsafe, locks: 0.}
proc `frame105texture=`*(self: AnimatedTexture; val: Texture) {.gcsafe, locks: 0.}
proc frame106delaySec*(self: AnimatedTexture): float64 {.gcsafe, locks: 0.}
proc `frame106delaySec=`*(self: AnimatedTexture; val: float64) {.gcsafe, locks: 0.}
proc frame106texture*(self: AnimatedTexture): Texture {.gcsafe, locks: 0.}
proc `frame106texture=`*(self: AnimatedTexture; val: Texture) {.gcsafe, locks: 0.}
proc frame107delaySec*(self: AnimatedTexture): float64 {.gcsafe, locks: 0.}
proc `frame107delaySec=`*(self: AnimatedTexture; val: float64) {.gcsafe, locks: 0.}
proc frame107texture*(self: AnimatedTexture): Texture {.gcsafe, locks: 0.}
proc `frame107texture=`*(self: AnimatedTexture; val: Texture) {.gcsafe, locks: 0.}
proc frame108delaySec*(self: AnimatedTexture): float64 {.gcsafe, locks: 0.}
proc `frame108delaySec=`*(self: AnimatedTexture; val: float64) {.gcsafe, locks: 0.}
proc frame108texture*(self: AnimatedTexture): Texture {.gcsafe, locks: 0.}
proc `frame108texture=`*(self: AnimatedTexture; val: Texture) {.gcsafe, locks: 0.}
proc frame109delaySec*(self: AnimatedTexture): float64 {.gcsafe, locks: 0.}
proc `frame109delaySec=`*(self: AnimatedTexture; val: float64) {.gcsafe, locks: 0.}
proc frame109texture*(self: AnimatedTexture): Texture {.gcsafe, locks: 0.}
proc `frame109texture=`*(self: AnimatedTexture; val: Texture) {.gcsafe, locks: 0.}
proc frame11delaySec*(self: AnimatedTexture): float64 {.gcsafe, locks: 0.}
proc `frame11delaySec=`*(self: AnimatedTexture; val: float64) {.gcsafe, locks: 0.}
proc frame11texture*(self: AnimatedTexture): Texture {.gcsafe, locks: 0.}
proc `frame11texture=`*(self: AnimatedTexture; val: Texture) {.gcsafe, locks: 0.}
proc frame110delaySec*(self: AnimatedTexture): float64 {.gcsafe, locks: 0.}
proc `frame110delaySec=`*(self: AnimatedTexture; val: float64) {.gcsafe, locks: 0.}
proc frame110texture*(self: AnimatedTexture): Texture {.gcsafe, locks: 0.}
proc `frame110texture=`*(self: AnimatedTexture; val: Texture) {.gcsafe, locks: 0.}
proc frame111delaySec*(self: AnimatedTexture): float64 {.gcsafe, locks: 0.}
proc `frame111delaySec=`*(self: AnimatedTexture; val: float64) {.gcsafe, locks: 0.}
proc frame111texture*(self: AnimatedTexture): Texture {.gcsafe, locks: 0.}
proc `frame111texture=`*(self: AnimatedTexture; val: Texture) {.gcsafe, locks: 0.}
proc frame112delaySec*(self: AnimatedTexture): float64 {.gcsafe, locks: 0.}
proc `frame112delaySec=`*(self: AnimatedTexture; val: float64) {.gcsafe, locks: 0.}
proc frame112texture*(self: AnimatedTexture): Texture {.gcsafe, locks: 0.}
proc `frame112texture=`*(self: AnimatedTexture; val: Texture) {.gcsafe, locks: 0.}
proc frame113delaySec*(self: AnimatedTexture): float64 {.gcsafe, locks: 0.}
proc `frame113delaySec=`*(self: AnimatedTexture; val: float64) {.gcsafe, locks: 0.}
proc frame113texture*(self: AnimatedTexture): Texture {.gcsafe, locks: 0.}
proc `frame113texture=`*(self: AnimatedTexture; val: Texture) {.gcsafe, locks: 0.}
proc frame114delaySec*(self: AnimatedTexture): float64 {.gcsafe, locks: 0.}
proc `frame114delaySec=`*(self: AnimatedTexture; val: float64) {.gcsafe, locks: 0.}
proc frame114texture*(self: AnimatedTexture): Texture {.gcsafe, locks: 0.}
proc `frame114texture=`*(self: AnimatedTexture; val: Texture) {.gcsafe, locks: 0.}
proc frame115delaySec*(self: AnimatedTexture): float64 {.gcsafe, locks: 0.}
proc `frame115delaySec=`*(self: AnimatedTexture; val: float64) {.gcsafe, locks: 0.}
proc frame115texture*(self: AnimatedTexture): Texture {.gcsafe, locks: 0.}
proc `frame115texture=`*(self: AnimatedTexture; val: Texture) {.gcsafe, locks: 0.}
proc frame116delaySec*(self: AnimatedTexture): float64 {.gcsafe, locks: 0.}
proc `frame116delaySec=`*(self: AnimatedTexture; val: float64) {.gcsafe, locks: 0.}
proc frame116texture*(self: AnimatedTexture): Texture {.gcsafe, locks: 0.}
proc `frame116texture=`*(self: AnimatedTexture; val: Texture) {.gcsafe, locks: 0.}
proc frame117delaySec*(self: AnimatedTexture): float64 {.gcsafe, locks: 0.}
proc `frame117delaySec=`*(self: AnimatedTexture; val: float64) {.gcsafe, locks: 0.}
proc frame117texture*(self: AnimatedTexture): Texture {.gcsafe, locks: 0.}
proc `frame117texture=`*(self: AnimatedTexture; val: Texture) {.gcsafe, locks: 0.}
proc frame118delaySec*(self: AnimatedTexture): float64 {.gcsafe, locks: 0.}
proc `frame118delaySec=`*(self: AnimatedTexture; val: float64) {.gcsafe, locks: 0.}
proc frame118texture*(self: AnimatedTexture): Texture {.gcsafe, locks: 0.}
proc `frame118texture=`*(self: AnimatedTexture; val: Texture) {.gcsafe, locks: 0.}
proc frame119delaySec*(self: AnimatedTexture): float64 {.gcsafe, locks: 0.}
proc `frame119delaySec=`*(self: AnimatedTexture; val: float64) {.gcsafe, locks: 0.}
proc frame119texture*(self: AnimatedTexture): Texture {.gcsafe, locks: 0.}
proc `frame119texture=`*(self: AnimatedTexture; val: Texture) {.gcsafe, locks: 0.}
proc frame12delaySec*(self: AnimatedTexture): float64 {.gcsafe, locks: 0.}
proc `frame12delaySec=`*(self: AnimatedTexture; val: float64) {.gcsafe, locks: 0.}
proc frame12texture*(self: AnimatedTexture): Texture {.gcsafe, locks: 0.}
proc `frame12texture=`*(self: AnimatedTexture; val: Texture) {.gcsafe, locks: 0.}
proc frame120delaySec*(self: AnimatedTexture): float64 {.gcsafe, locks: 0.}
proc `frame120delaySec=`*(self: AnimatedTexture; val: float64) {.gcsafe, locks: 0.}
proc frame120texture*(self: AnimatedTexture): Texture {.gcsafe, locks: 0.}
proc `frame120texture=`*(self: AnimatedTexture; val: Texture) {.gcsafe, locks: 0.}
proc frame121delaySec*(self: AnimatedTexture): float64 {.gcsafe, locks: 0.}
proc `frame121delaySec=`*(self: AnimatedTexture; val: float64) {.gcsafe, locks: 0.}
proc frame121texture*(self: AnimatedTexture): Texture {.gcsafe, locks: 0.}
proc `frame121texture=`*(self: AnimatedTexture; val: Texture) {.gcsafe, locks: 0.}
proc frame122delaySec*(self: AnimatedTexture): float64 {.gcsafe, locks: 0.}
proc `frame122delaySec=`*(self: AnimatedTexture; val: float64) {.gcsafe, locks: 0.}
proc frame122texture*(self: AnimatedTexture): Texture {.gcsafe, locks: 0.}
proc `frame122texture=`*(self: AnimatedTexture; val: Texture) {.gcsafe, locks: 0.}
proc frame123delaySec*(self: AnimatedTexture): float64 {.gcsafe, locks: 0.}
proc `frame123delaySec=`*(self: AnimatedTexture; val: float64) {.gcsafe, locks: 0.}
proc frame123texture*(self: AnimatedTexture): Texture {.gcsafe, locks: 0.}
proc `frame123texture=`*(self: AnimatedTexture; val: Texture) {.gcsafe, locks: 0.}
proc frame124delaySec*(self: AnimatedTexture): float64 {.gcsafe, locks: 0.}
proc `frame124delaySec=`*(self: AnimatedTexture; val: float64) {.gcsafe, locks: 0.}
proc frame124texture*(self: AnimatedTexture): Texture {.gcsafe, locks: 0.}
proc `frame124texture=`*(self: AnimatedTexture; val: Texture) {.gcsafe, locks: 0.}
proc frame125delaySec*(self: AnimatedTexture): float64 {.gcsafe, locks: 0.}
proc `frame125delaySec=`*(self: AnimatedTexture; val: float64) {.gcsafe, locks: 0.}
proc frame125texture*(self: AnimatedTexture): Texture {.gcsafe, locks: 0.}
proc `frame125texture=`*(self: AnimatedTexture; val: Texture) {.gcsafe, locks: 0.}
proc frame126delaySec*(self: AnimatedTexture): float64 {.gcsafe, locks: 0.}
proc `frame126delaySec=`*(self: AnimatedTexture; val: float64) {.gcsafe, locks: 0.}
proc frame126texture*(self: AnimatedTexture): Texture {.gcsafe, locks: 0.}
proc `frame126texture=`*(self: AnimatedTexture; val: Texture) {.gcsafe, locks: 0.}
proc frame127delaySec*(self: AnimatedTexture): float64 {.gcsafe, locks: 0.}
proc `frame127delaySec=`*(self: AnimatedTexture; val: float64) {.gcsafe, locks: 0.}
proc frame127texture*(self: AnimatedTexture): Texture {.gcsafe, locks: 0.}
proc `frame127texture=`*(self: AnimatedTexture; val: Texture) {.gcsafe, locks: 0.}
proc frame128delaySec*(self: AnimatedTexture): float64 {.gcsafe, locks: 0.}
proc `frame128delaySec=`*(self: AnimatedTexture; val: float64) {.gcsafe, locks: 0.}
proc frame128texture*(self: AnimatedTexture): Texture {.gcsafe, locks: 0.}
proc `frame128texture=`*(self: AnimatedTexture; val: Texture) {.gcsafe, locks: 0.}
proc frame129delaySec*(self: AnimatedTexture): float64 {.gcsafe, locks: 0.}
proc `frame129delaySec=`*(self: AnimatedTexture; val: float64) {.gcsafe, locks: 0.}
proc frame129texture*(self: AnimatedTexture): Texture {.gcsafe, locks: 0.}
proc `frame129texture=`*(self: AnimatedTexture; val: Texture) {.gcsafe, locks: 0.}
proc frame13delaySec*(self: AnimatedTexture): float64 {.gcsafe, locks: 0.}
proc `frame13delaySec=`*(self: AnimatedTexture; val: float64) {.gcsafe, locks: 0.}
proc frame13texture*(self: AnimatedTexture): Texture {.gcsafe, locks: 0.}
proc `frame13texture=`*(self: AnimatedTexture; val: Texture) {.gcsafe, locks: 0.}
proc frame130delaySec*(self: AnimatedTexture): float64 {.gcsafe, locks: 0.}
proc `frame130delaySec=`*(self: AnimatedTexture; val: float64) {.gcsafe, locks: 0.}
proc frame130texture*(self: AnimatedTexture): Texture {.gcsafe, locks: 0.}
proc `frame130texture=`*(self: AnimatedTexture; val: Texture) {.gcsafe, locks: 0.}
proc frame131delaySec*(self: AnimatedTexture): float64 {.gcsafe, locks: 0.}
proc `frame131delaySec=`*(self: AnimatedTexture; val: float64) {.gcsafe, locks: 0.}
proc frame131texture*(self: AnimatedTexture): Texture {.gcsafe, locks: 0.}
proc `frame131texture=`*(self: AnimatedTexture; val: Texture) {.gcsafe, locks: 0.}
proc frame132delaySec*(self: AnimatedTexture): float64 {.gcsafe, locks: 0.}
proc `frame132delaySec=`*(self: AnimatedTexture; val: float64) {.gcsafe, locks: 0.}
proc frame132texture*(self: AnimatedTexture): Texture {.gcsafe, locks: 0.}
proc `frame132texture=`*(self: AnimatedTexture; val: Texture) {.gcsafe, locks: 0.}
proc frame133delaySec*(self: AnimatedTexture): float64 {.gcsafe, locks: 0.}
proc `frame133delaySec=`*(self: AnimatedTexture; val: float64) {.gcsafe, locks: 0.}
proc frame133texture*(self: AnimatedTexture): Texture {.gcsafe, locks: 0.}
proc `frame133texture=`*(self: AnimatedTexture; val: Texture) {.gcsafe, locks: 0.}
proc frame134delaySec*(self: AnimatedTexture): float64 {.gcsafe, locks: 0.}
proc `frame134delaySec=`*(self: AnimatedTexture; val: float64) {.gcsafe, locks: 0.}
proc frame134texture*(self: AnimatedTexture): Texture {.gcsafe, locks: 0.}
proc `frame134texture=`*(self: AnimatedTexture; val: Texture) {.gcsafe, locks: 0.}
proc frame135delaySec*(self: AnimatedTexture): float64 {.gcsafe, locks: 0.}
proc `frame135delaySec=`*(self: AnimatedTexture; val: float64) {.gcsafe, locks: 0.}
proc frame135texture*(self: AnimatedTexture): Texture {.gcsafe, locks: 0.}
proc `frame135texture=`*(self: AnimatedTexture; val: Texture) {.gcsafe, locks: 0.}
proc frame136delaySec*(self: AnimatedTexture): float64 {.gcsafe, locks: 0.}
proc `frame136delaySec=`*(self: AnimatedTexture; val: float64) {.gcsafe, locks: 0.}
proc frame136texture*(self: AnimatedTexture): Texture {.gcsafe, locks: 0.}
proc `frame136texture=`*(self: AnimatedTexture; val: Texture) {.gcsafe, locks: 0.}
proc frame137delaySec*(self: AnimatedTexture): float64 {.gcsafe, locks: 0.}
proc `frame137delaySec=`*(self: AnimatedTexture; val: float64) {.gcsafe, locks: 0.}
proc frame137texture*(self: AnimatedTexture): Texture {.gcsafe, locks: 0.}
proc `frame137texture=`*(self: AnimatedTexture; val: Texture) {.gcsafe, locks: 0.}
proc frame138delaySec*(self: AnimatedTexture): float64 {.gcsafe, locks: 0.}
proc `frame138delaySec=`*(self: AnimatedTexture; val: float64) {.gcsafe, locks: 0.}
proc frame138texture*(self: AnimatedTexture): Texture {.gcsafe, locks: 0.}
proc `frame138texture=`*(self: AnimatedTexture; val: Texture) {.gcsafe, locks: 0.}
proc frame139delaySec*(self: AnimatedTexture): float64 {.gcsafe, locks: 0.}
proc `frame139delaySec=`*(self: AnimatedTexture; val: float64) {.gcsafe, locks: 0.}
proc frame139texture*(self: AnimatedTexture): Texture {.gcsafe, locks: 0.}
proc `frame139texture=`*(self: AnimatedTexture; val: Texture) {.gcsafe, locks: 0.}
proc frame14delaySec*(self: AnimatedTexture): float64 {.gcsafe, locks: 0.}
proc `frame14delaySec=`*(self: AnimatedTexture; val: float64) {.gcsafe, locks: 0.}
proc frame14texture*(self: AnimatedTexture): Texture {.gcsafe, locks: 0.}
proc `frame14texture=`*(self: AnimatedTexture; val: Texture) {.gcsafe, locks: 0.}
proc frame140delaySec*(self: AnimatedTexture): float64 {.gcsafe, locks: 0.}
proc `frame140delaySec=`*(self: AnimatedTexture; val: float64) {.gcsafe, locks: 0.}
proc frame140texture*(self: AnimatedTexture): Texture {.gcsafe, locks: 0.}
proc `frame140texture=`*(self: AnimatedTexture; val: Texture) {.gcsafe, locks: 0.}
proc frame141delaySec*(self: AnimatedTexture): float64 {.gcsafe, locks: 0.}
proc `frame141delaySec=`*(self: AnimatedTexture; val: float64) {.gcsafe, locks: 0.}
proc frame141texture*(self: AnimatedTexture): Texture {.gcsafe, locks: 0.}
proc `frame141texture=`*(self: AnimatedTexture; val: Texture) {.gcsafe, locks: 0.}
proc frame142delaySec*(self: AnimatedTexture): float64 {.gcsafe, locks: 0.}
proc `frame142delaySec=`*(self: AnimatedTexture; val: float64) {.gcsafe, locks: 0.}
proc frame142texture*(self: AnimatedTexture): Texture {.gcsafe, locks: 0.}
proc `frame142texture=`*(self: AnimatedTexture; val: Texture) {.gcsafe, locks: 0.}
proc frame143delaySec*(self: AnimatedTexture): float64 {.gcsafe, locks: 0.}
proc `frame143delaySec=`*(self: AnimatedTexture; val: float64) {.gcsafe, locks: 0.}
proc frame143texture*(self: AnimatedTexture): Texture {.gcsafe, locks: 0.}
proc `frame143texture=`*(self: AnimatedTexture; val: Texture) {.gcsafe, locks: 0.}
proc frame144delaySec*(self: AnimatedTexture): float64 {.gcsafe, locks: 0.}
proc `frame144delaySec=`*(self: AnimatedTexture; val: float64) {.gcsafe, locks: 0.}
proc frame144texture*(self: AnimatedTexture): Texture {.gcsafe, locks: 0.}
proc `frame144texture=`*(self: AnimatedTexture; val: Texture) {.gcsafe, locks: 0.}
proc frame145delaySec*(self: AnimatedTexture): float64 {.gcsafe, locks: 0.}
proc `frame145delaySec=`*(self: AnimatedTexture; val: float64) {.gcsafe, locks: 0.}
proc frame145texture*(self: AnimatedTexture): Texture {.gcsafe, locks: 0.}
proc `frame145texture=`*(self: AnimatedTexture; val: Texture) {.gcsafe, locks: 0.}
proc frame146delaySec*(self: AnimatedTexture): float64 {.gcsafe, locks: 0.}
proc `frame146delaySec=`*(self: AnimatedTexture; val: float64) {.gcsafe, locks: 0.}
proc frame146texture*(self: AnimatedTexture): Texture {.gcsafe, locks: 0.}
proc `frame146texture=`*(self: AnimatedTexture; val: Texture) {.gcsafe, locks: 0.}
proc frame147delaySec*(self: AnimatedTexture): float64 {.gcsafe, locks: 0.}
proc `frame147delaySec=`*(self: AnimatedTexture; val: float64) {.gcsafe, locks: 0.}
proc frame147texture*(self: AnimatedTexture): Texture {.gcsafe, locks: 0.}
proc `frame147texture=`*(self: AnimatedTexture; val: Texture) {.gcsafe, locks: 0.}
proc frame148delaySec*(self: AnimatedTexture): float64 {.gcsafe, locks: 0.}
proc `frame148delaySec=`*(self: AnimatedTexture; val: float64) {.gcsafe, locks: 0.}
proc frame148texture*(self: AnimatedTexture): Texture {.gcsafe, locks: 0.}
proc `frame148texture=`*(self: AnimatedTexture; val: Texture) {.gcsafe, locks: 0.}
proc frame149delaySec*(self: AnimatedTexture): float64 {.gcsafe, locks: 0.}
proc `frame149delaySec=`*(self: AnimatedTexture; val: float64) {.gcsafe, locks: 0.}
proc frame149texture*(self: AnimatedTexture): Texture {.gcsafe, locks: 0.}
proc `frame149texture=`*(self: AnimatedTexture; val: Texture) {.gcsafe, locks: 0.}
proc frame15delaySec*(self: AnimatedTexture): float64 {.gcsafe, locks: 0.}
proc `frame15delaySec=`*(self: AnimatedTexture; val: float64) {.gcsafe, locks: 0.}
proc frame15texture*(self: AnimatedTexture): Texture {.gcsafe, locks: 0.}
proc `frame15texture=`*(self: AnimatedTexture; val: Texture) {.gcsafe, locks: 0.}
proc frame150delaySec*(self: AnimatedTexture): float64 {.gcsafe, locks: 0.}
proc `frame150delaySec=`*(self: AnimatedTexture; val: float64) {.gcsafe, locks: 0.}
proc frame150texture*(self: AnimatedTexture): Texture {.gcsafe, locks: 0.}
proc `frame150texture=`*(self: AnimatedTexture; val: Texture) {.gcsafe, locks: 0.}
proc frame151delaySec*(self: AnimatedTexture): float64 {.gcsafe, locks: 0.}
proc `frame151delaySec=`*(self: AnimatedTexture; val: float64) {.gcsafe, locks: 0.}
proc frame151texture*(self: AnimatedTexture): Texture {.gcsafe, locks: 0.}
proc `frame151texture=`*(self: AnimatedTexture; val: Texture) {.gcsafe, locks: 0.}
proc frame152delaySec*(self: AnimatedTexture): float64 {.gcsafe, locks: 0.}
proc `frame152delaySec=`*(self: AnimatedTexture; val: float64) {.gcsafe, locks: 0.}
proc frame152texture*(self: AnimatedTexture): Texture {.gcsafe, locks: 0.}
proc `frame152texture=`*(self: AnimatedTexture; val: Texture) {.gcsafe, locks: 0.}
proc frame153delaySec*(self: AnimatedTexture): float64 {.gcsafe, locks: 0.}
proc `frame153delaySec=`*(self: AnimatedTexture; val: float64) {.gcsafe, locks: 0.}
proc frame153texture*(self: AnimatedTexture): Texture {.gcsafe, locks: 0.}
proc `frame153texture=`*(self: AnimatedTexture; val: Texture) {.gcsafe, locks: 0.}
proc frame154delaySec*(self: AnimatedTexture): float64 {.gcsafe, locks: 0.}
proc `frame154delaySec=`*(self: AnimatedTexture; val: float64) {.gcsafe, locks: 0.}
proc frame154texture*(self: AnimatedTexture): Texture {.gcsafe, locks: 0.}
proc `frame154texture=`*(self: AnimatedTexture; val: Texture) {.gcsafe, locks: 0.}
proc frame155delaySec*(self: AnimatedTexture): float64 {.gcsafe, locks: 0.}
proc `frame155delaySec=`*(self: AnimatedTexture; val: float64) {.gcsafe, locks: 0.}
proc frame155texture*(self: AnimatedTexture): Texture {.gcsafe, locks: 0.}
proc `frame155texture=`*(self: AnimatedTexture; val: Texture) {.gcsafe, locks: 0.}
proc frame156delaySec*(self: AnimatedTexture): float64 {.gcsafe, locks: 0.}
proc `frame156delaySec=`*(self: AnimatedTexture; val: float64) {.gcsafe, locks: 0.}
proc frame156texture*(self: AnimatedTexture): Texture {.gcsafe, locks: 0.}
proc `frame156texture=`*(self: AnimatedTexture; val: Texture) {.gcsafe, locks: 0.}
proc frame157delaySec*(self: AnimatedTexture): float64 {.gcsafe, locks: 0.}
proc `frame157delaySec=`*(self: AnimatedTexture; val: float64) {.gcsafe, locks: 0.}
proc frame157texture*(self: AnimatedTexture): Texture {.gcsafe, locks: 0.}
proc `frame157texture=`*(self: AnimatedTexture; val: Texture) {.gcsafe, locks: 0.}
proc frame158delaySec*(self: AnimatedTexture): float64 {.gcsafe, locks: 0.}
proc `frame158delaySec=`*(self: AnimatedTexture; val: float64) {.gcsafe, locks: 0.}
proc frame158texture*(self: AnimatedTexture): Texture {.gcsafe, locks: 0.}
proc `frame158texture=`*(self: AnimatedTexture; val: Texture) {.gcsafe, locks: 0.}
proc frame159delaySec*(self: AnimatedTexture): float64 {.gcsafe, locks: 0.}
proc `frame159delaySec=`*(self: AnimatedTexture; val: float64) {.gcsafe, locks: 0.}
proc frame159texture*(self: AnimatedTexture): Texture {.gcsafe, locks: 0.}
proc `frame159texture=`*(self: AnimatedTexture; val: Texture) {.gcsafe, locks: 0.}
proc frame16delaySec*(self: AnimatedTexture): float64 {.gcsafe, locks: 0.}
proc `frame16delaySec=`*(self: AnimatedTexture; val: float64) {.gcsafe, locks: 0.}
proc frame16texture*(self: AnimatedTexture): Texture {.gcsafe, locks: 0.}
proc `frame16texture=`*(self: AnimatedTexture; val: Texture) {.gcsafe, locks: 0.}
proc frame160delaySec*(self: AnimatedTexture): float64 {.gcsafe, locks: 0.}
proc `frame160delaySec=`*(self: AnimatedTexture; val: float64) {.gcsafe, locks: 0.}
proc frame160texture*(self: AnimatedTexture): Texture {.gcsafe, locks: 0.}
proc `frame160texture=`*(self: AnimatedTexture; val: Texture) {.gcsafe, locks: 0.}
proc frame161delaySec*(self: AnimatedTexture): float64 {.gcsafe, locks: 0.}
proc `frame161delaySec=`*(self: AnimatedTexture; val: float64) {.gcsafe, locks: 0.}
proc frame161texture*(self: AnimatedTexture): Texture {.gcsafe, locks: 0.}
proc `frame161texture=`*(self: AnimatedTexture; val: Texture) {.gcsafe, locks: 0.}
proc frame162delaySec*(self: AnimatedTexture): float64 {.gcsafe, locks: 0.}
proc `frame162delaySec=`*(self: AnimatedTexture; val: float64) {.gcsafe, locks: 0.}
proc frame162texture*(self: AnimatedTexture): Texture {.gcsafe, locks: 0.}
proc `frame162texture=`*(self: AnimatedTexture; val: Texture) {.gcsafe, locks: 0.}
proc frame163delaySec*(self: AnimatedTexture): float64 {.gcsafe, locks: 0.}
proc `frame163delaySec=`*(self: AnimatedTexture; val: float64) {.gcsafe, locks: 0.}
proc frame163texture*(self: AnimatedTexture): Texture {.gcsafe, locks: 0.}
proc `frame163texture=`*(self: AnimatedTexture; val: Texture) {.gcsafe, locks: 0.}
proc frame164delaySec*(self: AnimatedTexture): float64 {.gcsafe, locks: 0.}
proc `frame164delaySec=`*(self: AnimatedTexture; val: float64) {.gcsafe, locks: 0.}
proc frame164texture*(self: AnimatedTexture): Texture {.gcsafe, locks: 0.}
proc `frame164texture=`*(self: AnimatedTexture; val: Texture) {.gcsafe, locks: 0.}
proc frame165delaySec*(self: AnimatedTexture): float64 {.gcsafe, locks: 0.}
proc `frame165delaySec=`*(self: AnimatedTexture; val: float64) {.gcsafe, locks: 0.}
proc frame165texture*(self: AnimatedTexture): Texture {.gcsafe, locks: 0.}
proc `frame165texture=`*(self: AnimatedTexture; val: Texture) {.gcsafe, locks: 0.}
proc frame166delaySec*(self: AnimatedTexture): float64 {.gcsafe, locks: 0.}
proc `frame166delaySec=`*(self: AnimatedTexture; val: float64) {.gcsafe, locks: 0.}
proc frame166texture*(self: AnimatedTexture): Texture {.gcsafe, locks: 0.}
proc `frame166texture=`*(self: AnimatedTexture; val: Texture) {.gcsafe, locks: 0.}
proc frame167delaySec*(self: AnimatedTexture): float64 {.gcsafe, locks: 0.}
proc `frame167delaySec=`*(self: AnimatedTexture; val: float64) {.gcsafe, locks: 0.}
proc frame167texture*(self: AnimatedTexture): Texture {.gcsafe, locks: 0.}
proc `frame167texture=`*(self: AnimatedTexture; val: Texture) {.gcsafe, locks: 0.}
proc frame168delaySec*(self: AnimatedTexture): float64 {.gcsafe, locks: 0.}
proc `frame168delaySec=`*(self: AnimatedTexture; val: float64) {.gcsafe, locks: 0.}
proc frame168texture*(self: AnimatedTexture): Texture {.gcsafe, locks: 0.}
proc `frame168texture=`*(self: AnimatedTexture; val: Texture) {.gcsafe, locks: 0.}
proc frame169delaySec*(self: AnimatedTexture): float64 {.gcsafe, locks: 0.}
proc `frame169delaySec=`*(self: AnimatedTexture; val: float64) {.gcsafe, locks: 0.}
proc frame169texture*(self: AnimatedTexture): Texture {.gcsafe, locks: 0.}
proc `frame169texture=`*(self: AnimatedTexture; val: Texture) {.gcsafe, locks: 0.}
proc frame17delaySec*(self: AnimatedTexture): float64 {.gcsafe, locks: 0.}
proc `frame17delaySec=`*(self: AnimatedTexture; val: float64) {.gcsafe, locks: 0.}
proc frame17texture*(self: AnimatedTexture): Texture {.gcsafe, locks: 0.}
proc `frame17texture=`*(self: AnimatedTexture; val: Texture) {.gcsafe, locks: 0.}
proc frame170delaySec*(self: AnimatedTexture): float64 {.gcsafe, locks: 0.}
proc `frame170delaySec=`*(self: AnimatedTexture; val: float64) {.gcsafe, locks: 0.}
proc frame170texture*(self: AnimatedTexture): Texture {.gcsafe, locks: 0.}
proc `frame170texture=`*(self: AnimatedTexture; val: Texture) {.gcsafe, locks: 0.}
proc frame171delaySec*(self: AnimatedTexture): float64 {.gcsafe, locks: 0.}
proc `frame171delaySec=`*(self: AnimatedTexture; val: float64) {.gcsafe, locks: 0.}
proc frame171texture*(self: AnimatedTexture): Texture {.gcsafe, locks: 0.}
proc `frame171texture=`*(self: AnimatedTexture; val: Texture) {.gcsafe, locks: 0.}
proc frame172delaySec*(self: AnimatedTexture): float64 {.gcsafe, locks: 0.}
proc `frame172delaySec=`*(self: AnimatedTexture; val: float64) {.gcsafe, locks: 0.}
proc frame172texture*(self: AnimatedTexture): Texture {.gcsafe, locks: 0.}
proc `frame172texture=`*(self: AnimatedTexture; val: Texture) {.gcsafe, locks: 0.}
proc frame173delaySec*(self: AnimatedTexture): float64 {.gcsafe, locks: 0.}
proc `frame173delaySec=`*(self: AnimatedTexture; val: float64) {.gcsafe, locks: 0.}
proc frame173texture*(self: AnimatedTexture): Texture {.gcsafe, locks: 0.}
proc `frame173texture=`*(self: AnimatedTexture; val: Texture) {.gcsafe, locks: 0.}
proc frame174delaySec*(self: AnimatedTexture): float64 {.gcsafe, locks: 0.}
proc `frame174delaySec=`*(self: AnimatedTexture; val: float64) {.gcsafe, locks: 0.}
proc frame174texture*(self: AnimatedTexture): Texture {.gcsafe, locks: 0.}
proc `frame174texture=`*(self: AnimatedTexture; val: Texture) {.gcsafe, locks: 0.}
proc frame175delaySec*(self: AnimatedTexture): float64 {.gcsafe, locks: 0.}
proc `frame175delaySec=`*(self: AnimatedTexture; val: float64) {.gcsafe, locks: 0.}
proc frame175texture*(self: AnimatedTexture): Texture {.gcsafe, locks: 0.}
proc `frame175texture=`*(self: AnimatedTexture; val: Texture) {.gcsafe, locks: 0.}
proc frame176delaySec*(self: AnimatedTexture): float64 {.gcsafe, locks: 0.}
proc `frame176delaySec=`*(self: AnimatedTexture; val: float64) {.gcsafe, locks: 0.}
proc frame176texture*(self: AnimatedTexture): Texture {.gcsafe, locks: 0.}
proc `frame176texture=`*(self: AnimatedTexture; val: Texture) {.gcsafe, locks: 0.}
proc frame177delaySec*(self: AnimatedTexture): float64 {.gcsafe, locks: 0.}
proc `frame177delaySec=`*(self: AnimatedTexture; val: float64) {.gcsafe, locks: 0.}
proc frame177texture*(self: AnimatedTexture): Texture {.gcsafe, locks: 0.}
proc `frame177texture=`*(self: AnimatedTexture; val: Texture) {.gcsafe, locks: 0.}
proc frame178delaySec*(self: AnimatedTexture): float64 {.gcsafe, locks: 0.}
proc `frame178delaySec=`*(self: AnimatedTexture; val: float64) {.gcsafe, locks: 0.}
proc frame178texture*(self: AnimatedTexture): Texture {.gcsafe, locks: 0.}
proc `frame178texture=`*(self: AnimatedTexture; val: Texture) {.gcsafe, locks: 0.}
proc frame179delaySec*(self: AnimatedTexture): float64 {.gcsafe, locks: 0.}
proc `frame179delaySec=`*(self: AnimatedTexture; val: float64) {.gcsafe, locks: 0.}
proc frame179texture*(self: AnimatedTexture): Texture {.gcsafe, locks: 0.}
proc `frame179texture=`*(self: AnimatedTexture; val: Texture) {.gcsafe, locks: 0.}
proc frame18delaySec*(self: AnimatedTexture): float64 {.gcsafe, locks: 0.}
proc `frame18delaySec=`*(self: AnimatedTexture; val: float64) {.gcsafe, locks: 0.}
proc frame18texture*(self: AnimatedTexture): Texture {.gcsafe, locks: 0.}
proc `frame18texture=`*(self: AnimatedTexture; val: Texture) {.gcsafe, locks: 0.}
proc frame180delaySec*(self: AnimatedTexture): float64 {.gcsafe, locks: 0.}
proc `frame180delaySec=`*(self: AnimatedTexture; val: float64) {.gcsafe, locks: 0.}
proc frame180texture*(self: AnimatedTexture): Texture {.gcsafe, locks: 0.}
proc `frame180texture=`*(self: AnimatedTexture; val: Texture) {.gcsafe, locks: 0.}
proc frame181delaySec*(self: AnimatedTexture): float64 {.gcsafe, locks: 0.}
proc `frame181delaySec=`*(self: AnimatedTexture; val: float64) {.gcsafe, locks: 0.}
proc frame181texture*(self: AnimatedTexture): Texture {.gcsafe, locks: 0.}
proc `frame181texture=`*(self: AnimatedTexture; val: Texture) {.gcsafe, locks: 0.}
proc frame182delaySec*(self: AnimatedTexture): float64 {.gcsafe, locks: 0.}
proc `frame182delaySec=`*(self: AnimatedTexture; val: float64) {.gcsafe, locks: 0.}
proc frame182texture*(self: AnimatedTexture): Texture {.gcsafe, locks: 0.}
proc `frame182texture=`*(self: AnimatedTexture; val: Texture) {.gcsafe, locks: 0.}
proc frame183delaySec*(self: AnimatedTexture): float64 {.gcsafe, locks: 0.}
proc `frame183delaySec=`*(self: AnimatedTexture; val: float64) {.gcsafe, locks: 0.}
proc frame183texture*(self: AnimatedTexture): Texture {.gcsafe, locks: 0.}
proc `frame183texture=`*(self: AnimatedTexture; val: Texture) {.gcsafe, locks: 0.}
proc frame184delaySec*(self: AnimatedTexture): float64 {.gcsafe, locks: 0.}
proc `frame184delaySec=`*(self: AnimatedTexture; val: float64) {.gcsafe, locks: 0.}
proc frame184texture*(self: AnimatedTexture): Texture {.gcsafe, locks: 0.}
proc `frame184texture=`*(self: AnimatedTexture; val: Texture) {.gcsafe, locks: 0.}
proc frame185delaySec*(self: AnimatedTexture): float64 {.gcsafe, locks: 0.}
proc `frame185delaySec=`*(self: AnimatedTexture; val: float64) {.gcsafe, locks: 0.}
proc frame185texture*(self: AnimatedTexture): Texture {.gcsafe, locks: 0.}
proc `frame185texture=`*(self: AnimatedTexture; val: Texture) {.gcsafe, locks: 0.}
proc frame186delaySec*(self: AnimatedTexture): float64 {.gcsafe, locks: 0.}
proc `frame186delaySec=`*(self: AnimatedTexture; val: float64) {.gcsafe, locks: 0.}
proc frame186texture*(self: AnimatedTexture): Texture {.gcsafe, locks: 0.}
proc `frame186texture=`*(self: AnimatedTexture; val: Texture) {.gcsafe, locks: 0.}
proc frame187delaySec*(self: AnimatedTexture): float64 {.gcsafe, locks: 0.}
proc `frame187delaySec=`*(self: AnimatedTexture; val: float64) {.gcsafe, locks: 0.}
proc frame187texture*(self: AnimatedTexture): Texture {.gcsafe, locks: 0.}
proc `frame187texture=`*(self: AnimatedTexture; val: Texture) {.gcsafe, locks: 0.}
proc frame188delaySec*(self: AnimatedTexture): float64 {.gcsafe, locks: 0.}
proc `frame188delaySec=`*(self: AnimatedTexture; val: float64) {.gcsafe, locks: 0.}
proc frame188texture*(self: AnimatedTexture): Texture {.gcsafe, locks: 0.}
proc `frame188texture=`*(self: AnimatedTexture; val: Texture) {.gcsafe, locks: 0.}
proc frame189delaySec*(self: AnimatedTexture): float64 {.gcsafe, locks: 0.}
proc `frame189delaySec=`*(self: AnimatedTexture; val: float64) {.gcsafe, locks: 0.}
proc frame189texture*(self: AnimatedTexture): Texture {.gcsafe, locks: 0.}
proc `frame189texture=`*(self: AnimatedTexture; val: Texture) {.gcsafe, locks: 0.}
proc frame19delaySec*(self: AnimatedTexture): float64 {.gcsafe, locks: 0.}
proc `frame19delaySec=`*(self: AnimatedTexture; val: float64) {.gcsafe, locks: 0.}
proc frame19texture*(self: AnimatedTexture): Texture {.gcsafe, locks: 0.}
proc `frame19texture=`*(self: AnimatedTexture; val: Texture) {.gcsafe, locks: 0.}
proc frame190delaySec*(self: AnimatedTexture): float64 {.gcsafe, locks: 0.}
proc `frame190delaySec=`*(self: AnimatedTexture; val: float64) {.gcsafe, locks: 0.}
proc frame190texture*(self: AnimatedTexture): Texture {.gcsafe, locks: 0.}
proc `frame190texture=`*(self: AnimatedTexture; val: Texture) {.gcsafe, locks: 0.}
proc frame191delaySec*(self: AnimatedTexture): float64 {.gcsafe, locks: 0.}
proc `frame191delaySec=`*(self: AnimatedTexture; val: float64) {.gcsafe, locks: 0.}
proc frame191texture*(self: AnimatedTexture): Texture {.gcsafe, locks: 0.}
proc `frame191texture=`*(self: AnimatedTexture; val: Texture) {.gcsafe, locks: 0.}
proc frame192delaySec*(self: AnimatedTexture): float64 {.gcsafe, locks: 0.}
proc `frame192delaySec=`*(self: AnimatedTexture; val: float64) {.gcsafe, locks: 0.}
proc frame192texture*(self: AnimatedTexture): Texture {.gcsafe, locks: 0.}
proc `frame192texture=`*(self: AnimatedTexture; val: Texture) {.gcsafe, locks: 0.}
proc frame193delaySec*(self: AnimatedTexture): float64 {.gcsafe, locks: 0.}
proc `frame193delaySec=`*(self: AnimatedTexture; val: float64) {.gcsafe, locks: 0.}
proc frame193texture*(self: AnimatedTexture): Texture {.gcsafe, locks: 0.}
proc `frame193texture=`*(self: AnimatedTexture; val: Texture) {.gcsafe, locks: 0.}
proc frame194delaySec*(self: AnimatedTexture): float64 {.gcsafe, locks: 0.}
proc `frame194delaySec=`*(self: AnimatedTexture; val: float64) {.gcsafe, locks: 0.}
proc frame194texture*(self: AnimatedTexture): Texture {.gcsafe, locks: 0.}
proc `frame194texture=`*(self: AnimatedTexture; val: Texture) {.gcsafe, locks: 0.}
proc frame195delaySec*(self: AnimatedTexture): float64 {.gcsafe, locks: 0.}
proc `frame195delaySec=`*(self: AnimatedTexture; val: float64) {.gcsafe, locks: 0.}
proc frame195texture*(self: AnimatedTexture): Texture {.gcsafe, locks: 0.}
proc `frame195texture=`*(self: AnimatedTexture; val: Texture) {.gcsafe, locks: 0.}
proc frame196delaySec*(self: AnimatedTexture): float64 {.gcsafe, locks: 0.}
proc `frame196delaySec=`*(self: AnimatedTexture; val: float64) {.gcsafe, locks: 0.}
proc frame196texture*(self: AnimatedTexture): Texture {.gcsafe, locks: 0.}
proc `frame196texture=`*(self: AnimatedTexture; val: Texture) {.gcsafe, locks: 0.}
proc frame197delaySec*(self: AnimatedTexture): float64 {.gcsafe, locks: 0.}
proc `frame197delaySec=`*(self: AnimatedTexture; val: float64) {.gcsafe, locks: 0.}
proc frame197texture*(self: AnimatedTexture): Texture {.gcsafe, locks: 0.}
proc `frame197texture=`*(self: AnimatedTexture; val: Texture) {.gcsafe, locks: 0.}
proc frame198delaySec*(self: AnimatedTexture): float64 {.gcsafe, locks: 0.}
proc `frame198delaySec=`*(self: AnimatedTexture; val: float64) {.gcsafe, locks: 0.}
proc frame198texture*(self: AnimatedTexture): Texture {.gcsafe, locks: 0.}
proc `frame198texture=`*(self: AnimatedTexture; val: Texture) {.gcsafe, locks: 0.}
proc frame199delaySec*(self: AnimatedTexture): float64 {.gcsafe, locks: 0.}
proc `frame199delaySec=`*(self: AnimatedTexture; val: float64) {.gcsafe, locks: 0.}
proc frame199texture*(self: AnimatedTexture): Texture {.gcsafe, locks: 0.}
proc `frame199texture=`*(self: AnimatedTexture; val: Texture) {.gcsafe, locks: 0.}
proc frame2delaySec*(self: AnimatedTexture): float64 {.gcsafe, locks: 0.}
proc `frame2delaySec=`*(self: AnimatedTexture; val: float64) {.gcsafe, locks: 0.}
proc frame2texture*(self: AnimatedTexture): Texture {.gcsafe, locks: 0.}
proc `frame2texture=`*(self: AnimatedTexture; val: Texture) {.gcsafe, locks: 0.}
proc frame20delaySec*(self: AnimatedTexture): float64 {.gcsafe, locks: 0.}
proc `frame20delaySec=`*(self: AnimatedTexture; val: float64) {.gcsafe, locks: 0.}
proc frame20texture*(self: AnimatedTexture): Texture {.gcsafe, locks: 0.}
proc `frame20texture=`*(self: AnimatedTexture; val: Texture) {.gcsafe, locks: 0.}
proc frame200delaySec*(self: AnimatedTexture): float64 {.gcsafe, locks: 0.}
proc `frame200delaySec=`*(self: AnimatedTexture; val: float64) {.gcsafe, locks: 0.}
proc frame200texture*(self: AnimatedTexture): Texture {.gcsafe, locks: 0.}
proc `frame200texture=`*(self: AnimatedTexture; val: Texture) {.gcsafe, locks: 0.}
proc frame201delaySec*(self: AnimatedTexture): float64 {.gcsafe, locks: 0.}
proc `frame201delaySec=`*(self: AnimatedTexture; val: float64) {.gcsafe, locks: 0.}
proc frame201texture*(self: AnimatedTexture): Texture {.gcsafe, locks: 0.}
proc `frame201texture=`*(self: AnimatedTexture; val: Texture) {.gcsafe, locks: 0.}
proc frame202delaySec*(self: AnimatedTexture): float64 {.gcsafe, locks: 0.}
proc `frame202delaySec=`*(self: AnimatedTexture; val: float64) {.gcsafe, locks: 0.}
proc frame202texture*(self: AnimatedTexture): Texture {.gcsafe, locks: 0.}
proc `frame202texture=`*(self: AnimatedTexture; val: Texture) {.gcsafe, locks: 0.}
proc frame203delaySec*(self: AnimatedTexture): float64 {.gcsafe, locks: 0.}
proc `frame203delaySec=`*(self: AnimatedTexture; val: float64) {.gcsafe, locks: 0.}
proc frame203texture*(self: AnimatedTexture): Texture {.gcsafe, locks: 0.}
proc `frame203texture=`*(self: AnimatedTexture; val: Texture) {.gcsafe, locks: 0.}
proc frame204delaySec*(self: AnimatedTexture): float64 {.gcsafe, locks: 0.}
proc `frame204delaySec=`*(self: AnimatedTexture; val: float64) {.gcsafe, locks: 0.}
proc frame204texture*(self: AnimatedTexture): Texture {.gcsafe, locks: 0.}
proc `frame204texture=`*(self: AnimatedTexture; val: Texture) {.gcsafe, locks: 0.}
proc frame205delaySec*(self: AnimatedTexture): float64 {.gcsafe, locks: 0.}
proc `frame205delaySec=`*(self: AnimatedTexture; val: float64) {.gcsafe, locks: 0.}
proc frame205texture*(self: AnimatedTexture): Texture {.gcsafe, locks: 0.}
proc `frame205texture=`*(self: AnimatedTexture; val: Texture) {.gcsafe, locks: 0.}
proc frame206delaySec*(self: AnimatedTexture): float64 {.gcsafe, locks: 0.}
proc `frame206delaySec=`*(self: AnimatedTexture; val: float64) {.gcsafe, locks: 0.}
proc frame206texture*(self: AnimatedTexture): Texture {.gcsafe, locks: 0.}
proc `frame206texture=`*(self: AnimatedTexture; val: Texture) {.gcsafe, locks: 0.}
proc frame207delaySec*(self: AnimatedTexture): float64 {.gcsafe, locks: 0.}
proc `frame207delaySec=`*(self: AnimatedTexture; val: float64) {.gcsafe, locks: 0.}
proc frame207texture*(self: AnimatedTexture): Texture {.gcsafe, locks: 0.}
proc `frame207texture=`*(self: AnimatedTexture; val: Texture) {.gcsafe, locks: 0.}
proc frame208delaySec*(self: AnimatedTexture): float64 {.gcsafe, locks: 0.}
proc `frame208delaySec=`*(self: AnimatedTexture; val: float64) {.gcsafe, locks: 0.}
proc frame208texture*(self: AnimatedTexture): Texture {.gcsafe, locks: 0.}
proc `frame208texture=`*(self: AnimatedTexture; val: Texture) {.gcsafe, locks: 0.}
proc frame209delaySec*(self: AnimatedTexture): float64 {.gcsafe, locks: 0.}
proc `frame209delaySec=`*(self: AnimatedTexture; val: float64) {.gcsafe, locks: 0.}
proc frame209texture*(self: AnimatedTexture): Texture {.gcsafe, locks: 0.}
proc `frame209texture=`*(self: AnimatedTexture; val: Texture) {.gcsafe, locks: 0.}
proc frame21delaySec*(self: AnimatedTexture): float64 {.gcsafe, locks: 0.}
proc `frame21delaySec=`*(self: AnimatedTexture; val: float64) {.gcsafe, locks: 0.}
proc frame21texture*(self: AnimatedTexture): Texture {.gcsafe, locks: 0.}
proc `frame21texture=`*(self: AnimatedTexture; val: Texture) {.gcsafe, locks: 0.}
proc frame210delaySec*(self: AnimatedTexture): float64 {.gcsafe, locks: 0.}
proc `frame210delaySec=`*(self: AnimatedTexture; val: float64) {.gcsafe, locks: 0.}
proc frame210texture*(self: AnimatedTexture): Texture {.gcsafe, locks: 0.}
proc `frame210texture=`*(self: AnimatedTexture; val: Texture) {.gcsafe, locks: 0.}
proc frame211delaySec*(self: AnimatedTexture): float64 {.gcsafe, locks: 0.}
proc `frame211delaySec=`*(self: AnimatedTexture; val: float64) {.gcsafe, locks: 0.}
proc frame211texture*(self: AnimatedTexture): Texture {.gcsafe, locks: 0.}
proc `frame211texture=`*(self: AnimatedTexture; val: Texture) {.gcsafe, locks: 0.}
proc frame212delaySec*(self: AnimatedTexture): float64 {.gcsafe, locks: 0.}
proc `frame212delaySec=`*(self: AnimatedTexture; val: float64) {.gcsafe, locks: 0.}
proc frame212texture*(self: AnimatedTexture): Texture {.gcsafe, locks: 0.}
proc `frame212texture=`*(self: AnimatedTexture; val: Texture) {.gcsafe, locks: 0.}
proc frame213delaySec*(self: AnimatedTexture): float64 {.gcsafe, locks: 0.}
proc `frame213delaySec=`*(self: AnimatedTexture; val: float64) {.gcsafe, locks: 0.}
proc frame213texture*(self: AnimatedTexture): Texture {.gcsafe, locks: 0.}
proc `frame213texture=`*(self: AnimatedTexture; val: Texture) {.gcsafe, locks: 0.}
proc frame214delaySec*(self: AnimatedTexture): float64 {.gcsafe, locks: 0.}
proc `frame214delaySec=`*(self: AnimatedTexture; val: float64) {.gcsafe, locks: 0.}
proc frame214texture*(self: AnimatedTexture): Texture {.gcsafe, locks: 0.}
proc `frame214texture=`*(self: AnimatedTexture; val: Texture) {.gcsafe, locks: 0.}
proc frame215delaySec*(self: AnimatedTexture): float64 {.gcsafe, locks: 0.}
proc `frame215delaySec=`*(self: AnimatedTexture; val: float64) {.gcsafe, locks: 0.}
proc frame215texture*(self: AnimatedTexture): Texture {.gcsafe, locks: 0.}
proc `frame215texture=`*(self: AnimatedTexture; val: Texture) {.gcsafe, locks: 0.}
proc frame216delaySec*(self: AnimatedTexture): float64 {.gcsafe, locks: 0.}
proc `frame216delaySec=`*(self: AnimatedTexture; val: float64) {.gcsafe, locks: 0.}
proc frame216texture*(self: AnimatedTexture): Texture {.gcsafe, locks: 0.}
proc `frame216texture=`*(self: AnimatedTexture; val: Texture) {.gcsafe, locks: 0.}
proc frame217delaySec*(self: AnimatedTexture): float64 {.gcsafe, locks: 0.}
proc `frame217delaySec=`*(self: AnimatedTexture; val: float64) {.gcsafe, locks: 0.}
proc frame217texture*(self: AnimatedTexture): Texture {.gcsafe, locks: 0.}
proc `frame217texture=`*(self: AnimatedTexture; val: Texture) {.gcsafe, locks: 0.}
proc frame218delaySec*(self: AnimatedTexture): float64 {.gcsafe, locks: 0.}
proc `frame218delaySec=`*(self: AnimatedTexture; val: float64) {.gcsafe, locks: 0.}
proc frame218texture*(self: AnimatedTexture): Texture {.gcsafe, locks: 0.}
proc `frame218texture=`*(self: AnimatedTexture; val: Texture) {.gcsafe, locks: 0.}
proc frame219delaySec*(self: AnimatedTexture): float64 {.gcsafe, locks: 0.}
proc `frame219delaySec=`*(self: AnimatedTexture; val: float64) {.gcsafe, locks: 0.}
proc frame219texture*(self: AnimatedTexture): Texture {.gcsafe, locks: 0.}
proc `frame219texture=`*(self: AnimatedTexture; val: Texture) {.gcsafe, locks: 0.}
proc frame22delaySec*(self: AnimatedTexture): float64 {.gcsafe, locks: 0.}
proc `frame22delaySec=`*(self: AnimatedTexture; val: float64) {.gcsafe, locks: 0.}
proc frame22texture*(self: AnimatedTexture): Texture {.gcsafe, locks: 0.}
proc `frame22texture=`*(self: AnimatedTexture; val: Texture) {.gcsafe, locks: 0.}
proc frame220delaySec*(self: AnimatedTexture): float64 {.gcsafe, locks: 0.}
proc `frame220delaySec=`*(self: AnimatedTexture; val: float64) {.gcsafe, locks: 0.}
proc frame220texture*(self: AnimatedTexture): Texture {.gcsafe, locks: 0.}
proc `frame220texture=`*(self: AnimatedTexture; val: Texture) {.gcsafe, locks: 0.}
proc frame221delaySec*(self: AnimatedTexture): float64 {.gcsafe, locks: 0.}
proc `frame221delaySec=`*(self: AnimatedTexture; val: float64) {.gcsafe, locks: 0.}
proc frame221texture*(self: AnimatedTexture): Texture {.gcsafe, locks: 0.}
proc `frame221texture=`*(self: AnimatedTexture; val: Texture) {.gcsafe, locks: 0.}
proc frame222delaySec*(self: AnimatedTexture): float64 {.gcsafe, locks: 0.}
proc `frame222delaySec=`*(self: AnimatedTexture; val: float64) {.gcsafe, locks: 0.}
proc frame222texture*(self: AnimatedTexture): Texture {.gcsafe, locks: 0.}
proc `frame222texture=`*(self: AnimatedTexture; val: Texture) {.gcsafe, locks: 0.}
proc frame223delaySec*(self: AnimatedTexture): float64 {.gcsafe, locks: 0.}
proc `frame223delaySec=`*(self: AnimatedTexture; val: float64) {.gcsafe, locks: 0.}
proc frame223texture*(self: AnimatedTexture): Texture {.gcsafe, locks: 0.}
proc `frame223texture=`*(self: AnimatedTexture; val: Texture) {.gcsafe, locks: 0.}
proc frame224delaySec*(self: AnimatedTexture): float64 {.gcsafe, locks: 0.}
proc `frame224delaySec=`*(self: AnimatedTexture; val: float64) {.gcsafe, locks: 0.}
proc frame224texture*(self: AnimatedTexture): Texture {.gcsafe, locks: 0.}
proc `frame224texture=`*(self: AnimatedTexture; val: Texture) {.gcsafe, locks: 0.}
proc frame225delaySec*(self: AnimatedTexture): float64 {.gcsafe, locks: 0.}
proc `frame225delaySec=`*(self: AnimatedTexture; val: float64) {.gcsafe, locks: 0.}
proc frame225texture*(self: AnimatedTexture): Texture {.gcsafe, locks: 0.}
proc `frame225texture=`*(self: AnimatedTexture; val: Texture) {.gcsafe, locks: 0.}
proc frame226delaySec*(self: AnimatedTexture): float64 {.gcsafe, locks: 0.}
proc `frame226delaySec=`*(self: AnimatedTexture; val: float64) {.gcsafe, locks: 0.}
proc frame226texture*(self: AnimatedTexture): Texture {.gcsafe, locks: 0.}
proc `frame226texture=`*(self: AnimatedTexture; val: Texture) {.gcsafe, locks: 0.}
proc frame227delaySec*(self: AnimatedTexture): float64 {.gcsafe, locks: 0.}
proc `frame227delaySec=`*(self: AnimatedTexture; val: float64) {.gcsafe, locks: 0.}
proc frame227texture*(self: AnimatedTexture): Texture {.gcsafe, locks: 0.}
proc `frame227texture=`*(self: AnimatedTexture; val: Texture) {.gcsafe, locks: 0.}
proc frame228delaySec*(self: AnimatedTexture): float64 {.gcsafe, locks: 0.}
proc `frame228delaySec=`*(self: AnimatedTexture; val: float64) {.gcsafe, locks: 0.}
proc frame228texture*(self: AnimatedTexture): Texture {.gcsafe, locks: 0.}
proc `frame228texture=`*(self: AnimatedTexture; val: Texture) {.gcsafe, locks: 0.}
proc frame229delaySec*(self: AnimatedTexture): float64 {.gcsafe, locks: 0.}
proc `frame229delaySec=`*(self: AnimatedTexture; val: float64) {.gcsafe, locks: 0.}
proc frame229texture*(self: AnimatedTexture): Texture {.gcsafe, locks: 0.}
proc `frame229texture=`*(self: AnimatedTexture; val: Texture) {.gcsafe, locks: 0.}
proc frame23delaySec*(self: AnimatedTexture): float64 {.gcsafe, locks: 0.}
proc `frame23delaySec=`*(self: AnimatedTexture; val: float64) {.gcsafe, locks: 0.}
proc frame23texture*(self: AnimatedTexture): Texture {.gcsafe, locks: 0.}
proc `frame23texture=`*(self: AnimatedTexture; val: Texture) {.gcsafe, locks: 0.}
proc frame230delaySec*(self: AnimatedTexture): float64 {.gcsafe, locks: 0.}
proc `frame230delaySec=`*(self: AnimatedTexture; val: float64) {.gcsafe, locks: 0.}
proc frame230texture*(self: AnimatedTexture): Texture {.gcsafe, locks: 0.}
proc `frame230texture=`*(self: AnimatedTexture; val: Texture) {.gcsafe, locks: 0.}
proc frame231delaySec*(self: AnimatedTexture): float64 {.gcsafe, locks: 0.}
proc `frame231delaySec=`*(self: AnimatedTexture; val: float64) {.gcsafe, locks: 0.}
proc frame231texture*(self: AnimatedTexture): Texture {.gcsafe, locks: 0.}
proc `frame231texture=`*(self: AnimatedTexture; val: Texture) {.gcsafe, locks: 0.}
proc frame232delaySec*(self: AnimatedTexture): float64 {.gcsafe, locks: 0.}
proc `frame232delaySec=`*(self: AnimatedTexture; val: float64) {.gcsafe, locks: 0.}
proc frame232texture*(self: AnimatedTexture): Texture {.gcsafe, locks: 0.}
proc `frame232texture=`*(self: AnimatedTexture; val: Texture) {.gcsafe, locks: 0.}
proc frame233delaySec*(self: AnimatedTexture): float64 {.gcsafe, locks: 0.}
proc `frame233delaySec=`*(self: AnimatedTexture; val: float64) {.gcsafe, locks: 0.}
proc frame233texture*(self: AnimatedTexture): Texture {.gcsafe, locks: 0.}
proc `frame233texture=`*(self: AnimatedTexture; val: Texture) {.gcsafe, locks: 0.}
proc frame234delaySec*(self: AnimatedTexture): float64 {.gcsafe, locks: 0.}
proc `frame234delaySec=`*(self: AnimatedTexture; val: float64) {.gcsafe, locks: 0.}
proc frame234texture*(self: AnimatedTexture): Texture {.gcsafe, locks: 0.}
proc `frame234texture=`*(self: AnimatedTexture; val: Texture) {.gcsafe, locks: 0.}
proc frame235delaySec*(self: AnimatedTexture): float64 {.gcsafe, locks: 0.}
proc `frame235delaySec=`*(self: AnimatedTexture; val: float64) {.gcsafe, locks: 0.}
proc frame235texture*(self: AnimatedTexture): Texture {.gcsafe, locks: 0.}
proc `frame235texture=`*(self: AnimatedTexture; val: Texture) {.gcsafe, locks: 0.}
proc frame236delaySec*(self: AnimatedTexture): float64 {.gcsafe, locks: 0.}
proc `frame236delaySec=`*(self: AnimatedTexture; val: float64) {.gcsafe, locks: 0.}
proc frame236texture*(self: AnimatedTexture): Texture {.gcsafe, locks: 0.}
proc `frame236texture=`*(self: AnimatedTexture; val: Texture) {.gcsafe, locks: 0.}
proc frame237delaySec*(self: AnimatedTexture): float64 {.gcsafe, locks: 0.}
proc `frame237delaySec=`*(self: AnimatedTexture; val: float64) {.gcsafe, locks: 0.}
proc frame237texture*(self: AnimatedTexture): Texture {.gcsafe, locks: 0.}
proc `frame237texture=`*(self: AnimatedTexture; val: Texture) {.gcsafe, locks: 0.}
proc frame238delaySec*(self: AnimatedTexture): float64 {.gcsafe, locks: 0.}
proc `frame238delaySec=`*(self: AnimatedTexture; val: float64) {.gcsafe, locks: 0.}
proc frame238texture*(self: AnimatedTexture): Texture {.gcsafe, locks: 0.}
proc `frame238texture=`*(self: AnimatedTexture; val: Texture) {.gcsafe, locks: 0.}
proc frame239delaySec*(self: AnimatedTexture): float64 {.gcsafe, locks: 0.}
proc `frame239delaySec=`*(self: AnimatedTexture; val: float64) {.gcsafe, locks: 0.}
proc frame239texture*(self: AnimatedTexture): Texture {.gcsafe, locks: 0.}
proc `frame239texture=`*(self: AnimatedTexture; val: Texture) {.gcsafe, locks: 0.}
proc frame24delaySec*(self: AnimatedTexture): float64 {.gcsafe, locks: 0.}
proc `frame24delaySec=`*(self: AnimatedTexture; val: float64) {.gcsafe, locks: 0.}
proc frame24texture*(self: AnimatedTexture): Texture {.gcsafe, locks: 0.}
proc `frame24texture=`*(self: AnimatedTexture; val: Texture) {.gcsafe, locks: 0.}
proc frame240delaySec*(self: AnimatedTexture): float64 {.gcsafe, locks: 0.}
proc `frame240delaySec=`*(self: AnimatedTexture; val: float64) {.gcsafe, locks: 0.}
proc frame240texture*(self: AnimatedTexture): Texture {.gcsafe, locks: 0.}
proc `frame240texture=`*(self: AnimatedTexture; val: Texture) {.gcsafe, locks: 0.}
proc frame241delaySec*(self: AnimatedTexture): float64 {.gcsafe, locks: 0.}
proc `frame241delaySec=`*(self: AnimatedTexture; val: float64) {.gcsafe, locks: 0.}
proc frame241texture*(self: AnimatedTexture): Texture {.gcsafe, locks: 0.}
proc `frame241texture=`*(self: AnimatedTexture; val: Texture) {.gcsafe, locks: 0.}
proc frame242delaySec*(self: AnimatedTexture): float64 {.gcsafe, locks: 0.}
proc `frame242delaySec=`*(self: AnimatedTexture; val: float64) {.gcsafe, locks: 0.}
proc frame242texture*(self: AnimatedTexture): Texture {.gcsafe, locks: 0.}
proc `frame242texture=`*(self: AnimatedTexture; val: Texture) {.gcsafe, locks: 0.}
proc frame243delaySec*(self: AnimatedTexture): float64 {.gcsafe, locks: 0.}
proc `frame243delaySec=`*(self: AnimatedTexture; val: float64) {.gcsafe, locks: 0.}
proc frame243texture*(self: AnimatedTexture): Texture {.gcsafe, locks: 0.}
proc `frame243texture=`*(self: AnimatedTexture; val: Texture) {.gcsafe, locks: 0.}
proc frame244delaySec*(self: AnimatedTexture): float64 {.gcsafe, locks: 0.}
proc `frame244delaySec=`*(self: AnimatedTexture; val: float64) {.gcsafe, locks: 0.}
proc frame244texture*(self: AnimatedTexture): Texture {.gcsafe, locks: 0.}
proc `frame244texture=`*(self: AnimatedTexture; val: Texture) {.gcsafe, locks: 0.}
proc frame245delaySec*(self: AnimatedTexture): float64 {.gcsafe, locks: 0.}
proc `frame245delaySec=`*(self: AnimatedTexture; val: float64) {.gcsafe, locks: 0.}
proc frame245texture*(self: AnimatedTexture): Texture {.gcsafe, locks: 0.}
proc `frame245texture=`*(self: AnimatedTexture; val: Texture) {.gcsafe, locks: 0.}
proc frame246delaySec*(self: AnimatedTexture): float64 {.gcsafe, locks: 0.}
proc `frame246delaySec=`*(self: AnimatedTexture; val: float64) {.gcsafe, locks: 0.}
proc frame246texture*(self: AnimatedTexture): Texture {.gcsafe, locks: 0.}
proc `frame246texture=`*(self: AnimatedTexture; val: Texture) {.gcsafe, locks: 0.}
proc frame247delaySec*(self: AnimatedTexture): float64 {.gcsafe, locks: 0.}
proc `frame247delaySec=`*(self: AnimatedTexture; val: float64) {.gcsafe, locks: 0.}
proc frame247texture*(self: AnimatedTexture): Texture {.gcsafe, locks: 0.}
proc `frame247texture=`*(self: AnimatedTexture; val: Texture) {.gcsafe, locks: 0.}
proc frame248delaySec*(self: AnimatedTexture): float64 {.gcsafe, locks: 0.}
proc `frame248delaySec=`*(self: AnimatedTexture; val: float64) {.gcsafe, locks: 0.}
proc frame248texture*(self: AnimatedTexture): Texture {.gcsafe, locks: 0.}
proc `frame248texture=`*(self: AnimatedTexture; val: Texture) {.gcsafe, locks: 0.}
proc frame249delaySec*(self: AnimatedTexture): float64 {.gcsafe, locks: 0.}
proc `frame249delaySec=`*(self: AnimatedTexture; val: float64) {.gcsafe, locks: 0.}
proc frame249texture*(self: AnimatedTexture): Texture {.gcsafe, locks: 0.}
proc `frame249texture=`*(self: AnimatedTexture; val: Texture) {.gcsafe, locks: 0.}
proc frame25delaySec*(self: AnimatedTexture): float64 {.gcsafe, locks: 0.}
proc `frame25delaySec=`*(self: AnimatedTexture; val: float64) {.gcsafe, locks: 0.}
proc frame25texture*(self: AnimatedTexture): Texture {.gcsafe, locks: 0.}
proc `frame25texture=`*(self: AnimatedTexture; val: Texture) {.gcsafe, locks: 0.}
proc frame250delaySec*(self: AnimatedTexture): float64 {.gcsafe, locks: 0.}
proc `frame250delaySec=`*(self: AnimatedTexture; val: float64) {.gcsafe, locks: 0.}
proc frame250texture*(self: AnimatedTexture): Texture {.gcsafe, locks: 0.}
proc `frame250texture=`*(self: AnimatedTexture; val: Texture) {.gcsafe, locks: 0.}
proc frame251delaySec*(self: AnimatedTexture): float64 {.gcsafe, locks: 0.}
proc `frame251delaySec=`*(self: AnimatedTexture; val: float64) {.gcsafe, locks: 0.}
proc frame251texture*(self: AnimatedTexture): Texture {.gcsafe, locks: 0.}
proc `frame251texture=`*(self: AnimatedTexture; val: Texture) {.gcsafe, locks: 0.}
proc frame252delaySec*(self: AnimatedTexture): float64 {.gcsafe, locks: 0.}
proc `frame252delaySec=`*(self: AnimatedTexture; val: float64) {.gcsafe, locks: 0.}
proc frame252texture*(self: AnimatedTexture): Texture {.gcsafe, locks: 0.}
proc `frame252texture=`*(self: AnimatedTexture; val: Texture) {.gcsafe, locks: 0.}
proc frame253delaySec*(self: AnimatedTexture): float64 {.gcsafe, locks: 0.}
proc `frame253delaySec=`*(self: AnimatedTexture; val: float64) {.gcsafe, locks: 0.}
proc frame253texture*(self: AnimatedTexture): Texture {.gcsafe, locks: 0.}
proc `frame253texture=`*(self: AnimatedTexture; val: Texture) {.gcsafe, locks: 0.}
proc frame254delaySec*(self: AnimatedTexture): float64 {.gcsafe, locks: 0.}
proc `frame254delaySec=`*(self: AnimatedTexture; val: float64) {.gcsafe, locks: 0.}
proc frame254texture*(self: AnimatedTexture): Texture {.gcsafe, locks: 0.}
proc `frame254texture=`*(self: AnimatedTexture; val: Texture) {.gcsafe, locks: 0.}
proc frame255delaySec*(self: AnimatedTexture): float64 {.gcsafe, locks: 0.}
proc `frame255delaySec=`*(self: AnimatedTexture; val: float64) {.gcsafe, locks: 0.}
proc frame255texture*(self: AnimatedTexture): Texture {.gcsafe, locks: 0.}
proc `frame255texture=`*(self: AnimatedTexture; val: Texture) {.gcsafe, locks: 0.}
proc frame26delaySec*(self: AnimatedTexture): float64 {.gcsafe, locks: 0.}
proc `frame26delaySec=`*(self: AnimatedTexture; val: float64) {.gcsafe, locks: 0.}
proc frame26texture*(self: AnimatedTexture): Texture {.gcsafe, locks: 0.}
proc `frame26texture=`*(self: AnimatedTexture; val: Texture) {.gcsafe, locks: 0.}
proc frame27delaySec*(self: AnimatedTexture): float64 {.gcsafe, locks: 0.}
proc `frame27delaySec=`*(self: AnimatedTexture; val: float64) {.gcsafe, locks: 0.}
proc frame27texture*(self: AnimatedTexture): Texture {.gcsafe, locks: 0.}
proc `frame27texture=`*(self: AnimatedTexture; val: Texture) {.gcsafe, locks: 0.}
proc frame28delaySec*(self: AnimatedTexture): float64 {.gcsafe, locks: 0.}
proc `frame28delaySec=`*(self: AnimatedTexture; val: float64) {.gcsafe, locks: 0.}
proc frame28texture*(self: AnimatedTexture): Texture {.gcsafe, locks: 0.}
proc `frame28texture=`*(self: AnimatedTexture; val: Texture) {.gcsafe, locks: 0.}
proc frame29delaySec*(self: AnimatedTexture): float64 {.gcsafe, locks: 0.}
proc `frame29delaySec=`*(self: AnimatedTexture; val: float64) {.gcsafe, locks: 0.}
proc frame29texture*(self: AnimatedTexture): Texture {.gcsafe, locks: 0.}
proc `frame29texture=`*(self: AnimatedTexture; val: Texture) {.gcsafe, locks: 0.}
proc frame3delaySec*(self: AnimatedTexture): float64 {.gcsafe, locks: 0.}
proc `frame3delaySec=`*(self: AnimatedTexture; val: float64) {.gcsafe, locks: 0.}
proc frame3texture*(self: AnimatedTexture): Texture {.gcsafe, locks: 0.}
proc `frame3texture=`*(self: AnimatedTexture; val: Texture) {.gcsafe, locks: 0.}
proc frame30delaySec*(self: AnimatedTexture): float64 {.gcsafe, locks: 0.}
proc `frame30delaySec=`*(self: AnimatedTexture; val: float64) {.gcsafe, locks: 0.}
proc frame30texture*(self: AnimatedTexture): Texture {.gcsafe, locks: 0.}
proc `frame30texture=`*(self: AnimatedTexture; val: Texture) {.gcsafe, locks: 0.}
proc frame31delaySec*(self: AnimatedTexture): float64 {.gcsafe, locks: 0.}
proc `frame31delaySec=`*(self: AnimatedTexture; val: float64) {.gcsafe, locks: 0.}
proc frame31texture*(self: AnimatedTexture): Texture {.gcsafe, locks: 0.}
proc `frame31texture=`*(self: AnimatedTexture; val: Texture) {.gcsafe, locks: 0.}
proc frame32delaySec*(self: AnimatedTexture): float64 {.gcsafe, locks: 0.}
proc `frame32delaySec=`*(self: AnimatedTexture; val: float64) {.gcsafe, locks: 0.}
proc frame32texture*(self: AnimatedTexture): Texture {.gcsafe, locks: 0.}
proc `frame32texture=`*(self: AnimatedTexture; val: Texture) {.gcsafe, locks: 0.}
proc frame33delaySec*(self: AnimatedTexture): float64 {.gcsafe, locks: 0.}
proc `frame33delaySec=`*(self: AnimatedTexture; val: float64) {.gcsafe, locks: 0.}
proc frame33texture*(self: AnimatedTexture): Texture {.gcsafe, locks: 0.}
proc `frame33texture=`*(self: AnimatedTexture; val: Texture) {.gcsafe, locks: 0.}
proc frame34delaySec*(self: AnimatedTexture): float64 {.gcsafe, locks: 0.}
proc `frame34delaySec=`*(self: AnimatedTexture; val: float64) {.gcsafe, locks: 0.}
proc frame34texture*(self: AnimatedTexture): Texture {.gcsafe, locks: 0.}
proc `frame34texture=`*(self: AnimatedTexture; val: Texture) {.gcsafe, locks: 0.}
proc frame35delaySec*(self: AnimatedTexture): float64 {.gcsafe, locks: 0.}
proc `frame35delaySec=`*(self: AnimatedTexture; val: float64) {.gcsafe, locks: 0.}
proc frame35texture*(self: AnimatedTexture): Texture {.gcsafe, locks: 0.}
proc `frame35texture=`*(self: AnimatedTexture; val: Texture) {.gcsafe, locks: 0.}
proc frame36delaySec*(self: AnimatedTexture): float64 {.gcsafe, locks: 0.}
proc `frame36delaySec=`*(self: AnimatedTexture; val: float64) {.gcsafe, locks: 0.}
proc frame36texture*(self: AnimatedTexture): Texture {.gcsafe, locks: 0.}
proc `frame36texture=`*(self: AnimatedTexture; val: Texture) {.gcsafe, locks: 0.}
proc frame37delaySec*(self: AnimatedTexture): float64 {.gcsafe, locks: 0.}
proc `frame37delaySec=`*(self: AnimatedTexture; val: float64) {.gcsafe, locks: 0.}
proc frame37texture*(self: AnimatedTexture): Texture {.gcsafe, locks: 0.}
proc `frame37texture=`*(self: AnimatedTexture; val: Texture) {.gcsafe, locks: 0.}
proc frame38delaySec*(self: AnimatedTexture): float64 {.gcsafe, locks: 0.}
proc `frame38delaySec=`*(self: AnimatedTexture; val: float64) {.gcsafe, locks: 0.}
proc frame38texture*(self: AnimatedTexture): Texture {.gcsafe, locks: 0.}
proc `frame38texture=`*(self: AnimatedTexture; val: Texture) {.gcsafe, locks: 0.}
proc frame39delaySec*(self: AnimatedTexture): float64 {.gcsafe, locks: 0.}
proc `frame39delaySec=`*(self: AnimatedTexture; val: float64) {.gcsafe, locks: 0.}
proc frame39texture*(self: AnimatedTexture): Texture {.gcsafe, locks: 0.}
proc `frame39texture=`*(self: AnimatedTexture; val: Texture) {.gcsafe, locks: 0.}
proc frame4delaySec*(self: AnimatedTexture): float64 {.gcsafe, locks: 0.}
proc `frame4delaySec=`*(self: AnimatedTexture; val: float64) {.gcsafe, locks: 0.}
proc frame4texture*(self: AnimatedTexture): Texture {.gcsafe, locks: 0.}
proc `frame4texture=`*(self: AnimatedTexture; val: Texture) {.gcsafe, locks: 0.}
proc frame40delaySec*(self: AnimatedTexture): float64 {.gcsafe, locks: 0.}
proc `frame40delaySec=`*(self: AnimatedTexture; val: float64) {.gcsafe, locks: 0.}
proc frame40texture*(self: AnimatedTexture): Texture {.gcsafe, locks: 0.}
proc `frame40texture=`*(self: AnimatedTexture; val: Texture) {.gcsafe, locks: 0.}
proc frame41delaySec*(self: AnimatedTexture): float64 {.gcsafe, locks: 0.}
proc `frame41delaySec=`*(self: AnimatedTexture; val: float64) {.gcsafe, locks: 0.}
proc frame41texture*(self: AnimatedTexture): Texture {.gcsafe, locks: 0.}
proc `frame41texture=`*(self: AnimatedTexture; val: Texture) {.gcsafe, locks: 0.}
proc frame42delaySec*(self: AnimatedTexture): float64 {.gcsafe, locks: 0.}
proc `frame42delaySec=`*(self: AnimatedTexture; val: float64) {.gcsafe, locks: 0.}
proc frame42texture*(self: AnimatedTexture): Texture {.gcsafe, locks: 0.}
proc `frame42texture=`*(self: AnimatedTexture; val: Texture) {.gcsafe, locks: 0.}
proc frame43delaySec*(self: AnimatedTexture): float64 {.gcsafe, locks: 0.}
proc `frame43delaySec=`*(self: AnimatedTexture; val: float64) {.gcsafe, locks: 0.}
proc frame43texture*(self: AnimatedTexture): Texture {.gcsafe, locks: 0.}
proc `frame43texture=`*(self: AnimatedTexture; val: Texture) {.gcsafe, locks: 0.}
proc frame44delaySec*(self: AnimatedTexture): float64 {.gcsafe, locks: 0.}
proc `frame44delaySec=`*(self: AnimatedTexture; val: float64) {.gcsafe, locks: 0.}
proc frame44texture*(self: AnimatedTexture): Texture {.gcsafe, locks: 0.}
proc `frame44texture=`*(self: AnimatedTexture; val: Texture) {.gcsafe, locks: 0.}
proc frame45delaySec*(self: AnimatedTexture): float64 {.gcsafe, locks: 0.}
proc `frame45delaySec=`*(self: AnimatedTexture; val: float64) {.gcsafe, locks: 0.}
proc frame45texture*(self: AnimatedTexture): Texture {.gcsafe, locks: 0.}
proc `frame45texture=`*(self: AnimatedTexture; val: Texture) {.gcsafe, locks: 0.}
proc frame46delaySec*(self: AnimatedTexture): float64 {.gcsafe, locks: 0.}
proc `frame46delaySec=`*(self: AnimatedTexture; val: float64) {.gcsafe, locks: 0.}
proc frame46texture*(self: AnimatedTexture): Texture {.gcsafe, locks: 0.}
proc `frame46texture=`*(self: AnimatedTexture; val: Texture) {.gcsafe, locks: 0.}
proc frame47delaySec*(self: AnimatedTexture): float64 {.gcsafe, locks: 0.}
proc `frame47delaySec=`*(self: AnimatedTexture; val: float64) {.gcsafe, locks: 0.}
proc frame47texture*(self: AnimatedTexture): Texture {.gcsafe, locks: 0.}
proc `frame47texture=`*(self: AnimatedTexture; val: Texture) {.gcsafe, locks: 0.}
proc frame48delaySec*(self: AnimatedTexture): float64 {.gcsafe, locks: 0.}
proc `frame48delaySec=`*(self: AnimatedTexture; val: float64) {.gcsafe, locks: 0.}
proc frame48texture*(self: AnimatedTexture): Texture {.gcsafe, locks: 0.}
proc `frame48texture=`*(self: AnimatedTexture; val: Texture) {.gcsafe, locks: 0.}
proc frame49delaySec*(self: AnimatedTexture): float64 {.gcsafe, locks: 0.}
proc `frame49delaySec=`*(self: AnimatedTexture; val: float64) {.gcsafe, locks: 0.}
proc frame49texture*(self: AnimatedTexture): Texture {.gcsafe, locks: 0.}
proc `frame49texture=`*(self: AnimatedTexture; val: Texture) {.gcsafe, locks: 0.}
proc frame5delaySec*(self: AnimatedTexture): float64 {.gcsafe, locks: 0.}
proc `frame5delaySec=`*(self: AnimatedTexture; val: float64) {.gcsafe, locks: 0.}
proc frame5texture*(self: AnimatedTexture): Texture {.gcsafe, locks: 0.}
proc `frame5texture=`*(self: AnimatedTexture; val: Texture) {.gcsafe, locks: 0.}
proc frame50delaySec*(self: AnimatedTexture): float64 {.gcsafe, locks: 0.}
proc `frame50delaySec=`*(self: AnimatedTexture; val: float64) {.gcsafe, locks: 0.}
proc frame50texture*(self: AnimatedTexture): Texture {.gcsafe, locks: 0.}
proc `frame50texture=`*(self: AnimatedTexture; val: Texture) {.gcsafe, locks: 0.}
proc frame51delaySec*(self: AnimatedTexture): float64 {.gcsafe, locks: 0.}
proc `frame51delaySec=`*(self: AnimatedTexture; val: float64) {.gcsafe, locks: 0.}
proc frame51texture*(self: AnimatedTexture): Texture {.gcsafe, locks: 0.}
proc `frame51texture=`*(self: AnimatedTexture; val: Texture) {.gcsafe, locks: 0.}
proc frame52delaySec*(self: AnimatedTexture): float64 {.gcsafe, locks: 0.}
proc `frame52delaySec=`*(self: AnimatedTexture; val: float64) {.gcsafe, locks: 0.}
proc frame52texture*(self: AnimatedTexture): Texture {.gcsafe, locks: 0.}
proc `frame52texture=`*(self: AnimatedTexture; val: Texture) {.gcsafe, locks: 0.}
proc frame53delaySec*(self: AnimatedTexture): float64 {.gcsafe, locks: 0.}
proc `frame53delaySec=`*(self: AnimatedTexture; val: float64) {.gcsafe, locks: 0.}
proc frame53texture*(self: AnimatedTexture): Texture {.gcsafe, locks: 0.}
proc `frame53texture=`*(self: AnimatedTexture; val: Texture) {.gcsafe, locks: 0.}
proc frame54delaySec*(self: AnimatedTexture): float64 {.gcsafe, locks: 0.}
proc `frame54delaySec=`*(self: AnimatedTexture; val: float64) {.gcsafe, locks: 0.}
proc frame54texture*(self: AnimatedTexture): Texture {.gcsafe, locks: 0.}
proc `frame54texture=`*(self: AnimatedTexture; val: Texture) {.gcsafe, locks: 0.}
proc frame55delaySec*(self: AnimatedTexture): float64 {.gcsafe, locks: 0.}
proc `frame55delaySec=`*(self: AnimatedTexture; val: float64) {.gcsafe, locks: 0.}
proc frame55texture*(self: AnimatedTexture): Texture {.gcsafe, locks: 0.}
proc `frame55texture=`*(self: AnimatedTexture; val: Texture) {.gcsafe, locks: 0.}
proc frame56delaySec*(self: AnimatedTexture): float64 {.gcsafe, locks: 0.}
proc `frame56delaySec=`*(self: AnimatedTexture; val: float64) {.gcsafe, locks: 0.}
proc frame56texture*(self: AnimatedTexture): Texture {.gcsafe, locks: 0.}
proc `frame56texture=`*(self: AnimatedTexture; val: Texture) {.gcsafe, locks: 0.}
proc frame57delaySec*(self: AnimatedTexture): float64 {.gcsafe, locks: 0.}
proc `frame57delaySec=`*(self: AnimatedTexture; val: float64) {.gcsafe, locks: 0.}
proc frame57texture*(self: AnimatedTexture): Texture {.gcsafe, locks: 0.}
proc `frame57texture=`*(self: AnimatedTexture; val: Texture) {.gcsafe, locks: 0.}
proc frame58delaySec*(self: AnimatedTexture): float64 {.gcsafe, locks: 0.}
proc `frame58delaySec=`*(self: AnimatedTexture; val: float64) {.gcsafe, locks: 0.}
proc frame58texture*(self: AnimatedTexture): Texture {.gcsafe, locks: 0.}
proc `frame58texture=`*(self: AnimatedTexture; val: Texture) {.gcsafe, locks: 0.}
proc frame59delaySec*(self: AnimatedTexture): float64 {.gcsafe, locks: 0.}
proc `frame59delaySec=`*(self: AnimatedTexture; val: float64) {.gcsafe, locks: 0.}
proc frame59texture*(self: AnimatedTexture): Texture {.gcsafe, locks: 0.}
proc `frame59texture=`*(self: AnimatedTexture; val: Texture) {.gcsafe, locks: 0.}
proc frame6delaySec*(self: AnimatedTexture): float64 {.gcsafe, locks: 0.}
proc `frame6delaySec=`*(self: AnimatedTexture; val: float64) {.gcsafe, locks: 0.}
proc frame6texture*(self: AnimatedTexture): Texture {.gcsafe, locks: 0.}
proc `frame6texture=`*(self: AnimatedTexture; val: Texture) {.gcsafe, locks: 0.}
proc frame60delaySec*(self: AnimatedTexture): float64 {.gcsafe, locks: 0.}
proc `frame60delaySec=`*(self: AnimatedTexture; val: float64) {.gcsafe, locks: 0.}
proc frame60texture*(self: AnimatedTexture): Texture {.gcsafe, locks: 0.}
proc `frame60texture=`*(self: AnimatedTexture; val: Texture) {.gcsafe, locks: 0.}
proc frame61delaySec*(self: AnimatedTexture): float64 {.gcsafe, locks: 0.}
proc `frame61delaySec=`*(self: AnimatedTexture; val: float64) {.gcsafe, locks: 0.}
proc frame61texture*(self: AnimatedTexture): Texture {.gcsafe, locks: 0.}
proc `frame61texture=`*(self: AnimatedTexture; val: Texture) {.gcsafe, locks: 0.}
proc frame62delaySec*(self: AnimatedTexture): float64 {.gcsafe, locks: 0.}
proc `frame62delaySec=`*(self: AnimatedTexture; val: float64) {.gcsafe, locks: 0.}
proc frame62texture*(self: AnimatedTexture): Texture {.gcsafe, locks: 0.}
proc `frame62texture=`*(self: AnimatedTexture; val: Texture) {.gcsafe, locks: 0.}
proc frame63delaySec*(self: AnimatedTexture): float64 {.gcsafe, locks: 0.}
proc `frame63delaySec=`*(self: AnimatedTexture; val: float64) {.gcsafe, locks: 0.}
proc frame63texture*(self: AnimatedTexture): Texture {.gcsafe, locks: 0.}
proc `frame63texture=`*(self: AnimatedTexture; val: Texture) {.gcsafe, locks: 0.}
proc frame64delaySec*(self: AnimatedTexture): float64 {.gcsafe, locks: 0.}
proc `frame64delaySec=`*(self: AnimatedTexture; val: float64) {.gcsafe, locks: 0.}
proc frame64texture*(self: AnimatedTexture): Texture {.gcsafe, locks: 0.}
proc `frame64texture=`*(self: AnimatedTexture; val: Texture) {.gcsafe, locks: 0.}
proc frame65delaySec*(self: AnimatedTexture): float64 {.gcsafe, locks: 0.}
proc `frame65delaySec=`*(self: AnimatedTexture; val: float64) {.gcsafe, locks: 0.}
proc frame65texture*(self: AnimatedTexture): Texture {.gcsafe, locks: 0.}
proc `frame65texture=`*(self: AnimatedTexture; val: Texture) {.gcsafe, locks: 0.}
proc frame66delaySec*(self: AnimatedTexture): float64 {.gcsafe, locks: 0.}
proc `frame66delaySec=`*(self: AnimatedTexture; val: float64) {.gcsafe, locks: 0.}
proc frame66texture*(self: AnimatedTexture): Texture {.gcsafe, locks: 0.}
proc `frame66texture=`*(self: AnimatedTexture; val: Texture) {.gcsafe, locks: 0.}
proc frame67delaySec*(self: AnimatedTexture): float64 {.gcsafe, locks: 0.}
proc `frame67delaySec=`*(self: AnimatedTexture; val: float64) {.gcsafe, locks: 0.}
proc frame67texture*(self: AnimatedTexture): Texture {.gcsafe, locks: 0.}
proc `frame67texture=`*(self: AnimatedTexture; val: Texture) {.gcsafe, locks: 0.}
proc frame68delaySec*(self: AnimatedTexture): float64 {.gcsafe, locks: 0.}
proc `frame68delaySec=`*(self: AnimatedTexture; val: float64) {.gcsafe, locks: 0.}
proc frame68texture*(self: AnimatedTexture): Texture {.gcsafe, locks: 0.}
proc `frame68texture=`*(self: AnimatedTexture; val: Texture) {.gcsafe, locks: 0.}
proc frame69delaySec*(self: AnimatedTexture): float64 {.gcsafe, locks: 0.}
proc `frame69delaySec=`*(self: AnimatedTexture; val: float64) {.gcsafe, locks: 0.}
proc frame69texture*(self: AnimatedTexture): Texture {.gcsafe, locks: 0.}
proc `frame69texture=`*(self: AnimatedTexture; val: Texture) {.gcsafe, locks: 0.}
proc frame7delaySec*(self: AnimatedTexture): float64 {.gcsafe, locks: 0.}
proc `frame7delaySec=`*(self: AnimatedTexture; val: float64) {.gcsafe, locks: 0.}
proc frame7texture*(self: AnimatedTexture): Texture {.gcsafe, locks: 0.}
proc `frame7texture=`*(self: AnimatedTexture; val: Texture) {.gcsafe, locks: 0.}
proc frame70delaySec*(self: AnimatedTexture): float64 {.gcsafe, locks: 0.}
proc `frame70delaySec=`*(self: AnimatedTexture; val: float64) {.gcsafe, locks: 0.}
proc frame70texture*(self: AnimatedTexture): Texture {.gcsafe, locks: 0.}
proc `frame70texture=`*(self: AnimatedTexture; val: Texture) {.gcsafe, locks: 0.}
proc frame71delaySec*(self: AnimatedTexture): float64 {.gcsafe, locks: 0.}
proc `frame71delaySec=`*(self: AnimatedTexture; val: float64) {.gcsafe, locks: 0.}
proc frame71texture*(self: AnimatedTexture): Texture {.gcsafe, locks: 0.}
proc `frame71texture=`*(self: AnimatedTexture; val: Texture) {.gcsafe, locks: 0.}
proc frame72delaySec*(self: AnimatedTexture): float64 {.gcsafe, locks: 0.}
proc `frame72delaySec=`*(self: AnimatedTexture; val: float64) {.gcsafe, locks: 0.}
proc frame72texture*(self: AnimatedTexture): Texture {.gcsafe, locks: 0.}
proc `frame72texture=`*(self: AnimatedTexture; val: Texture) {.gcsafe, locks: 0.}
proc frame73delaySec*(self: AnimatedTexture): float64 {.gcsafe, locks: 0.}
proc `frame73delaySec=`*(self: AnimatedTexture; val: float64) {.gcsafe, locks: 0.}
proc frame73texture*(self: AnimatedTexture): Texture {.gcsafe, locks: 0.}
proc `frame73texture=`*(self: AnimatedTexture; val: Texture) {.gcsafe, locks: 0.}
proc frame74delaySec*(self: AnimatedTexture): float64 {.gcsafe, locks: 0.}
proc `frame74delaySec=`*(self: AnimatedTexture; val: float64) {.gcsafe, locks: 0.}
proc frame74texture*(self: AnimatedTexture): Texture {.gcsafe, locks: 0.}
proc `frame74texture=`*(self: AnimatedTexture; val: Texture) {.gcsafe, locks: 0.}
proc frame75delaySec*(self: AnimatedTexture): float64 {.gcsafe, locks: 0.}
proc `frame75delaySec=`*(self: AnimatedTexture; val: float64) {.gcsafe, locks: 0.}
proc frame75texture*(self: AnimatedTexture): Texture {.gcsafe, locks: 0.}
proc `frame75texture=`*(self: AnimatedTexture; val: Texture) {.gcsafe, locks: 0.}
proc frame76delaySec*(self: AnimatedTexture): float64 {.gcsafe, locks: 0.}
proc `frame76delaySec=`*(self: AnimatedTexture; val: float64) {.gcsafe, locks: 0.}
proc frame76texture*(self: AnimatedTexture): Texture {.gcsafe, locks: 0.}
proc `frame76texture=`*(self: AnimatedTexture; val: Texture) {.gcsafe, locks: 0.}
proc frame77delaySec*(self: AnimatedTexture): float64 {.gcsafe, locks: 0.}
proc `frame77delaySec=`*(self: AnimatedTexture; val: float64) {.gcsafe, locks: 0.}
proc frame77texture*(self: AnimatedTexture): Texture {.gcsafe, locks: 0.}
proc `frame77texture=`*(self: AnimatedTexture; val: Texture) {.gcsafe, locks: 0.}
proc frame78delaySec*(self: AnimatedTexture): float64 {.gcsafe, locks: 0.}
proc `frame78delaySec=`*(self: AnimatedTexture; val: float64) {.gcsafe, locks: 0.}
proc frame78texture*(self: AnimatedTexture): Texture {.gcsafe, locks: 0.}
proc `frame78texture=`*(self: AnimatedTexture; val: Texture) {.gcsafe, locks: 0.}
proc frame79delaySec*(self: AnimatedTexture): float64 {.gcsafe, locks: 0.}
proc `frame79delaySec=`*(self: AnimatedTexture; val: float64) {.gcsafe, locks: 0.}
proc frame79texture*(self: AnimatedTexture): Texture {.gcsafe, locks: 0.}
proc `frame79texture=`*(self: AnimatedTexture; val: Texture) {.gcsafe, locks: 0.}
proc frame8delaySec*(self: AnimatedTexture): float64 {.gcsafe, locks: 0.}
proc `frame8delaySec=`*(self: AnimatedTexture; val: float64) {.gcsafe, locks: 0.}
proc frame8texture*(self: AnimatedTexture): Texture {.gcsafe, locks: 0.}
proc `frame8texture=`*(self: AnimatedTexture; val: Texture) {.gcsafe, locks: 0.}
proc frame80delaySec*(self: AnimatedTexture): float64 {.gcsafe, locks: 0.}
proc `frame80delaySec=`*(self: AnimatedTexture; val: float64) {.gcsafe, locks: 0.}
proc frame80texture*(self: AnimatedTexture): Texture {.gcsafe, locks: 0.}
proc `frame80texture=`*(self: AnimatedTexture; val: Texture) {.gcsafe, locks: 0.}
proc frame81delaySec*(self: AnimatedTexture): float64 {.gcsafe, locks: 0.}
proc `frame81delaySec=`*(self: AnimatedTexture; val: float64) {.gcsafe, locks: 0.}
proc frame81texture*(self: AnimatedTexture): Texture {.gcsafe, locks: 0.}
proc `frame81texture=`*(self: AnimatedTexture; val: Texture) {.gcsafe, locks: 0.}
proc frame82delaySec*(self: AnimatedTexture): float64 {.gcsafe, locks: 0.}
proc `frame82delaySec=`*(self: AnimatedTexture; val: float64) {.gcsafe, locks: 0.}
proc frame82texture*(self: AnimatedTexture): Texture {.gcsafe, locks: 0.}
proc `frame82texture=`*(self: AnimatedTexture; val: Texture) {.gcsafe, locks: 0.}
proc frame83delaySec*(self: AnimatedTexture): float64 {.gcsafe, locks: 0.}
proc `frame83delaySec=`*(self: AnimatedTexture; val: float64) {.gcsafe, locks: 0.}
proc frame83texture*(self: AnimatedTexture): Texture {.gcsafe, locks: 0.}
proc `frame83texture=`*(self: AnimatedTexture; val: Texture) {.gcsafe, locks: 0.}
proc frame84delaySec*(self: AnimatedTexture): float64 {.gcsafe, locks: 0.}
proc `frame84delaySec=`*(self: AnimatedTexture; val: float64) {.gcsafe, locks: 0.}
proc frame84texture*(self: AnimatedTexture): Texture {.gcsafe, locks: 0.}
proc `frame84texture=`*(self: AnimatedTexture; val: Texture) {.gcsafe, locks: 0.}
proc frame85delaySec*(self: AnimatedTexture): float64 {.gcsafe, locks: 0.}
proc `frame85delaySec=`*(self: AnimatedTexture; val: float64) {.gcsafe, locks: 0.}
proc frame85texture*(self: AnimatedTexture): Texture {.gcsafe, locks: 0.}
proc `frame85texture=`*(self: AnimatedTexture; val: Texture) {.gcsafe, locks: 0.}
proc frame86delaySec*(self: AnimatedTexture): float64 {.gcsafe, locks: 0.}
proc `frame86delaySec=`*(self: AnimatedTexture; val: float64) {.gcsafe, locks: 0.}
proc frame86texture*(self: AnimatedTexture): Texture {.gcsafe, locks: 0.}
proc `frame86texture=`*(self: AnimatedTexture; val: Texture) {.gcsafe, locks: 0.}
proc frame87delaySec*(self: AnimatedTexture): float64 {.gcsafe, locks: 0.}
proc `frame87delaySec=`*(self: AnimatedTexture; val: float64) {.gcsafe, locks: 0.}
proc frame87texture*(self: AnimatedTexture): Texture {.gcsafe, locks: 0.}
proc `frame87texture=`*(self: AnimatedTexture; val: Texture) {.gcsafe, locks: 0.}
proc frame88delaySec*(self: AnimatedTexture): float64 {.gcsafe, locks: 0.}
proc `frame88delaySec=`*(self: AnimatedTexture; val: float64) {.gcsafe, locks: 0.}
proc frame88texture*(self: AnimatedTexture): Texture {.gcsafe, locks: 0.}
proc `frame88texture=`*(self: AnimatedTexture; val: Texture) {.gcsafe, locks: 0.}
proc frame89delaySec*(self: AnimatedTexture): float64 {.gcsafe, locks: 0.}
proc `frame89delaySec=`*(self: AnimatedTexture; val: float64) {.gcsafe, locks: 0.}
proc frame89texture*(self: AnimatedTexture): Texture {.gcsafe, locks: 0.}
proc `frame89texture=`*(self: AnimatedTexture; val: Texture) {.gcsafe, locks: 0.}
proc frame9delaySec*(self: AnimatedTexture): float64 {.gcsafe, locks: 0.}
proc `frame9delaySec=`*(self: AnimatedTexture; val: float64) {.gcsafe, locks: 0.}
proc frame9texture*(self: AnimatedTexture): Texture {.gcsafe, locks: 0.}
proc `frame9texture=`*(self: AnimatedTexture; val: Texture) {.gcsafe, locks: 0.}
proc frame90delaySec*(self: AnimatedTexture): float64 {.gcsafe, locks: 0.}
proc `frame90delaySec=`*(self: AnimatedTexture; val: float64) {.gcsafe, locks: 0.}
proc frame90texture*(self: AnimatedTexture): Texture {.gcsafe, locks: 0.}
proc `frame90texture=`*(self: AnimatedTexture; val: Texture) {.gcsafe, locks: 0.}
proc frame91delaySec*(self: AnimatedTexture): float64 {.gcsafe, locks: 0.}
proc `frame91delaySec=`*(self: AnimatedTexture; val: float64) {.gcsafe, locks: 0.}
proc frame91texture*(self: AnimatedTexture): Texture {.gcsafe, locks: 0.}
proc `frame91texture=`*(self: AnimatedTexture; val: Texture) {.gcsafe, locks: 0.}
proc frame92delaySec*(self: AnimatedTexture): float64 {.gcsafe, locks: 0.}
proc `frame92delaySec=`*(self: AnimatedTexture; val: float64) {.gcsafe, locks: 0.}
proc frame92texture*(self: AnimatedTexture): Texture {.gcsafe, locks: 0.}
proc `frame92texture=`*(self: AnimatedTexture; val: Texture) {.gcsafe, locks: 0.}
proc frame93delaySec*(self: AnimatedTexture): float64 {.gcsafe, locks: 0.}
proc `frame93delaySec=`*(self: AnimatedTexture; val: float64) {.gcsafe, locks: 0.}
proc frame93texture*(self: AnimatedTexture): Texture {.gcsafe, locks: 0.}
proc `frame93texture=`*(self: AnimatedTexture; val: Texture) {.gcsafe, locks: 0.}
proc frame94delaySec*(self: AnimatedTexture): float64 {.gcsafe, locks: 0.}
proc `frame94delaySec=`*(self: AnimatedTexture; val: float64) {.gcsafe, locks: 0.}
proc frame94texture*(self: AnimatedTexture): Texture {.gcsafe, locks: 0.}
proc `frame94texture=`*(self: AnimatedTexture; val: Texture) {.gcsafe, locks: 0.}
proc frame95delaySec*(self: AnimatedTexture): float64 {.gcsafe, locks: 0.}
proc `frame95delaySec=`*(self: AnimatedTexture; val: float64) {.gcsafe, locks: 0.}
proc frame95texture*(self: AnimatedTexture): Texture {.gcsafe, locks: 0.}
proc `frame95texture=`*(self: AnimatedTexture; val: Texture) {.gcsafe, locks: 0.}
proc frame96delaySec*(self: AnimatedTexture): float64 {.gcsafe, locks: 0.}
proc `frame96delaySec=`*(self: AnimatedTexture; val: float64) {.gcsafe, locks: 0.}
proc frame96texture*(self: AnimatedTexture): Texture {.gcsafe, locks: 0.}
proc `frame96texture=`*(self: AnimatedTexture; val: Texture) {.gcsafe, locks: 0.}
proc frame97delaySec*(self: AnimatedTexture): float64 {.gcsafe, locks: 0.}
proc `frame97delaySec=`*(self: AnimatedTexture; val: float64) {.gcsafe, locks: 0.}
proc frame97texture*(self: AnimatedTexture): Texture {.gcsafe, locks: 0.}
proc `frame97texture=`*(self: AnimatedTexture; val: Texture) {.gcsafe, locks: 0.}
proc frame98delaySec*(self: AnimatedTexture): float64 {.gcsafe, locks: 0.}
proc `frame98delaySec=`*(self: AnimatedTexture; val: float64) {.gcsafe, locks: 0.}
proc frame98texture*(self: AnimatedTexture): Texture {.gcsafe, locks: 0.}
proc `frame98texture=`*(self: AnimatedTexture; val: Texture) {.gcsafe, locks: 0.}
proc frame99delaySec*(self: AnimatedTexture): float64 {.gcsafe, locks: 0.}
proc `frame99delaySec=`*(self: AnimatedTexture; val: float64) {.gcsafe, locks: 0.}
proc frame99texture*(self: AnimatedTexture): Texture {.gcsafe, locks: 0.}
proc `frame99texture=`*(self: AnimatedTexture; val: Texture) {.gcsafe, locks: 0.}
proc frames*(self: AnimatedTexture): int64 {.gcsafe, locks: 0.}
proc `frames=`*(self: AnimatedTexture; val: int64) {.gcsafe, locks: 0.}
proc oneshot*(self: AnimatedTexture): bool {.gcsafe, locks: 0.}
proc `oneshot=`*(self: AnimatedTexture; val: bool) {.gcsafe, locks: 0.}
proc pause*(self: AnimatedTexture): bool {.gcsafe, locks: 0.}
proc `pause=`*(self: AnimatedTexture; val: bool) {.gcsafe, locks: 0.}
method updateProxy*(self: AnimatedTexture) {.gcsafe, locks: 0, base.}
var animatedTextureGetCurrentFrameMethodBind {.threadvar.}: ptr GodotMethodBind
proc currentFrame(self: AnimatedTexture): int64 =
  if isNil(animatedTextureGetCurrentFrameMethodBind):
    animatedTextureGetCurrentFrameMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"get_current_frame")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animatedTextureGetCurrentFrameMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var animatedTextureSetCurrentFrameMethodBind {.threadvar.}: ptr GodotMethodBind
proc `currentFrame=`(self: AnimatedTexture; val: int64) =
  if isNil(animatedTextureSetCurrentFrameMethodBind):
    animatedTextureSetCurrentFrameMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"set_current_frame")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  animatedTextureSetCurrentFrameMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var animatedTextureGetFpsMethodBind {.threadvar.}: ptr GodotMethodBind
proc fps(self: AnimatedTexture): float64 =
  if isNil(animatedTextureGetFpsMethodBind):
    animatedTextureGetFpsMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"get_fps")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animatedTextureGetFpsMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var animatedTextureSetFpsMethodBind {.threadvar.}: ptr GodotMethodBind
proc `fps=`(self: AnimatedTexture; val: float64) =
  if isNil(animatedTextureSetFpsMethodBind):
    animatedTextureSetFpsMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"set_fps")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  animatedTextureSetFpsMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var animatedTextureGetFrameDelayMethodBind {.threadvar.}: ptr GodotMethodBind
proc frame0delaySec(self: AnimatedTexture): float64 =
  if isNil(animatedTextureGetFrameDelayMethodBind):
    animatedTextureGetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"get_frame_delay")
  var
    godotBoundArg0 = 0'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animatedTextureGetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var animatedTextureSetFrameDelayMethodBind {.threadvar.}: ptr GodotMethodBind
proc `frame0delaySec=`(self: AnimatedTexture; val: float64) =
  if isNil(animatedTextureSetFrameDelayMethodBind):
    animatedTextureSetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"set_frame_delay")
  var
    godotBoundArg0 = 0'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  animatedTextureSetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var animatedTextureGetFrameTextureMethodBind {.threadvar.}: ptr GodotMethodBind
proc frame0texture(self: AnimatedTexture): Texture =
  if isNil(animatedTextureGetFrameTextureMethodBind):
    animatedTextureGetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"get_frame_texture")
  var
    godotBoundArg0 = 0'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  animatedTextureGetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

var animatedTextureSetFrameTextureMethodBind {.threadvar.}: ptr GodotMethodBind
proc `frame0texture=`(self: AnimatedTexture; val: Texture) =
  if isNil(animatedTextureSetFrameTextureMethodBind):
    animatedTextureSetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"set_frame_texture")
  var
    godotBoundArg0 = 0'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  let argToPassToGodot1 = if not val.isNil:
    val.godotObject
  else:
    nil
  argsToPassToGodot[][1] = argToPassToGodot1
  var ptrCallRet: pointer
  animatedTextureSetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame1delaySec(self: AnimatedTexture): float64 =
  if isNil(animatedTextureGetFrameDelayMethodBind):
    animatedTextureGetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"get_frame_delay")
  var
    godotBoundArg0 = 1'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animatedTextureGetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc `frame1delaySec=`(self: AnimatedTexture; val: float64) =
  if isNil(animatedTextureSetFrameDelayMethodBind):
    animatedTextureSetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"set_frame_delay")
  var
    godotBoundArg0 = 1'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  animatedTextureSetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame1texture(self: AnimatedTexture): Texture =
  if isNil(animatedTextureGetFrameTextureMethodBind):
    animatedTextureGetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"get_frame_texture")
  var
    godotBoundArg0 = 1'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  animatedTextureGetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

proc `frame1texture=`(self: AnimatedTexture; val: Texture) =
  if isNil(animatedTextureSetFrameTextureMethodBind):
    animatedTextureSetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"set_frame_texture")
  var
    godotBoundArg0 = 1'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  let argToPassToGodot1 = if not val.isNil:
    val.godotObject
  else:
    nil
  argsToPassToGodot[][1] = argToPassToGodot1
  var ptrCallRet: pointer
  animatedTextureSetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame10delaySec(self: AnimatedTexture): float64 =
  if isNil(animatedTextureGetFrameDelayMethodBind):
    animatedTextureGetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"get_frame_delay")
  var
    godotBoundArg0 = 10'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animatedTextureGetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc `frame10delaySec=`(self: AnimatedTexture; val: float64) =
  if isNil(animatedTextureSetFrameDelayMethodBind):
    animatedTextureSetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"set_frame_delay")
  var
    godotBoundArg0 = 10'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  animatedTextureSetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame10texture(self: AnimatedTexture): Texture =
  if isNil(animatedTextureGetFrameTextureMethodBind):
    animatedTextureGetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"get_frame_texture")
  var
    godotBoundArg0 = 10'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  animatedTextureGetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

proc `frame10texture=`(self: AnimatedTexture; val: Texture) =
  if isNil(animatedTextureSetFrameTextureMethodBind):
    animatedTextureSetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"set_frame_texture")
  var
    godotBoundArg0 = 10'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  let argToPassToGodot1 = if not val.isNil:
    val.godotObject
  else:
    nil
  argsToPassToGodot[][1] = argToPassToGodot1
  var ptrCallRet: pointer
  animatedTextureSetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame100delaySec(self: AnimatedTexture): float64 =
  if isNil(animatedTextureGetFrameDelayMethodBind):
    animatedTextureGetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"get_frame_delay")
  var
    godotBoundArg0 = 100'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animatedTextureGetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc `frame100delaySec=`(self: AnimatedTexture; val: float64) =
  if isNil(animatedTextureSetFrameDelayMethodBind):
    animatedTextureSetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"set_frame_delay")
  var
    godotBoundArg0 = 100'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  animatedTextureSetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame100texture(self: AnimatedTexture): Texture =
  if isNil(animatedTextureGetFrameTextureMethodBind):
    animatedTextureGetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"get_frame_texture")
  var
    godotBoundArg0 = 100'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  animatedTextureGetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

proc `frame100texture=`(self: AnimatedTexture; val: Texture) =
  if isNil(animatedTextureSetFrameTextureMethodBind):
    animatedTextureSetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"set_frame_texture")
  var
    godotBoundArg0 = 100'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  let argToPassToGodot1 = if not val.isNil:
    val.godotObject
  else:
    nil
  argsToPassToGodot[][1] = argToPassToGodot1
  var ptrCallRet: pointer
  animatedTextureSetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame101delaySec(self: AnimatedTexture): float64 =
  if isNil(animatedTextureGetFrameDelayMethodBind):
    animatedTextureGetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"get_frame_delay")
  var
    godotBoundArg0 = 101'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animatedTextureGetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc `frame101delaySec=`(self: AnimatedTexture; val: float64) =
  if isNil(animatedTextureSetFrameDelayMethodBind):
    animatedTextureSetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"set_frame_delay")
  var
    godotBoundArg0 = 101'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  animatedTextureSetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame101texture(self: AnimatedTexture): Texture =
  if isNil(animatedTextureGetFrameTextureMethodBind):
    animatedTextureGetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"get_frame_texture")
  var
    godotBoundArg0 = 101'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  animatedTextureGetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

proc `frame101texture=`(self: AnimatedTexture; val: Texture) =
  if isNil(animatedTextureSetFrameTextureMethodBind):
    animatedTextureSetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"set_frame_texture")
  var
    godotBoundArg0 = 101'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  let argToPassToGodot1 = if not val.isNil:
    val.godotObject
  else:
    nil
  argsToPassToGodot[][1] = argToPassToGodot1
  var ptrCallRet: pointer
  animatedTextureSetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame102delaySec(self: AnimatedTexture): float64 =
  if isNil(animatedTextureGetFrameDelayMethodBind):
    animatedTextureGetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"get_frame_delay")
  var
    godotBoundArg0 = 102'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animatedTextureGetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc `frame102delaySec=`(self: AnimatedTexture; val: float64) =
  if isNil(animatedTextureSetFrameDelayMethodBind):
    animatedTextureSetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"set_frame_delay")
  var
    godotBoundArg0 = 102'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  animatedTextureSetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame102texture(self: AnimatedTexture): Texture =
  if isNil(animatedTextureGetFrameTextureMethodBind):
    animatedTextureGetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"get_frame_texture")
  var
    godotBoundArg0 = 102'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  animatedTextureGetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

proc `frame102texture=`(self: AnimatedTexture; val: Texture) =
  if isNil(animatedTextureSetFrameTextureMethodBind):
    animatedTextureSetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"set_frame_texture")
  var
    godotBoundArg0 = 102'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  let argToPassToGodot1 = if not val.isNil:
    val.godotObject
  else:
    nil
  argsToPassToGodot[][1] = argToPassToGodot1
  var ptrCallRet: pointer
  animatedTextureSetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame103delaySec(self: AnimatedTexture): float64 =
  if isNil(animatedTextureGetFrameDelayMethodBind):
    animatedTextureGetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"get_frame_delay")
  var
    godotBoundArg0 = 103'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animatedTextureGetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc `frame103delaySec=`(self: AnimatedTexture; val: float64) =
  if isNil(animatedTextureSetFrameDelayMethodBind):
    animatedTextureSetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"set_frame_delay")
  var
    godotBoundArg0 = 103'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  animatedTextureSetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame103texture(self: AnimatedTexture): Texture =
  if isNil(animatedTextureGetFrameTextureMethodBind):
    animatedTextureGetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"get_frame_texture")
  var
    godotBoundArg0 = 103'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  animatedTextureGetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

proc `frame103texture=`(self: AnimatedTexture; val: Texture) =
  if isNil(animatedTextureSetFrameTextureMethodBind):
    animatedTextureSetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"set_frame_texture")
  var
    godotBoundArg0 = 103'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  let argToPassToGodot1 = if not val.isNil:
    val.godotObject
  else:
    nil
  argsToPassToGodot[][1] = argToPassToGodot1
  var ptrCallRet: pointer
  animatedTextureSetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame104delaySec(self: AnimatedTexture): float64 =
  if isNil(animatedTextureGetFrameDelayMethodBind):
    animatedTextureGetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"get_frame_delay")
  var
    godotBoundArg0 = 104'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animatedTextureGetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc `frame104delaySec=`(self: AnimatedTexture; val: float64) =
  if isNil(animatedTextureSetFrameDelayMethodBind):
    animatedTextureSetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"set_frame_delay")
  var
    godotBoundArg0 = 104'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  animatedTextureSetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame104texture(self: AnimatedTexture): Texture =
  if isNil(animatedTextureGetFrameTextureMethodBind):
    animatedTextureGetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"get_frame_texture")
  var
    godotBoundArg0 = 104'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  animatedTextureGetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

proc `frame104texture=`(self: AnimatedTexture; val: Texture) =
  if isNil(animatedTextureSetFrameTextureMethodBind):
    animatedTextureSetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"set_frame_texture")
  var
    godotBoundArg0 = 104'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  let argToPassToGodot1 = if not val.isNil:
    val.godotObject
  else:
    nil
  argsToPassToGodot[][1] = argToPassToGodot1
  var ptrCallRet: pointer
  animatedTextureSetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame105delaySec(self: AnimatedTexture): float64 =
  if isNil(animatedTextureGetFrameDelayMethodBind):
    animatedTextureGetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"get_frame_delay")
  var
    godotBoundArg0 = 105'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animatedTextureGetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc `frame105delaySec=`(self: AnimatedTexture; val: float64) =
  if isNil(animatedTextureSetFrameDelayMethodBind):
    animatedTextureSetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"set_frame_delay")
  var
    godotBoundArg0 = 105'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  animatedTextureSetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame105texture(self: AnimatedTexture): Texture =
  if isNil(animatedTextureGetFrameTextureMethodBind):
    animatedTextureGetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"get_frame_texture")
  var
    godotBoundArg0 = 105'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  animatedTextureGetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

proc `frame105texture=`(self: AnimatedTexture; val: Texture) =
  if isNil(animatedTextureSetFrameTextureMethodBind):
    animatedTextureSetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"set_frame_texture")
  var
    godotBoundArg0 = 105'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  let argToPassToGodot1 = if not val.isNil:
    val.godotObject
  else:
    nil
  argsToPassToGodot[][1] = argToPassToGodot1
  var ptrCallRet: pointer
  animatedTextureSetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame106delaySec(self: AnimatedTexture): float64 =
  if isNil(animatedTextureGetFrameDelayMethodBind):
    animatedTextureGetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"get_frame_delay")
  var
    godotBoundArg0 = 106'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animatedTextureGetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc `frame106delaySec=`(self: AnimatedTexture; val: float64) =
  if isNil(animatedTextureSetFrameDelayMethodBind):
    animatedTextureSetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"set_frame_delay")
  var
    godotBoundArg0 = 106'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  animatedTextureSetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame106texture(self: AnimatedTexture): Texture =
  if isNil(animatedTextureGetFrameTextureMethodBind):
    animatedTextureGetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"get_frame_texture")
  var
    godotBoundArg0 = 106'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  animatedTextureGetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

proc `frame106texture=`(self: AnimatedTexture; val: Texture) =
  if isNil(animatedTextureSetFrameTextureMethodBind):
    animatedTextureSetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"set_frame_texture")
  var
    godotBoundArg0 = 106'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  let argToPassToGodot1 = if not val.isNil:
    val.godotObject
  else:
    nil
  argsToPassToGodot[][1] = argToPassToGodot1
  var ptrCallRet: pointer
  animatedTextureSetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame107delaySec(self: AnimatedTexture): float64 =
  if isNil(animatedTextureGetFrameDelayMethodBind):
    animatedTextureGetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"get_frame_delay")
  var
    godotBoundArg0 = 107'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animatedTextureGetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc `frame107delaySec=`(self: AnimatedTexture; val: float64) =
  if isNil(animatedTextureSetFrameDelayMethodBind):
    animatedTextureSetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"set_frame_delay")
  var
    godotBoundArg0 = 107'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  animatedTextureSetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame107texture(self: AnimatedTexture): Texture =
  if isNil(animatedTextureGetFrameTextureMethodBind):
    animatedTextureGetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"get_frame_texture")
  var
    godotBoundArg0 = 107'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  animatedTextureGetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

proc `frame107texture=`(self: AnimatedTexture; val: Texture) =
  if isNil(animatedTextureSetFrameTextureMethodBind):
    animatedTextureSetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"set_frame_texture")
  var
    godotBoundArg0 = 107'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  let argToPassToGodot1 = if not val.isNil:
    val.godotObject
  else:
    nil
  argsToPassToGodot[][1] = argToPassToGodot1
  var ptrCallRet: pointer
  animatedTextureSetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame108delaySec(self: AnimatedTexture): float64 =
  if isNil(animatedTextureGetFrameDelayMethodBind):
    animatedTextureGetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"get_frame_delay")
  var
    godotBoundArg0 = 108'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animatedTextureGetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc `frame108delaySec=`(self: AnimatedTexture; val: float64) =
  if isNil(animatedTextureSetFrameDelayMethodBind):
    animatedTextureSetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"set_frame_delay")
  var
    godotBoundArg0 = 108'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  animatedTextureSetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame108texture(self: AnimatedTexture): Texture =
  if isNil(animatedTextureGetFrameTextureMethodBind):
    animatedTextureGetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"get_frame_texture")
  var
    godotBoundArg0 = 108'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  animatedTextureGetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

proc `frame108texture=`(self: AnimatedTexture; val: Texture) =
  if isNil(animatedTextureSetFrameTextureMethodBind):
    animatedTextureSetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"set_frame_texture")
  var
    godotBoundArg0 = 108'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  let argToPassToGodot1 = if not val.isNil:
    val.godotObject
  else:
    nil
  argsToPassToGodot[][1] = argToPassToGodot1
  var ptrCallRet: pointer
  animatedTextureSetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame109delaySec(self: AnimatedTexture): float64 =
  if isNil(animatedTextureGetFrameDelayMethodBind):
    animatedTextureGetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"get_frame_delay")
  var
    godotBoundArg0 = 109'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animatedTextureGetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc `frame109delaySec=`(self: AnimatedTexture; val: float64) =
  if isNil(animatedTextureSetFrameDelayMethodBind):
    animatedTextureSetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"set_frame_delay")
  var
    godotBoundArg0 = 109'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  animatedTextureSetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame109texture(self: AnimatedTexture): Texture =
  if isNil(animatedTextureGetFrameTextureMethodBind):
    animatedTextureGetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"get_frame_texture")
  var
    godotBoundArg0 = 109'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  animatedTextureGetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

proc `frame109texture=`(self: AnimatedTexture; val: Texture) =
  if isNil(animatedTextureSetFrameTextureMethodBind):
    animatedTextureSetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"set_frame_texture")
  var
    godotBoundArg0 = 109'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  let argToPassToGodot1 = if not val.isNil:
    val.godotObject
  else:
    nil
  argsToPassToGodot[][1] = argToPassToGodot1
  var ptrCallRet: pointer
  animatedTextureSetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame11delaySec(self: AnimatedTexture): float64 =
  if isNil(animatedTextureGetFrameDelayMethodBind):
    animatedTextureGetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"get_frame_delay")
  var
    godotBoundArg0 = 11'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animatedTextureGetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc `frame11delaySec=`(self: AnimatedTexture; val: float64) =
  if isNil(animatedTextureSetFrameDelayMethodBind):
    animatedTextureSetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"set_frame_delay")
  var
    godotBoundArg0 = 11'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  animatedTextureSetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame11texture(self: AnimatedTexture): Texture =
  if isNil(animatedTextureGetFrameTextureMethodBind):
    animatedTextureGetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"get_frame_texture")
  var
    godotBoundArg0 = 11'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  animatedTextureGetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

proc `frame11texture=`(self: AnimatedTexture; val: Texture) =
  if isNil(animatedTextureSetFrameTextureMethodBind):
    animatedTextureSetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"set_frame_texture")
  var
    godotBoundArg0 = 11'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  let argToPassToGodot1 = if not val.isNil:
    val.godotObject
  else:
    nil
  argsToPassToGodot[][1] = argToPassToGodot1
  var ptrCallRet: pointer
  animatedTextureSetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame110delaySec(self: AnimatedTexture): float64 =
  if isNil(animatedTextureGetFrameDelayMethodBind):
    animatedTextureGetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"get_frame_delay")
  var
    godotBoundArg0 = 110'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animatedTextureGetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc `frame110delaySec=`(self: AnimatedTexture; val: float64) =
  if isNil(animatedTextureSetFrameDelayMethodBind):
    animatedTextureSetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"set_frame_delay")
  var
    godotBoundArg0 = 110'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  animatedTextureSetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame110texture(self: AnimatedTexture): Texture =
  if isNil(animatedTextureGetFrameTextureMethodBind):
    animatedTextureGetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"get_frame_texture")
  var
    godotBoundArg0 = 110'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  animatedTextureGetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

proc `frame110texture=`(self: AnimatedTexture; val: Texture) =
  if isNil(animatedTextureSetFrameTextureMethodBind):
    animatedTextureSetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"set_frame_texture")
  var
    godotBoundArg0 = 110'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  let argToPassToGodot1 = if not val.isNil:
    val.godotObject
  else:
    nil
  argsToPassToGodot[][1] = argToPassToGodot1
  var ptrCallRet: pointer
  animatedTextureSetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame111delaySec(self: AnimatedTexture): float64 =
  if isNil(animatedTextureGetFrameDelayMethodBind):
    animatedTextureGetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"get_frame_delay")
  var
    godotBoundArg0 = 111'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animatedTextureGetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc `frame111delaySec=`(self: AnimatedTexture; val: float64) =
  if isNil(animatedTextureSetFrameDelayMethodBind):
    animatedTextureSetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"set_frame_delay")
  var
    godotBoundArg0 = 111'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  animatedTextureSetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame111texture(self: AnimatedTexture): Texture =
  if isNil(animatedTextureGetFrameTextureMethodBind):
    animatedTextureGetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"get_frame_texture")
  var
    godotBoundArg0 = 111'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  animatedTextureGetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

proc `frame111texture=`(self: AnimatedTexture; val: Texture) =
  if isNil(animatedTextureSetFrameTextureMethodBind):
    animatedTextureSetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"set_frame_texture")
  var
    godotBoundArg0 = 111'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  let argToPassToGodot1 = if not val.isNil:
    val.godotObject
  else:
    nil
  argsToPassToGodot[][1] = argToPassToGodot1
  var ptrCallRet: pointer
  animatedTextureSetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame112delaySec(self: AnimatedTexture): float64 =
  if isNil(animatedTextureGetFrameDelayMethodBind):
    animatedTextureGetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"get_frame_delay")
  var
    godotBoundArg0 = 112'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animatedTextureGetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc `frame112delaySec=`(self: AnimatedTexture; val: float64) =
  if isNil(animatedTextureSetFrameDelayMethodBind):
    animatedTextureSetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"set_frame_delay")
  var
    godotBoundArg0 = 112'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  animatedTextureSetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame112texture(self: AnimatedTexture): Texture =
  if isNil(animatedTextureGetFrameTextureMethodBind):
    animatedTextureGetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"get_frame_texture")
  var
    godotBoundArg0 = 112'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  animatedTextureGetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

proc `frame112texture=`(self: AnimatedTexture; val: Texture) =
  if isNil(animatedTextureSetFrameTextureMethodBind):
    animatedTextureSetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"set_frame_texture")
  var
    godotBoundArg0 = 112'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  let argToPassToGodot1 = if not val.isNil:
    val.godotObject
  else:
    nil
  argsToPassToGodot[][1] = argToPassToGodot1
  var ptrCallRet: pointer
  animatedTextureSetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame113delaySec(self: AnimatedTexture): float64 =
  if isNil(animatedTextureGetFrameDelayMethodBind):
    animatedTextureGetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"get_frame_delay")
  var
    godotBoundArg0 = 113'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animatedTextureGetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc `frame113delaySec=`(self: AnimatedTexture; val: float64) =
  if isNil(animatedTextureSetFrameDelayMethodBind):
    animatedTextureSetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"set_frame_delay")
  var
    godotBoundArg0 = 113'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  animatedTextureSetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame113texture(self: AnimatedTexture): Texture =
  if isNil(animatedTextureGetFrameTextureMethodBind):
    animatedTextureGetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"get_frame_texture")
  var
    godotBoundArg0 = 113'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  animatedTextureGetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

proc `frame113texture=`(self: AnimatedTexture; val: Texture) =
  if isNil(animatedTextureSetFrameTextureMethodBind):
    animatedTextureSetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"set_frame_texture")
  var
    godotBoundArg0 = 113'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  let argToPassToGodot1 = if not val.isNil:
    val.godotObject
  else:
    nil
  argsToPassToGodot[][1] = argToPassToGodot1
  var ptrCallRet: pointer
  animatedTextureSetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame114delaySec(self: AnimatedTexture): float64 =
  if isNil(animatedTextureGetFrameDelayMethodBind):
    animatedTextureGetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"get_frame_delay")
  var
    godotBoundArg0 = 114'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animatedTextureGetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc `frame114delaySec=`(self: AnimatedTexture; val: float64) =
  if isNil(animatedTextureSetFrameDelayMethodBind):
    animatedTextureSetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"set_frame_delay")
  var
    godotBoundArg0 = 114'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  animatedTextureSetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame114texture(self: AnimatedTexture): Texture =
  if isNil(animatedTextureGetFrameTextureMethodBind):
    animatedTextureGetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"get_frame_texture")
  var
    godotBoundArg0 = 114'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  animatedTextureGetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

proc `frame114texture=`(self: AnimatedTexture; val: Texture) =
  if isNil(animatedTextureSetFrameTextureMethodBind):
    animatedTextureSetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"set_frame_texture")
  var
    godotBoundArg0 = 114'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  let argToPassToGodot1 = if not val.isNil:
    val.godotObject
  else:
    nil
  argsToPassToGodot[][1] = argToPassToGodot1
  var ptrCallRet: pointer
  animatedTextureSetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame115delaySec(self: AnimatedTexture): float64 =
  if isNil(animatedTextureGetFrameDelayMethodBind):
    animatedTextureGetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"get_frame_delay")
  var
    godotBoundArg0 = 115'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animatedTextureGetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc `frame115delaySec=`(self: AnimatedTexture; val: float64) =
  if isNil(animatedTextureSetFrameDelayMethodBind):
    animatedTextureSetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"set_frame_delay")
  var
    godotBoundArg0 = 115'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  animatedTextureSetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame115texture(self: AnimatedTexture): Texture =
  if isNil(animatedTextureGetFrameTextureMethodBind):
    animatedTextureGetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"get_frame_texture")
  var
    godotBoundArg0 = 115'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  animatedTextureGetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

proc `frame115texture=`(self: AnimatedTexture; val: Texture) =
  if isNil(animatedTextureSetFrameTextureMethodBind):
    animatedTextureSetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"set_frame_texture")
  var
    godotBoundArg0 = 115'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  let argToPassToGodot1 = if not val.isNil:
    val.godotObject
  else:
    nil
  argsToPassToGodot[][1] = argToPassToGodot1
  var ptrCallRet: pointer
  animatedTextureSetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame116delaySec(self: AnimatedTexture): float64 =
  if isNil(animatedTextureGetFrameDelayMethodBind):
    animatedTextureGetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"get_frame_delay")
  var
    godotBoundArg0 = 116'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animatedTextureGetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc `frame116delaySec=`(self: AnimatedTexture; val: float64) =
  if isNil(animatedTextureSetFrameDelayMethodBind):
    animatedTextureSetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"set_frame_delay")
  var
    godotBoundArg0 = 116'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  animatedTextureSetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame116texture(self: AnimatedTexture): Texture =
  if isNil(animatedTextureGetFrameTextureMethodBind):
    animatedTextureGetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"get_frame_texture")
  var
    godotBoundArg0 = 116'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  animatedTextureGetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

proc `frame116texture=`(self: AnimatedTexture; val: Texture) =
  if isNil(animatedTextureSetFrameTextureMethodBind):
    animatedTextureSetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"set_frame_texture")
  var
    godotBoundArg0 = 116'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  let argToPassToGodot1 = if not val.isNil:
    val.godotObject
  else:
    nil
  argsToPassToGodot[][1] = argToPassToGodot1
  var ptrCallRet: pointer
  animatedTextureSetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame117delaySec(self: AnimatedTexture): float64 =
  if isNil(animatedTextureGetFrameDelayMethodBind):
    animatedTextureGetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"get_frame_delay")
  var
    godotBoundArg0 = 117'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animatedTextureGetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc `frame117delaySec=`(self: AnimatedTexture; val: float64) =
  if isNil(animatedTextureSetFrameDelayMethodBind):
    animatedTextureSetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"set_frame_delay")
  var
    godotBoundArg0 = 117'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  animatedTextureSetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame117texture(self: AnimatedTexture): Texture =
  if isNil(animatedTextureGetFrameTextureMethodBind):
    animatedTextureGetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"get_frame_texture")
  var
    godotBoundArg0 = 117'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  animatedTextureGetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

proc `frame117texture=`(self: AnimatedTexture; val: Texture) =
  if isNil(animatedTextureSetFrameTextureMethodBind):
    animatedTextureSetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"set_frame_texture")
  var
    godotBoundArg0 = 117'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  let argToPassToGodot1 = if not val.isNil:
    val.godotObject
  else:
    nil
  argsToPassToGodot[][1] = argToPassToGodot1
  var ptrCallRet: pointer
  animatedTextureSetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame118delaySec(self: AnimatedTexture): float64 =
  if isNil(animatedTextureGetFrameDelayMethodBind):
    animatedTextureGetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"get_frame_delay")
  var
    godotBoundArg0 = 118'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animatedTextureGetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc `frame118delaySec=`(self: AnimatedTexture; val: float64) =
  if isNil(animatedTextureSetFrameDelayMethodBind):
    animatedTextureSetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"set_frame_delay")
  var
    godotBoundArg0 = 118'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  animatedTextureSetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame118texture(self: AnimatedTexture): Texture =
  if isNil(animatedTextureGetFrameTextureMethodBind):
    animatedTextureGetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"get_frame_texture")
  var
    godotBoundArg0 = 118'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  animatedTextureGetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

proc `frame118texture=`(self: AnimatedTexture; val: Texture) =
  if isNil(animatedTextureSetFrameTextureMethodBind):
    animatedTextureSetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"set_frame_texture")
  var
    godotBoundArg0 = 118'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  let argToPassToGodot1 = if not val.isNil:
    val.godotObject
  else:
    nil
  argsToPassToGodot[][1] = argToPassToGodot1
  var ptrCallRet: pointer
  animatedTextureSetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame119delaySec(self: AnimatedTexture): float64 =
  if isNil(animatedTextureGetFrameDelayMethodBind):
    animatedTextureGetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"get_frame_delay")
  var
    godotBoundArg0 = 119'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animatedTextureGetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc `frame119delaySec=`(self: AnimatedTexture; val: float64) =
  if isNil(animatedTextureSetFrameDelayMethodBind):
    animatedTextureSetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"set_frame_delay")
  var
    godotBoundArg0 = 119'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  animatedTextureSetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame119texture(self: AnimatedTexture): Texture =
  if isNil(animatedTextureGetFrameTextureMethodBind):
    animatedTextureGetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"get_frame_texture")
  var
    godotBoundArg0 = 119'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  animatedTextureGetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

proc `frame119texture=`(self: AnimatedTexture; val: Texture) =
  if isNil(animatedTextureSetFrameTextureMethodBind):
    animatedTextureSetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"set_frame_texture")
  var
    godotBoundArg0 = 119'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  let argToPassToGodot1 = if not val.isNil:
    val.godotObject
  else:
    nil
  argsToPassToGodot[][1] = argToPassToGodot1
  var ptrCallRet: pointer
  animatedTextureSetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame12delaySec(self: AnimatedTexture): float64 =
  if isNil(animatedTextureGetFrameDelayMethodBind):
    animatedTextureGetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"get_frame_delay")
  var
    godotBoundArg0 = 12'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animatedTextureGetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc `frame12delaySec=`(self: AnimatedTexture; val: float64) =
  if isNil(animatedTextureSetFrameDelayMethodBind):
    animatedTextureSetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"set_frame_delay")
  var
    godotBoundArg0 = 12'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  animatedTextureSetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame12texture(self: AnimatedTexture): Texture =
  if isNil(animatedTextureGetFrameTextureMethodBind):
    animatedTextureGetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"get_frame_texture")
  var
    godotBoundArg0 = 12'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  animatedTextureGetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

proc `frame12texture=`(self: AnimatedTexture; val: Texture) =
  if isNil(animatedTextureSetFrameTextureMethodBind):
    animatedTextureSetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"set_frame_texture")
  var
    godotBoundArg0 = 12'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  let argToPassToGodot1 = if not val.isNil:
    val.godotObject
  else:
    nil
  argsToPassToGodot[][1] = argToPassToGodot1
  var ptrCallRet: pointer
  animatedTextureSetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame120delaySec(self: AnimatedTexture): float64 =
  if isNil(animatedTextureGetFrameDelayMethodBind):
    animatedTextureGetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"get_frame_delay")
  var
    godotBoundArg0 = 120'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animatedTextureGetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc `frame120delaySec=`(self: AnimatedTexture; val: float64) =
  if isNil(animatedTextureSetFrameDelayMethodBind):
    animatedTextureSetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"set_frame_delay")
  var
    godotBoundArg0 = 120'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  animatedTextureSetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame120texture(self: AnimatedTexture): Texture =
  if isNil(animatedTextureGetFrameTextureMethodBind):
    animatedTextureGetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"get_frame_texture")
  var
    godotBoundArg0 = 120'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  animatedTextureGetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

proc `frame120texture=`(self: AnimatedTexture; val: Texture) =
  if isNil(animatedTextureSetFrameTextureMethodBind):
    animatedTextureSetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"set_frame_texture")
  var
    godotBoundArg0 = 120'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  let argToPassToGodot1 = if not val.isNil:
    val.godotObject
  else:
    nil
  argsToPassToGodot[][1] = argToPassToGodot1
  var ptrCallRet: pointer
  animatedTextureSetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame121delaySec(self: AnimatedTexture): float64 =
  if isNil(animatedTextureGetFrameDelayMethodBind):
    animatedTextureGetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"get_frame_delay")
  var
    godotBoundArg0 = 121'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animatedTextureGetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc `frame121delaySec=`(self: AnimatedTexture; val: float64) =
  if isNil(animatedTextureSetFrameDelayMethodBind):
    animatedTextureSetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"set_frame_delay")
  var
    godotBoundArg0 = 121'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  animatedTextureSetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame121texture(self: AnimatedTexture): Texture =
  if isNil(animatedTextureGetFrameTextureMethodBind):
    animatedTextureGetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"get_frame_texture")
  var
    godotBoundArg0 = 121'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  animatedTextureGetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

proc `frame121texture=`(self: AnimatedTexture; val: Texture) =
  if isNil(animatedTextureSetFrameTextureMethodBind):
    animatedTextureSetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"set_frame_texture")
  var
    godotBoundArg0 = 121'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  let argToPassToGodot1 = if not val.isNil:
    val.godotObject
  else:
    nil
  argsToPassToGodot[][1] = argToPassToGodot1
  var ptrCallRet: pointer
  animatedTextureSetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame122delaySec(self: AnimatedTexture): float64 =
  if isNil(animatedTextureGetFrameDelayMethodBind):
    animatedTextureGetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"get_frame_delay")
  var
    godotBoundArg0 = 122'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animatedTextureGetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc `frame122delaySec=`(self: AnimatedTexture; val: float64) =
  if isNil(animatedTextureSetFrameDelayMethodBind):
    animatedTextureSetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"set_frame_delay")
  var
    godotBoundArg0 = 122'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  animatedTextureSetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame122texture(self: AnimatedTexture): Texture =
  if isNil(animatedTextureGetFrameTextureMethodBind):
    animatedTextureGetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"get_frame_texture")
  var
    godotBoundArg0 = 122'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  animatedTextureGetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

proc `frame122texture=`(self: AnimatedTexture; val: Texture) =
  if isNil(animatedTextureSetFrameTextureMethodBind):
    animatedTextureSetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"set_frame_texture")
  var
    godotBoundArg0 = 122'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  let argToPassToGodot1 = if not val.isNil:
    val.godotObject
  else:
    nil
  argsToPassToGodot[][1] = argToPassToGodot1
  var ptrCallRet: pointer
  animatedTextureSetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame123delaySec(self: AnimatedTexture): float64 =
  if isNil(animatedTextureGetFrameDelayMethodBind):
    animatedTextureGetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"get_frame_delay")
  var
    godotBoundArg0 = 123'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animatedTextureGetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc `frame123delaySec=`(self: AnimatedTexture; val: float64) =
  if isNil(animatedTextureSetFrameDelayMethodBind):
    animatedTextureSetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"set_frame_delay")
  var
    godotBoundArg0 = 123'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  animatedTextureSetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame123texture(self: AnimatedTexture): Texture =
  if isNil(animatedTextureGetFrameTextureMethodBind):
    animatedTextureGetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"get_frame_texture")
  var
    godotBoundArg0 = 123'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  animatedTextureGetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

proc `frame123texture=`(self: AnimatedTexture; val: Texture) =
  if isNil(animatedTextureSetFrameTextureMethodBind):
    animatedTextureSetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"set_frame_texture")
  var
    godotBoundArg0 = 123'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  let argToPassToGodot1 = if not val.isNil:
    val.godotObject
  else:
    nil
  argsToPassToGodot[][1] = argToPassToGodot1
  var ptrCallRet: pointer
  animatedTextureSetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame124delaySec(self: AnimatedTexture): float64 =
  if isNil(animatedTextureGetFrameDelayMethodBind):
    animatedTextureGetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"get_frame_delay")
  var
    godotBoundArg0 = 124'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animatedTextureGetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc `frame124delaySec=`(self: AnimatedTexture; val: float64) =
  if isNil(animatedTextureSetFrameDelayMethodBind):
    animatedTextureSetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"set_frame_delay")
  var
    godotBoundArg0 = 124'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  animatedTextureSetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame124texture(self: AnimatedTexture): Texture =
  if isNil(animatedTextureGetFrameTextureMethodBind):
    animatedTextureGetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"get_frame_texture")
  var
    godotBoundArg0 = 124'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  animatedTextureGetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

proc `frame124texture=`(self: AnimatedTexture; val: Texture) =
  if isNil(animatedTextureSetFrameTextureMethodBind):
    animatedTextureSetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"set_frame_texture")
  var
    godotBoundArg0 = 124'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  let argToPassToGodot1 = if not val.isNil:
    val.godotObject
  else:
    nil
  argsToPassToGodot[][1] = argToPassToGodot1
  var ptrCallRet: pointer
  animatedTextureSetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame125delaySec(self: AnimatedTexture): float64 =
  if isNil(animatedTextureGetFrameDelayMethodBind):
    animatedTextureGetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"get_frame_delay")
  var
    godotBoundArg0 = 125'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animatedTextureGetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc `frame125delaySec=`(self: AnimatedTexture; val: float64) =
  if isNil(animatedTextureSetFrameDelayMethodBind):
    animatedTextureSetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"set_frame_delay")
  var
    godotBoundArg0 = 125'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  animatedTextureSetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame125texture(self: AnimatedTexture): Texture =
  if isNil(animatedTextureGetFrameTextureMethodBind):
    animatedTextureGetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"get_frame_texture")
  var
    godotBoundArg0 = 125'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  animatedTextureGetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

proc `frame125texture=`(self: AnimatedTexture; val: Texture) =
  if isNil(animatedTextureSetFrameTextureMethodBind):
    animatedTextureSetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"set_frame_texture")
  var
    godotBoundArg0 = 125'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  let argToPassToGodot1 = if not val.isNil:
    val.godotObject
  else:
    nil
  argsToPassToGodot[][1] = argToPassToGodot1
  var ptrCallRet: pointer
  animatedTextureSetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame126delaySec(self: AnimatedTexture): float64 =
  if isNil(animatedTextureGetFrameDelayMethodBind):
    animatedTextureGetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"get_frame_delay")
  var
    godotBoundArg0 = 126'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animatedTextureGetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc `frame126delaySec=`(self: AnimatedTexture; val: float64) =
  if isNil(animatedTextureSetFrameDelayMethodBind):
    animatedTextureSetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"set_frame_delay")
  var
    godotBoundArg0 = 126'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  animatedTextureSetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame126texture(self: AnimatedTexture): Texture =
  if isNil(animatedTextureGetFrameTextureMethodBind):
    animatedTextureGetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"get_frame_texture")
  var
    godotBoundArg0 = 126'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  animatedTextureGetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

proc `frame126texture=`(self: AnimatedTexture; val: Texture) =
  if isNil(animatedTextureSetFrameTextureMethodBind):
    animatedTextureSetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"set_frame_texture")
  var
    godotBoundArg0 = 126'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  let argToPassToGodot1 = if not val.isNil:
    val.godotObject
  else:
    nil
  argsToPassToGodot[][1] = argToPassToGodot1
  var ptrCallRet: pointer
  animatedTextureSetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame127delaySec(self: AnimatedTexture): float64 =
  if isNil(animatedTextureGetFrameDelayMethodBind):
    animatedTextureGetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"get_frame_delay")
  var
    godotBoundArg0 = 127'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animatedTextureGetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc `frame127delaySec=`(self: AnimatedTexture; val: float64) =
  if isNil(animatedTextureSetFrameDelayMethodBind):
    animatedTextureSetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"set_frame_delay")
  var
    godotBoundArg0 = 127'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  animatedTextureSetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame127texture(self: AnimatedTexture): Texture =
  if isNil(animatedTextureGetFrameTextureMethodBind):
    animatedTextureGetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"get_frame_texture")
  var
    godotBoundArg0 = 127'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  animatedTextureGetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

proc `frame127texture=`(self: AnimatedTexture; val: Texture) =
  if isNil(animatedTextureSetFrameTextureMethodBind):
    animatedTextureSetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"set_frame_texture")
  var
    godotBoundArg0 = 127'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  let argToPassToGodot1 = if not val.isNil:
    val.godotObject
  else:
    nil
  argsToPassToGodot[][1] = argToPassToGodot1
  var ptrCallRet: pointer
  animatedTextureSetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame128delaySec(self: AnimatedTexture): float64 =
  if isNil(animatedTextureGetFrameDelayMethodBind):
    animatedTextureGetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"get_frame_delay")
  var
    godotBoundArg0 = 128'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animatedTextureGetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc `frame128delaySec=`(self: AnimatedTexture; val: float64) =
  if isNil(animatedTextureSetFrameDelayMethodBind):
    animatedTextureSetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"set_frame_delay")
  var
    godotBoundArg0 = 128'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  animatedTextureSetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame128texture(self: AnimatedTexture): Texture =
  if isNil(animatedTextureGetFrameTextureMethodBind):
    animatedTextureGetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"get_frame_texture")
  var
    godotBoundArg0 = 128'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  animatedTextureGetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

proc `frame128texture=`(self: AnimatedTexture; val: Texture) =
  if isNil(animatedTextureSetFrameTextureMethodBind):
    animatedTextureSetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"set_frame_texture")
  var
    godotBoundArg0 = 128'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  let argToPassToGodot1 = if not val.isNil:
    val.godotObject
  else:
    nil
  argsToPassToGodot[][1] = argToPassToGodot1
  var ptrCallRet: pointer
  animatedTextureSetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame129delaySec(self: AnimatedTexture): float64 =
  if isNil(animatedTextureGetFrameDelayMethodBind):
    animatedTextureGetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"get_frame_delay")
  var
    godotBoundArg0 = 129'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animatedTextureGetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc `frame129delaySec=`(self: AnimatedTexture; val: float64) =
  if isNil(animatedTextureSetFrameDelayMethodBind):
    animatedTextureSetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"set_frame_delay")
  var
    godotBoundArg0 = 129'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  animatedTextureSetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame129texture(self: AnimatedTexture): Texture =
  if isNil(animatedTextureGetFrameTextureMethodBind):
    animatedTextureGetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"get_frame_texture")
  var
    godotBoundArg0 = 129'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  animatedTextureGetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

proc `frame129texture=`(self: AnimatedTexture; val: Texture) =
  if isNil(animatedTextureSetFrameTextureMethodBind):
    animatedTextureSetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"set_frame_texture")
  var
    godotBoundArg0 = 129'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  let argToPassToGodot1 = if not val.isNil:
    val.godotObject
  else:
    nil
  argsToPassToGodot[][1] = argToPassToGodot1
  var ptrCallRet: pointer
  animatedTextureSetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame13delaySec(self: AnimatedTexture): float64 =
  if isNil(animatedTextureGetFrameDelayMethodBind):
    animatedTextureGetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"get_frame_delay")
  var
    godotBoundArg0 = 13'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animatedTextureGetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc `frame13delaySec=`(self: AnimatedTexture; val: float64) =
  if isNil(animatedTextureSetFrameDelayMethodBind):
    animatedTextureSetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"set_frame_delay")
  var
    godotBoundArg0 = 13'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  animatedTextureSetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame13texture(self: AnimatedTexture): Texture =
  if isNil(animatedTextureGetFrameTextureMethodBind):
    animatedTextureGetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"get_frame_texture")
  var
    godotBoundArg0 = 13'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  animatedTextureGetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

proc `frame13texture=`(self: AnimatedTexture; val: Texture) =
  if isNil(animatedTextureSetFrameTextureMethodBind):
    animatedTextureSetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"set_frame_texture")
  var
    godotBoundArg0 = 13'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  let argToPassToGodot1 = if not val.isNil:
    val.godotObject
  else:
    nil
  argsToPassToGodot[][1] = argToPassToGodot1
  var ptrCallRet: pointer
  animatedTextureSetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame130delaySec(self: AnimatedTexture): float64 =
  if isNil(animatedTextureGetFrameDelayMethodBind):
    animatedTextureGetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"get_frame_delay")
  var
    godotBoundArg0 = 130'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animatedTextureGetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc `frame130delaySec=`(self: AnimatedTexture; val: float64) =
  if isNil(animatedTextureSetFrameDelayMethodBind):
    animatedTextureSetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"set_frame_delay")
  var
    godotBoundArg0 = 130'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  animatedTextureSetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame130texture(self: AnimatedTexture): Texture =
  if isNil(animatedTextureGetFrameTextureMethodBind):
    animatedTextureGetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"get_frame_texture")
  var
    godotBoundArg0 = 130'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  animatedTextureGetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

proc `frame130texture=`(self: AnimatedTexture; val: Texture) =
  if isNil(animatedTextureSetFrameTextureMethodBind):
    animatedTextureSetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"set_frame_texture")
  var
    godotBoundArg0 = 130'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  let argToPassToGodot1 = if not val.isNil:
    val.godotObject
  else:
    nil
  argsToPassToGodot[][1] = argToPassToGodot1
  var ptrCallRet: pointer
  animatedTextureSetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame131delaySec(self: AnimatedTexture): float64 =
  if isNil(animatedTextureGetFrameDelayMethodBind):
    animatedTextureGetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"get_frame_delay")
  var
    godotBoundArg0 = 131'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animatedTextureGetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc `frame131delaySec=`(self: AnimatedTexture; val: float64) =
  if isNil(animatedTextureSetFrameDelayMethodBind):
    animatedTextureSetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"set_frame_delay")
  var
    godotBoundArg0 = 131'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  animatedTextureSetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame131texture(self: AnimatedTexture): Texture =
  if isNil(animatedTextureGetFrameTextureMethodBind):
    animatedTextureGetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"get_frame_texture")
  var
    godotBoundArg0 = 131'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  animatedTextureGetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

proc `frame131texture=`(self: AnimatedTexture; val: Texture) =
  if isNil(animatedTextureSetFrameTextureMethodBind):
    animatedTextureSetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"set_frame_texture")
  var
    godotBoundArg0 = 131'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  let argToPassToGodot1 = if not val.isNil:
    val.godotObject
  else:
    nil
  argsToPassToGodot[][1] = argToPassToGodot1
  var ptrCallRet: pointer
  animatedTextureSetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame132delaySec(self: AnimatedTexture): float64 =
  if isNil(animatedTextureGetFrameDelayMethodBind):
    animatedTextureGetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"get_frame_delay")
  var
    godotBoundArg0 = 132'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animatedTextureGetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc `frame132delaySec=`(self: AnimatedTexture; val: float64) =
  if isNil(animatedTextureSetFrameDelayMethodBind):
    animatedTextureSetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"set_frame_delay")
  var
    godotBoundArg0 = 132'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  animatedTextureSetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame132texture(self: AnimatedTexture): Texture =
  if isNil(animatedTextureGetFrameTextureMethodBind):
    animatedTextureGetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"get_frame_texture")
  var
    godotBoundArg0 = 132'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  animatedTextureGetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

proc `frame132texture=`(self: AnimatedTexture; val: Texture) =
  if isNil(animatedTextureSetFrameTextureMethodBind):
    animatedTextureSetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"set_frame_texture")
  var
    godotBoundArg0 = 132'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  let argToPassToGodot1 = if not val.isNil:
    val.godotObject
  else:
    nil
  argsToPassToGodot[][1] = argToPassToGodot1
  var ptrCallRet: pointer
  animatedTextureSetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame133delaySec(self: AnimatedTexture): float64 =
  if isNil(animatedTextureGetFrameDelayMethodBind):
    animatedTextureGetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"get_frame_delay")
  var
    godotBoundArg0 = 133'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animatedTextureGetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc `frame133delaySec=`(self: AnimatedTexture; val: float64) =
  if isNil(animatedTextureSetFrameDelayMethodBind):
    animatedTextureSetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"set_frame_delay")
  var
    godotBoundArg0 = 133'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  animatedTextureSetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame133texture(self: AnimatedTexture): Texture =
  if isNil(animatedTextureGetFrameTextureMethodBind):
    animatedTextureGetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"get_frame_texture")
  var
    godotBoundArg0 = 133'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  animatedTextureGetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

proc `frame133texture=`(self: AnimatedTexture; val: Texture) =
  if isNil(animatedTextureSetFrameTextureMethodBind):
    animatedTextureSetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"set_frame_texture")
  var
    godotBoundArg0 = 133'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  let argToPassToGodot1 = if not val.isNil:
    val.godotObject
  else:
    nil
  argsToPassToGodot[][1] = argToPassToGodot1
  var ptrCallRet: pointer
  animatedTextureSetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame134delaySec(self: AnimatedTexture): float64 =
  if isNil(animatedTextureGetFrameDelayMethodBind):
    animatedTextureGetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"get_frame_delay")
  var
    godotBoundArg0 = 134'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animatedTextureGetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc `frame134delaySec=`(self: AnimatedTexture; val: float64) =
  if isNil(animatedTextureSetFrameDelayMethodBind):
    animatedTextureSetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"set_frame_delay")
  var
    godotBoundArg0 = 134'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  animatedTextureSetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame134texture(self: AnimatedTexture): Texture =
  if isNil(animatedTextureGetFrameTextureMethodBind):
    animatedTextureGetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"get_frame_texture")
  var
    godotBoundArg0 = 134'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  animatedTextureGetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

proc `frame134texture=`(self: AnimatedTexture; val: Texture) =
  if isNil(animatedTextureSetFrameTextureMethodBind):
    animatedTextureSetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"set_frame_texture")
  var
    godotBoundArg0 = 134'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  let argToPassToGodot1 = if not val.isNil:
    val.godotObject
  else:
    nil
  argsToPassToGodot[][1] = argToPassToGodot1
  var ptrCallRet: pointer
  animatedTextureSetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame135delaySec(self: AnimatedTexture): float64 =
  if isNil(animatedTextureGetFrameDelayMethodBind):
    animatedTextureGetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"get_frame_delay")
  var
    godotBoundArg0 = 135'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animatedTextureGetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc `frame135delaySec=`(self: AnimatedTexture; val: float64) =
  if isNil(animatedTextureSetFrameDelayMethodBind):
    animatedTextureSetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"set_frame_delay")
  var
    godotBoundArg0 = 135'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  animatedTextureSetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame135texture(self: AnimatedTexture): Texture =
  if isNil(animatedTextureGetFrameTextureMethodBind):
    animatedTextureGetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"get_frame_texture")
  var
    godotBoundArg0 = 135'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  animatedTextureGetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

proc `frame135texture=`(self: AnimatedTexture; val: Texture) =
  if isNil(animatedTextureSetFrameTextureMethodBind):
    animatedTextureSetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"set_frame_texture")
  var
    godotBoundArg0 = 135'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  let argToPassToGodot1 = if not val.isNil:
    val.godotObject
  else:
    nil
  argsToPassToGodot[][1] = argToPassToGodot1
  var ptrCallRet: pointer
  animatedTextureSetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame136delaySec(self: AnimatedTexture): float64 =
  if isNil(animatedTextureGetFrameDelayMethodBind):
    animatedTextureGetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"get_frame_delay")
  var
    godotBoundArg0 = 136'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animatedTextureGetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc `frame136delaySec=`(self: AnimatedTexture; val: float64) =
  if isNil(animatedTextureSetFrameDelayMethodBind):
    animatedTextureSetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"set_frame_delay")
  var
    godotBoundArg0 = 136'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  animatedTextureSetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame136texture(self: AnimatedTexture): Texture =
  if isNil(animatedTextureGetFrameTextureMethodBind):
    animatedTextureGetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"get_frame_texture")
  var
    godotBoundArg0 = 136'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  animatedTextureGetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

proc `frame136texture=`(self: AnimatedTexture; val: Texture) =
  if isNil(animatedTextureSetFrameTextureMethodBind):
    animatedTextureSetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"set_frame_texture")
  var
    godotBoundArg0 = 136'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  let argToPassToGodot1 = if not val.isNil:
    val.godotObject
  else:
    nil
  argsToPassToGodot[][1] = argToPassToGodot1
  var ptrCallRet: pointer
  animatedTextureSetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame137delaySec(self: AnimatedTexture): float64 =
  if isNil(animatedTextureGetFrameDelayMethodBind):
    animatedTextureGetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"get_frame_delay")
  var
    godotBoundArg0 = 137'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animatedTextureGetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc `frame137delaySec=`(self: AnimatedTexture; val: float64) =
  if isNil(animatedTextureSetFrameDelayMethodBind):
    animatedTextureSetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"set_frame_delay")
  var
    godotBoundArg0 = 137'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  animatedTextureSetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame137texture(self: AnimatedTexture): Texture =
  if isNil(animatedTextureGetFrameTextureMethodBind):
    animatedTextureGetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"get_frame_texture")
  var
    godotBoundArg0 = 137'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  animatedTextureGetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

proc `frame137texture=`(self: AnimatedTexture; val: Texture) =
  if isNil(animatedTextureSetFrameTextureMethodBind):
    animatedTextureSetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"set_frame_texture")
  var
    godotBoundArg0 = 137'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  let argToPassToGodot1 = if not val.isNil:
    val.godotObject
  else:
    nil
  argsToPassToGodot[][1] = argToPassToGodot1
  var ptrCallRet: pointer
  animatedTextureSetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame138delaySec(self: AnimatedTexture): float64 =
  if isNil(animatedTextureGetFrameDelayMethodBind):
    animatedTextureGetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"get_frame_delay")
  var
    godotBoundArg0 = 138'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animatedTextureGetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc `frame138delaySec=`(self: AnimatedTexture; val: float64) =
  if isNil(animatedTextureSetFrameDelayMethodBind):
    animatedTextureSetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"set_frame_delay")
  var
    godotBoundArg0 = 138'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  animatedTextureSetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame138texture(self: AnimatedTexture): Texture =
  if isNil(animatedTextureGetFrameTextureMethodBind):
    animatedTextureGetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"get_frame_texture")
  var
    godotBoundArg0 = 138'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  animatedTextureGetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

proc `frame138texture=`(self: AnimatedTexture; val: Texture) =
  if isNil(animatedTextureSetFrameTextureMethodBind):
    animatedTextureSetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"set_frame_texture")
  var
    godotBoundArg0 = 138'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  let argToPassToGodot1 = if not val.isNil:
    val.godotObject
  else:
    nil
  argsToPassToGodot[][1] = argToPassToGodot1
  var ptrCallRet: pointer
  animatedTextureSetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame139delaySec(self: AnimatedTexture): float64 =
  if isNil(animatedTextureGetFrameDelayMethodBind):
    animatedTextureGetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"get_frame_delay")
  var
    godotBoundArg0 = 139'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animatedTextureGetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc `frame139delaySec=`(self: AnimatedTexture; val: float64) =
  if isNil(animatedTextureSetFrameDelayMethodBind):
    animatedTextureSetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"set_frame_delay")
  var
    godotBoundArg0 = 139'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  animatedTextureSetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame139texture(self: AnimatedTexture): Texture =
  if isNil(animatedTextureGetFrameTextureMethodBind):
    animatedTextureGetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"get_frame_texture")
  var
    godotBoundArg0 = 139'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  animatedTextureGetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

proc `frame139texture=`(self: AnimatedTexture; val: Texture) =
  if isNil(animatedTextureSetFrameTextureMethodBind):
    animatedTextureSetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"set_frame_texture")
  var
    godotBoundArg0 = 139'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  let argToPassToGodot1 = if not val.isNil:
    val.godotObject
  else:
    nil
  argsToPassToGodot[][1] = argToPassToGodot1
  var ptrCallRet: pointer
  animatedTextureSetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame14delaySec(self: AnimatedTexture): float64 =
  if isNil(animatedTextureGetFrameDelayMethodBind):
    animatedTextureGetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"get_frame_delay")
  var
    godotBoundArg0 = 14'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animatedTextureGetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc `frame14delaySec=`(self: AnimatedTexture; val: float64) =
  if isNil(animatedTextureSetFrameDelayMethodBind):
    animatedTextureSetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"set_frame_delay")
  var
    godotBoundArg0 = 14'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  animatedTextureSetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame14texture(self: AnimatedTexture): Texture =
  if isNil(animatedTextureGetFrameTextureMethodBind):
    animatedTextureGetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"get_frame_texture")
  var
    godotBoundArg0 = 14'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  animatedTextureGetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

proc `frame14texture=`(self: AnimatedTexture; val: Texture) =
  if isNil(animatedTextureSetFrameTextureMethodBind):
    animatedTextureSetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"set_frame_texture")
  var
    godotBoundArg0 = 14'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  let argToPassToGodot1 = if not val.isNil:
    val.godotObject
  else:
    nil
  argsToPassToGodot[][1] = argToPassToGodot1
  var ptrCallRet: pointer
  animatedTextureSetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame140delaySec(self: AnimatedTexture): float64 =
  if isNil(animatedTextureGetFrameDelayMethodBind):
    animatedTextureGetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"get_frame_delay")
  var
    godotBoundArg0 = 140'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animatedTextureGetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc `frame140delaySec=`(self: AnimatedTexture; val: float64) =
  if isNil(animatedTextureSetFrameDelayMethodBind):
    animatedTextureSetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"set_frame_delay")
  var
    godotBoundArg0 = 140'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  animatedTextureSetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame140texture(self: AnimatedTexture): Texture =
  if isNil(animatedTextureGetFrameTextureMethodBind):
    animatedTextureGetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"get_frame_texture")
  var
    godotBoundArg0 = 140'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  animatedTextureGetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

proc `frame140texture=`(self: AnimatedTexture; val: Texture) =
  if isNil(animatedTextureSetFrameTextureMethodBind):
    animatedTextureSetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"set_frame_texture")
  var
    godotBoundArg0 = 140'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  let argToPassToGodot1 = if not val.isNil:
    val.godotObject
  else:
    nil
  argsToPassToGodot[][1] = argToPassToGodot1
  var ptrCallRet: pointer
  animatedTextureSetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame141delaySec(self: AnimatedTexture): float64 =
  if isNil(animatedTextureGetFrameDelayMethodBind):
    animatedTextureGetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"get_frame_delay")
  var
    godotBoundArg0 = 141'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animatedTextureGetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc `frame141delaySec=`(self: AnimatedTexture; val: float64) =
  if isNil(animatedTextureSetFrameDelayMethodBind):
    animatedTextureSetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"set_frame_delay")
  var
    godotBoundArg0 = 141'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  animatedTextureSetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame141texture(self: AnimatedTexture): Texture =
  if isNil(animatedTextureGetFrameTextureMethodBind):
    animatedTextureGetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"get_frame_texture")
  var
    godotBoundArg0 = 141'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  animatedTextureGetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

proc `frame141texture=`(self: AnimatedTexture; val: Texture) =
  if isNil(animatedTextureSetFrameTextureMethodBind):
    animatedTextureSetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"set_frame_texture")
  var
    godotBoundArg0 = 141'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  let argToPassToGodot1 = if not val.isNil:
    val.godotObject
  else:
    nil
  argsToPassToGodot[][1] = argToPassToGodot1
  var ptrCallRet: pointer
  animatedTextureSetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame142delaySec(self: AnimatedTexture): float64 =
  if isNil(animatedTextureGetFrameDelayMethodBind):
    animatedTextureGetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"get_frame_delay")
  var
    godotBoundArg0 = 142'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animatedTextureGetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc `frame142delaySec=`(self: AnimatedTexture; val: float64) =
  if isNil(animatedTextureSetFrameDelayMethodBind):
    animatedTextureSetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"set_frame_delay")
  var
    godotBoundArg0 = 142'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  animatedTextureSetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame142texture(self: AnimatedTexture): Texture =
  if isNil(animatedTextureGetFrameTextureMethodBind):
    animatedTextureGetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"get_frame_texture")
  var
    godotBoundArg0 = 142'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  animatedTextureGetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

proc `frame142texture=`(self: AnimatedTexture; val: Texture) =
  if isNil(animatedTextureSetFrameTextureMethodBind):
    animatedTextureSetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"set_frame_texture")
  var
    godotBoundArg0 = 142'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  let argToPassToGodot1 = if not val.isNil:
    val.godotObject
  else:
    nil
  argsToPassToGodot[][1] = argToPassToGodot1
  var ptrCallRet: pointer
  animatedTextureSetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame143delaySec(self: AnimatedTexture): float64 =
  if isNil(animatedTextureGetFrameDelayMethodBind):
    animatedTextureGetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"get_frame_delay")
  var
    godotBoundArg0 = 143'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animatedTextureGetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc `frame143delaySec=`(self: AnimatedTexture; val: float64) =
  if isNil(animatedTextureSetFrameDelayMethodBind):
    animatedTextureSetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"set_frame_delay")
  var
    godotBoundArg0 = 143'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  animatedTextureSetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame143texture(self: AnimatedTexture): Texture =
  if isNil(animatedTextureGetFrameTextureMethodBind):
    animatedTextureGetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"get_frame_texture")
  var
    godotBoundArg0 = 143'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  animatedTextureGetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

proc `frame143texture=`(self: AnimatedTexture; val: Texture) =
  if isNil(animatedTextureSetFrameTextureMethodBind):
    animatedTextureSetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"set_frame_texture")
  var
    godotBoundArg0 = 143'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  let argToPassToGodot1 = if not val.isNil:
    val.godotObject
  else:
    nil
  argsToPassToGodot[][1] = argToPassToGodot1
  var ptrCallRet: pointer
  animatedTextureSetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame144delaySec(self: AnimatedTexture): float64 =
  if isNil(animatedTextureGetFrameDelayMethodBind):
    animatedTextureGetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"get_frame_delay")
  var
    godotBoundArg0 = 144'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animatedTextureGetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc `frame144delaySec=`(self: AnimatedTexture; val: float64) =
  if isNil(animatedTextureSetFrameDelayMethodBind):
    animatedTextureSetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"set_frame_delay")
  var
    godotBoundArg0 = 144'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  animatedTextureSetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame144texture(self: AnimatedTexture): Texture =
  if isNil(animatedTextureGetFrameTextureMethodBind):
    animatedTextureGetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"get_frame_texture")
  var
    godotBoundArg0 = 144'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  animatedTextureGetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

proc `frame144texture=`(self: AnimatedTexture; val: Texture) =
  if isNil(animatedTextureSetFrameTextureMethodBind):
    animatedTextureSetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"set_frame_texture")
  var
    godotBoundArg0 = 144'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  let argToPassToGodot1 = if not val.isNil:
    val.godotObject
  else:
    nil
  argsToPassToGodot[][1] = argToPassToGodot1
  var ptrCallRet: pointer
  animatedTextureSetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame145delaySec(self: AnimatedTexture): float64 =
  if isNil(animatedTextureGetFrameDelayMethodBind):
    animatedTextureGetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"get_frame_delay")
  var
    godotBoundArg0 = 145'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animatedTextureGetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc `frame145delaySec=`(self: AnimatedTexture; val: float64) =
  if isNil(animatedTextureSetFrameDelayMethodBind):
    animatedTextureSetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"set_frame_delay")
  var
    godotBoundArg0 = 145'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  animatedTextureSetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame145texture(self: AnimatedTexture): Texture =
  if isNil(animatedTextureGetFrameTextureMethodBind):
    animatedTextureGetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"get_frame_texture")
  var
    godotBoundArg0 = 145'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  animatedTextureGetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

proc `frame145texture=`(self: AnimatedTexture; val: Texture) =
  if isNil(animatedTextureSetFrameTextureMethodBind):
    animatedTextureSetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"set_frame_texture")
  var
    godotBoundArg0 = 145'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  let argToPassToGodot1 = if not val.isNil:
    val.godotObject
  else:
    nil
  argsToPassToGodot[][1] = argToPassToGodot1
  var ptrCallRet: pointer
  animatedTextureSetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame146delaySec(self: AnimatedTexture): float64 =
  if isNil(animatedTextureGetFrameDelayMethodBind):
    animatedTextureGetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"get_frame_delay")
  var
    godotBoundArg0 = 146'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animatedTextureGetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc `frame146delaySec=`(self: AnimatedTexture; val: float64) =
  if isNil(animatedTextureSetFrameDelayMethodBind):
    animatedTextureSetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"set_frame_delay")
  var
    godotBoundArg0 = 146'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  animatedTextureSetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame146texture(self: AnimatedTexture): Texture =
  if isNil(animatedTextureGetFrameTextureMethodBind):
    animatedTextureGetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"get_frame_texture")
  var
    godotBoundArg0 = 146'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  animatedTextureGetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

proc `frame146texture=`(self: AnimatedTexture; val: Texture) =
  if isNil(animatedTextureSetFrameTextureMethodBind):
    animatedTextureSetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"set_frame_texture")
  var
    godotBoundArg0 = 146'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  let argToPassToGodot1 = if not val.isNil:
    val.godotObject
  else:
    nil
  argsToPassToGodot[][1] = argToPassToGodot1
  var ptrCallRet: pointer
  animatedTextureSetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame147delaySec(self: AnimatedTexture): float64 =
  if isNil(animatedTextureGetFrameDelayMethodBind):
    animatedTextureGetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"get_frame_delay")
  var
    godotBoundArg0 = 147'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animatedTextureGetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc `frame147delaySec=`(self: AnimatedTexture; val: float64) =
  if isNil(animatedTextureSetFrameDelayMethodBind):
    animatedTextureSetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"set_frame_delay")
  var
    godotBoundArg0 = 147'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  animatedTextureSetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame147texture(self: AnimatedTexture): Texture =
  if isNil(animatedTextureGetFrameTextureMethodBind):
    animatedTextureGetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"get_frame_texture")
  var
    godotBoundArg0 = 147'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  animatedTextureGetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

proc `frame147texture=`(self: AnimatedTexture; val: Texture) =
  if isNil(animatedTextureSetFrameTextureMethodBind):
    animatedTextureSetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"set_frame_texture")
  var
    godotBoundArg0 = 147'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  let argToPassToGodot1 = if not val.isNil:
    val.godotObject
  else:
    nil
  argsToPassToGodot[][1] = argToPassToGodot1
  var ptrCallRet: pointer
  animatedTextureSetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame148delaySec(self: AnimatedTexture): float64 =
  if isNil(animatedTextureGetFrameDelayMethodBind):
    animatedTextureGetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"get_frame_delay")
  var
    godotBoundArg0 = 148'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animatedTextureGetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc `frame148delaySec=`(self: AnimatedTexture; val: float64) =
  if isNil(animatedTextureSetFrameDelayMethodBind):
    animatedTextureSetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"set_frame_delay")
  var
    godotBoundArg0 = 148'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  animatedTextureSetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame148texture(self: AnimatedTexture): Texture =
  if isNil(animatedTextureGetFrameTextureMethodBind):
    animatedTextureGetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"get_frame_texture")
  var
    godotBoundArg0 = 148'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  animatedTextureGetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

proc `frame148texture=`(self: AnimatedTexture; val: Texture) =
  if isNil(animatedTextureSetFrameTextureMethodBind):
    animatedTextureSetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"set_frame_texture")
  var
    godotBoundArg0 = 148'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  let argToPassToGodot1 = if not val.isNil:
    val.godotObject
  else:
    nil
  argsToPassToGodot[][1] = argToPassToGodot1
  var ptrCallRet: pointer
  animatedTextureSetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame149delaySec(self: AnimatedTexture): float64 =
  if isNil(animatedTextureGetFrameDelayMethodBind):
    animatedTextureGetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"get_frame_delay")
  var
    godotBoundArg0 = 149'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animatedTextureGetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc `frame149delaySec=`(self: AnimatedTexture; val: float64) =
  if isNil(animatedTextureSetFrameDelayMethodBind):
    animatedTextureSetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"set_frame_delay")
  var
    godotBoundArg0 = 149'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  animatedTextureSetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame149texture(self: AnimatedTexture): Texture =
  if isNil(animatedTextureGetFrameTextureMethodBind):
    animatedTextureGetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"get_frame_texture")
  var
    godotBoundArg0 = 149'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  animatedTextureGetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

proc `frame149texture=`(self: AnimatedTexture; val: Texture) =
  if isNil(animatedTextureSetFrameTextureMethodBind):
    animatedTextureSetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"set_frame_texture")
  var
    godotBoundArg0 = 149'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  let argToPassToGodot1 = if not val.isNil:
    val.godotObject
  else:
    nil
  argsToPassToGodot[][1] = argToPassToGodot1
  var ptrCallRet: pointer
  animatedTextureSetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame15delaySec(self: AnimatedTexture): float64 =
  if isNil(animatedTextureGetFrameDelayMethodBind):
    animatedTextureGetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"get_frame_delay")
  var
    godotBoundArg0 = 15'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animatedTextureGetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc `frame15delaySec=`(self: AnimatedTexture; val: float64) =
  if isNil(animatedTextureSetFrameDelayMethodBind):
    animatedTextureSetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"set_frame_delay")
  var
    godotBoundArg0 = 15'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  animatedTextureSetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame15texture(self: AnimatedTexture): Texture =
  if isNil(animatedTextureGetFrameTextureMethodBind):
    animatedTextureGetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"get_frame_texture")
  var
    godotBoundArg0 = 15'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  animatedTextureGetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

proc `frame15texture=`(self: AnimatedTexture; val: Texture) =
  if isNil(animatedTextureSetFrameTextureMethodBind):
    animatedTextureSetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"set_frame_texture")
  var
    godotBoundArg0 = 15'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  let argToPassToGodot1 = if not val.isNil:
    val.godotObject
  else:
    nil
  argsToPassToGodot[][1] = argToPassToGodot1
  var ptrCallRet: pointer
  animatedTextureSetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame150delaySec(self: AnimatedTexture): float64 =
  if isNil(animatedTextureGetFrameDelayMethodBind):
    animatedTextureGetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"get_frame_delay")
  var
    godotBoundArg0 = 150'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animatedTextureGetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc `frame150delaySec=`(self: AnimatedTexture; val: float64) =
  if isNil(animatedTextureSetFrameDelayMethodBind):
    animatedTextureSetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"set_frame_delay")
  var
    godotBoundArg0 = 150'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  animatedTextureSetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame150texture(self: AnimatedTexture): Texture =
  if isNil(animatedTextureGetFrameTextureMethodBind):
    animatedTextureGetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"get_frame_texture")
  var
    godotBoundArg0 = 150'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  animatedTextureGetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

proc `frame150texture=`(self: AnimatedTexture; val: Texture) =
  if isNil(animatedTextureSetFrameTextureMethodBind):
    animatedTextureSetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"set_frame_texture")
  var
    godotBoundArg0 = 150'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  let argToPassToGodot1 = if not val.isNil:
    val.godotObject
  else:
    nil
  argsToPassToGodot[][1] = argToPassToGodot1
  var ptrCallRet: pointer
  animatedTextureSetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame151delaySec(self: AnimatedTexture): float64 =
  if isNil(animatedTextureGetFrameDelayMethodBind):
    animatedTextureGetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"get_frame_delay")
  var
    godotBoundArg0 = 151'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animatedTextureGetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc `frame151delaySec=`(self: AnimatedTexture; val: float64) =
  if isNil(animatedTextureSetFrameDelayMethodBind):
    animatedTextureSetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"set_frame_delay")
  var
    godotBoundArg0 = 151'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  animatedTextureSetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame151texture(self: AnimatedTexture): Texture =
  if isNil(animatedTextureGetFrameTextureMethodBind):
    animatedTextureGetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"get_frame_texture")
  var
    godotBoundArg0 = 151'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  animatedTextureGetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

proc `frame151texture=`(self: AnimatedTexture; val: Texture) =
  if isNil(animatedTextureSetFrameTextureMethodBind):
    animatedTextureSetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"set_frame_texture")
  var
    godotBoundArg0 = 151'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  let argToPassToGodot1 = if not val.isNil:
    val.godotObject
  else:
    nil
  argsToPassToGodot[][1] = argToPassToGodot1
  var ptrCallRet: pointer
  animatedTextureSetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame152delaySec(self: AnimatedTexture): float64 =
  if isNil(animatedTextureGetFrameDelayMethodBind):
    animatedTextureGetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"get_frame_delay")
  var
    godotBoundArg0 = 152'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animatedTextureGetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc `frame152delaySec=`(self: AnimatedTexture; val: float64) =
  if isNil(animatedTextureSetFrameDelayMethodBind):
    animatedTextureSetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"set_frame_delay")
  var
    godotBoundArg0 = 152'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  animatedTextureSetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame152texture(self: AnimatedTexture): Texture =
  if isNil(animatedTextureGetFrameTextureMethodBind):
    animatedTextureGetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"get_frame_texture")
  var
    godotBoundArg0 = 152'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  animatedTextureGetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

proc `frame152texture=`(self: AnimatedTexture; val: Texture) =
  if isNil(animatedTextureSetFrameTextureMethodBind):
    animatedTextureSetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"set_frame_texture")
  var
    godotBoundArg0 = 152'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  let argToPassToGodot1 = if not val.isNil:
    val.godotObject
  else:
    nil
  argsToPassToGodot[][1] = argToPassToGodot1
  var ptrCallRet: pointer
  animatedTextureSetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame153delaySec(self: AnimatedTexture): float64 =
  if isNil(animatedTextureGetFrameDelayMethodBind):
    animatedTextureGetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"get_frame_delay")
  var
    godotBoundArg0 = 153'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animatedTextureGetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc `frame153delaySec=`(self: AnimatedTexture; val: float64) =
  if isNil(animatedTextureSetFrameDelayMethodBind):
    animatedTextureSetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"set_frame_delay")
  var
    godotBoundArg0 = 153'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  animatedTextureSetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame153texture(self: AnimatedTexture): Texture =
  if isNil(animatedTextureGetFrameTextureMethodBind):
    animatedTextureGetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"get_frame_texture")
  var
    godotBoundArg0 = 153'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  animatedTextureGetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

proc `frame153texture=`(self: AnimatedTexture; val: Texture) =
  if isNil(animatedTextureSetFrameTextureMethodBind):
    animatedTextureSetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"set_frame_texture")
  var
    godotBoundArg0 = 153'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  let argToPassToGodot1 = if not val.isNil:
    val.godotObject
  else:
    nil
  argsToPassToGodot[][1] = argToPassToGodot1
  var ptrCallRet: pointer
  animatedTextureSetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame154delaySec(self: AnimatedTexture): float64 =
  if isNil(animatedTextureGetFrameDelayMethodBind):
    animatedTextureGetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"get_frame_delay")
  var
    godotBoundArg0 = 154'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animatedTextureGetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc `frame154delaySec=`(self: AnimatedTexture; val: float64) =
  if isNil(animatedTextureSetFrameDelayMethodBind):
    animatedTextureSetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"set_frame_delay")
  var
    godotBoundArg0 = 154'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  animatedTextureSetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame154texture(self: AnimatedTexture): Texture =
  if isNil(animatedTextureGetFrameTextureMethodBind):
    animatedTextureGetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"get_frame_texture")
  var
    godotBoundArg0 = 154'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  animatedTextureGetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

proc `frame154texture=`(self: AnimatedTexture; val: Texture) =
  if isNil(animatedTextureSetFrameTextureMethodBind):
    animatedTextureSetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"set_frame_texture")
  var
    godotBoundArg0 = 154'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  let argToPassToGodot1 = if not val.isNil:
    val.godotObject
  else:
    nil
  argsToPassToGodot[][1] = argToPassToGodot1
  var ptrCallRet: pointer
  animatedTextureSetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame155delaySec(self: AnimatedTexture): float64 =
  if isNil(animatedTextureGetFrameDelayMethodBind):
    animatedTextureGetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"get_frame_delay")
  var
    godotBoundArg0 = 155'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animatedTextureGetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc `frame155delaySec=`(self: AnimatedTexture; val: float64) =
  if isNil(animatedTextureSetFrameDelayMethodBind):
    animatedTextureSetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"set_frame_delay")
  var
    godotBoundArg0 = 155'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  animatedTextureSetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame155texture(self: AnimatedTexture): Texture =
  if isNil(animatedTextureGetFrameTextureMethodBind):
    animatedTextureGetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"get_frame_texture")
  var
    godotBoundArg0 = 155'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  animatedTextureGetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

proc `frame155texture=`(self: AnimatedTexture; val: Texture) =
  if isNil(animatedTextureSetFrameTextureMethodBind):
    animatedTextureSetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"set_frame_texture")
  var
    godotBoundArg0 = 155'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  let argToPassToGodot1 = if not val.isNil:
    val.godotObject
  else:
    nil
  argsToPassToGodot[][1] = argToPassToGodot1
  var ptrCallRet: pointer
  animatedTextureSetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame156delaySec(self: AnimatedTexture): float64 =
  if isNil(animatedTextureGetFrameDelayMethodBind):
    animatedTextureGetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"get_frame_delay")
  var
    godotBoundArg0 = 156'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animatedTextureGetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc `frame156delaySec=`(self: AnimatedTexture; val: float64) =
  if isNil(animatedTextureSetFrameDelayMethodBind):
    animatedTextureSetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"set_frame_delay")
  var
    godotBoundArg0 = 156'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  animatedTextureSetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame156texture(self: AnimatedTexture): Texture =
  if isNil(animatedTextureGetFrameTextureMethodBind):
    animatedTextureGetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"get_frame_texture")
  var
    godotBoundArg0 = 156'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  animatedTextureGetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

proc `frame156texture=`(self: AnimatedTexture; val: Texture) =
  if isNil(animatedTextureSetFrameTextureMethodBind):
    animatedTextureSetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"set_frame_texture")
  var
    godotBoundArg0 = 156'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  let argToPassToGodot1 = if not val.isNil:
    val.godotObject
  else:
    nil
  argsToPassToGodot[][1] = argToPassToGodot1
  var ptrCallRet: pointer
  animatedTextureSetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame157delaySec(self: AnimatedTexture): float64 =
  if isNil(animatedTextureGetFrameDelayMethodBind):
    animatedTextureGetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"get_frame_delay")
  var
    godotBoundArg0 = 157'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animatedTextureGetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc `frame157delaySec=`(self: AnimatedTexture; val: float64) =
  if isNil(animatedTextureSetFrameDelayMethodBind):
    animatedTextureSetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"set_frame_delay")
  var
    godotBoundArg0 = 157'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  animatedTextureSetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame157texture(self: AnimatedTexture): Texture =
  if isNil(animatedTextureGetFrameTextureMethodBind):
    animatedTextureGetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"get_frame_texture")
  var
    godotBoundArg0 = 157'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  animatedTextureGetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

proc `frame157texture=`(self: AnimatedTexture; val: Texture) =
  if isNil(animatedTextureSetFrameTextureMethodBind):
    animatedTextureSetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"set_frame_texture")
  var
    godotBoundArg0 = 157'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  let argToPassToGodot1 = if not val.isNil:
    val.godotObject
  else:
    nil
  argsToPassToGodot[][1] = argToPassToGodot1
  var ptrCallRet: pointer
  animatedTextureSetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame158delaySec(self: AnimatedTexture): float64 =
  if isNil(animatedTextureGetFrameDelayMethodBind):
    animatedTextureGetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"get_frame_delay")
  var
    godotBoundArg0 = 158'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animatedTextureGetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc `frame158delaySec=`(self: AnimatedTexture; val: float64) =
  if isNil(animatedTextureSetFrameDelayMethodBind):
    animatedTextureSetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"set_frame_delay")
  var
    godotBoundArg0 = 158'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  animatedTextureSetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame158texture(self: AnimatedTexture): Texture =
  if isNil(animatedTextureGetFrameTextureMethodBind):
    animatedTextureGetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"get_frame_texture")
  var
    godotBoundArg0 = 158'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  animatedTextureGetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

proc `frame158texture=`(self: AnimatedTexture; val: Texture) =
  if isNil(animatedTextureSetFrameTextureMethodBind):
    animatedTextureSetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"set_frame_texture")
  var
    godotBoundArg0 = 158'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  let argToPassToGodot1 = if not val.isNil:
    val.godotObject
  else:
    nil
  argsToPassToGodot[][1] = argToPassToGodot1
  var ptrCallRet: pointer
  animatedTextureSetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame159delaySec(self: AnimatedTexture): float64 =
  if isNil(animatedTextureGetFrameDelayMethodBind):
    animatedTextureGetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"get_frame_delay")
  var
    godotBoundArg0 = 159'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animatedTextureGetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc `frame159delaySec=`(self: AnimatedTexture; val: float64) =
  if isNil(animatedTextureSetFrameDelayMethodBind):
    animatedTextureSetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"set_frame_delay")
  var
    godotBoundArg0 = 159'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  animatedTextureSetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame159texture(self: AnimatedTexture): Texture =
  if isNil(animatedTextureGetFrameTextureMethodBind):
    animatedTextureGetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"get_frame_texture")
  var
    godotBoundArg0 = 159'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  animatedTextureGetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

proc `frame159texture=`(self: AnimatedTexture; val: Texture) =
  if isNil(animatedTextureSetFrameTextureMethodBind):
    animatedTextureSetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"set_frame_texture")
  var
    godotBoundArg0 = 159'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  let argToPassToGodot1 = if not val.isNil:
    val.godotObject
  else:
    nil
  argsToPassToGodot[][1] = argToPassToGodot1
  var ptrCallRet: pointer
  animatedTextureSetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame16delaySec(self: AnimatedTexture): float64 =
  if isNil(animatedTextureGetFrameDelayMethodBind):
    animatedTextureGetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"get_frame_delay")
  var
    godotBoundArg0 = 16'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animatedTextureGetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc `frame16delaySec=`(self: AnimatedTexture; val: float64) =
  if isNil(animatedTextureSetFrameDelayMethodBind):
    animatedTextureSetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"set_frame_delay")
  var
    godotBoundArg0 = 16'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  animatedTextureSetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame16texture(self: AnimatedTexture): Texture =
  if isNil(animatedTextureGetFrameTextureMethodBind):
    animatedTextureGetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"get_frame_texture")
  var
    godotBoundArg0 = 16'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  animatedTextureGetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

proc `frame16texture=`(self: AnimatedTexture; val: Texture) =
  if isNil(animatedTextureSetFrameTextureMethodBind):
    animatedTextureSetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"set_frame_texture")
  var
    godotBoundArg0 = 16'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  let argToPassToGodot1 = if not val.isNil:
    val.godotObject
  else:
    nil
  argsToPassToGodot[][1] = argToPassToGodot1
  var ptrCallRet: pointer
  animatedTextureSetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame160delaySec(self: AnimatedTexture): float64 =
  if isNil(animatedTextureGetFrameDelayMethodBind):
    animatedTextureGetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"get_frame_delay")
  var
    godotBoundArg0 = 160'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animatedTextureGetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc `frame160delaySec=`(self: AnimatedTexture; val: float64) =
  if isNil(animatedTextureSetFrameDelayMethodBind):
    animatedTextureSetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"set_frame_delay")
  var
    godotBoundArg0 = 160'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  animatedTextureSetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame160texture(self: AnimatedTexture): Texture =
  if isNil(animatedTextureGetFrameTextureMethodBind):
    animatedTextureGetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"get_frame_texture")
  var
    godotBoundArg0 = 160'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  animatedTextureGetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

proc `frame160texture=`(self: AnimatedTexture; val: Texture) =
  if isNil(animatedTextureSetFrameTextureMethodBind):
    animatedTextureSetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"set_frame_texture")
  var
    godotBoundArg0 = 160'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  let argToPassToGodot1 = if not val.isNil:
    val.godotObject
  else:
    nil
  argsToPassToGodot[][1] = argToPassToGodot1
  var ptrCallRet: pointer
  animatedTextureSetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame161delaySec(self: AnimatedTexture): float64 =
  if isNil(animatedTextureGetFrameDelayMethodBind):
    animatedTextureGetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"get_frame_delay")
  var
    godotBoundArg0 = 161'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animatedTextureGetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc `frame161delaySec=`(self: AnimatedTexture; val: float64) =
  if isNil(animatedTextureSetFrameDelayMethodBind):
    animatedTextureSetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"set_frame_delay")
  var
    godotBoundArg0 = 161'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  animatedTextureSetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame161texture(self: AnimatedTexture): Texture =
  if isNil(animatedTextureGetFrameTextureMethodBind):
    animatedTextureGetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"get_frame_texture")
  var
    godotBoundArg0 = 161'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  animatedTextureGetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

proc `frame161texture=`(self: AnimatedTexture; val: Texture) =
  if isNil(animatedTextureSetFrameTextureMethodBind):
    animatedTextureSetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"set_frame_texture")
  var
    godotBoundArg0 = 161'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  let argToPassToGodot1 = if not val.isNil:
    val.godotObject
  else:
    nil
  argsToPassToGodot[][1] = argToPassToGodot1
  var ptrCallRet: pointer
  animatedTextureSetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame162delaySec(self: AnimatedTexture): float64 =
  if isNil(animatedTextureGetFrameDelayMethodBind):
    animatedTextureGetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"get_frame_delay")
  var
    godotBoundArg0 = 162'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animatedTextureGetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc `frame162delaySec=`(self: AnimatedTexture; val: float64) =
  if isNil(animatedTextureSetFrameDelayMethodBind):
    animatedTextureSetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"set_frame_delay")
  var
    godotBoundArg0 = 162'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  animatedTextureSetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame162texture(self: AnimatedTexture): Texture =
  if isNil(animatedTextureGetFrameTextureMethodBind):
    animatedTextureGetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"get_frame_texture")
  var
    godotBoundArg0 = 162'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  animatedTextureGetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

proc `frame162texture=`(self: AnimatedTexture; val: Texture) =
  if isNil(animatedTextureSetFrameTextureMethodBind):
    animatedTextureSetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"set_frame_texture")
  var
    godotBoundArg0 = 162'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  let argToPassToGodot1 = if not val.isNil:
    val.godotObject
  else:
    nil
  argsToPassToGodot[][1] = argToPassToGodot1
  var ptrCallRet: pointer
  animatedTextureSetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame163delaySec(self: AnimatedTexture): float64 =
  if isNil(animatedTextureGetFrameDelayMethodBind):
    animatedTextureGetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"get_frame_delay")
  var
    godotBoundArg0 = 163'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animatedTextureGetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc `frame163delaySec=`(self: AnimatedTexture; val: float64) =
  if isNil(animatedTextureSetFrameDelayMethodBind):
    animatedTextureSetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"set_frame_delay")
  var
    godotBoundArg0 = 163'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  animatedTextureSetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame163texture(self: AnimatedTexture): Texture =
  if isNil(animatedTextureGetFrameTextureMethodBind):
    animatedTextureGetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"get_frame_texture")
  var
    godotBoundArg0 = 163'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  animatedTextureGetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

proc `frame163texture=`(self: AnimatedTexture; val: Texture) =
  if isNil(animatedTextureSetFrameTextureMethodBind):
    animatedTextureSetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"set_frame_texture")
  var
    godotBoundArg0 = 163'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  let argToPassToGodot1 = if not val.isNil:
    val.godotObject
  else:
    nil
  argsToPassToGodot[][1] = argToPassToGodot1
  var ptrCallRet: pointer
  animatedTextureSetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame164delaySec(self: AnimatedTexture): float64 =
  if isNil(animatedTextureGetFrameDelayMethodBind):
    animatedTextureGetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"get_frame_delay")
  var
    godotBoundArg0 = 164'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animatedTextureGetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc `frame164delaySec=`(self: AnimatedTexture; val: float64) =
  if isNil(animatedTextureSetFrameDelayMethodBind):
    animatedTextureSetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"set_frame_delay")
  var
    godotBoundArg0 = 164'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  animatedTextureSetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame164texture(self: AnimatedTexture): Texture =
  if isNil(animatedTextureGetFrameTextureMethodBind):
    animatedTextureGetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"get_frame_texture")
  var
    godotBoundArg0 = 164'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  animatedTextureGetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

proc `frame164texture=`(self: AnimatedTexture; val: Texture) =
  if isNil(animatedTextureSetFrameTextureMethodBind):
    animatedTextureSetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"set_frame_texture")
  var
    godotBoundArg0 = 164'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  let argToPassToGodot1 = if not val.isNil:
    val.godotObject
  else:
    nil
  argsToPassToGodot[][1] = argToPassToGodot1
  var ptrCallRet: pointer
  animatedTextureSetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame165delaySec(self: AnimatedTexture): float64 =
  if isNil(animatedTextureGetFrameDelayMethodBind):
    animatedTextureGetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"get_frame_delay")
  var
    godotBoundArg0 = 165'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animatedTextureGetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc `frame165delaySec=`(self: AnimatedTexture; val: float64) =
  if isNil(animatedTextureSetFrameDelayMethodBind):
    animatedTextureSetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"set_frame_delay")
  var
    godotBoundArg0 = 165'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  animatedTextureSetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame165texture(self: AnimatedTexture): Texture =
  if isNil(animatedTextureGetFrameTextureMethodBind):
    animatedTextureGetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"get_frame_texture")
  var
    godotBoundArg0 = 165'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  animatedTextureGetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

proc `frame165texture=`(self: AnimatedTexture; val: Texture) =
  if isNil(animatedTextureSetFrameTextureMethodBind):
    animatedTextureSetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"set_frame_texture")
  var
    godotBoundArg0 = 165'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  let argToPassToGodot1 = if not val.isNil:
    val.godotObject
  else:
    nil
  argsToPassToGodot[][1] = argToPassToGodot1
  var ptrCallRet: pointer
  animatedTextureSetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame166delaySec(self: AnimatedTexture): float64 =
  if isNil(animatedTextureGetFrameDelayMethodBind):
    animatedTextureGetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"get_frame_delay")
  var
    godotBoundArg0 = 166'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animatedTextureGetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc `frame166delaySec=`(self: AnimatedTexture; val: float64) =
  if isNil(animatedTextureSetFrameDelayMethodBind):
    animatedTextureSetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"set_frame_delay")
  var
    godotBoundArg0 = 166'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  animatedTextureSetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame166texture(self: AnimatedTexture): Texture =
  if isNil(animatedTextureGetFrameTextureMethodBind):
    animatedTextureGetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"get_frame_texture")
  var
    godotBoundArg0 = 166'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  animatedTextureGetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

proc `frame166texture=`(self: AnimatedTexture; val: Texture) =
  if isNil(animatedTextureSetFrameTextureMethodBind):
    animatedTextureSetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"set_frame_texture")
  var
    godotBoundArg0 = 166'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  let argToPassToGodot1 = if not val.isNil:
    val.godotObject
  else:
    nil
  argsToPassToGodot[][1] = argToPassToGodot1
  var ptrCallRet: pointer
  animatedTextureSetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame167delaySec(self: AnimatedTexture): float64 =
  if isNil(animatedTextureGetFrameDelayMethodBind):
    animatedTextureGetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"get_frame_delay")
  var
    godotBoundArg0 = 167'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animatedTextureGetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc `frame167delaySec=`(self: AnimatedTexture; val: float64) =
  if isNil(animatedTextureSetFrameDelayMethodBind):
    animatedTextureSetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"set_frame_delay")
  var
    godotBoundArg0 = 167'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  animatedTextureSetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame167texture(self: AnimatedTexture): Texture =
  if isNil(animatedTextureGetFrameTextureMethodBind):
    animatedTextureGetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"get_frame_texture")
  var
    godotBoundArg0 = 167'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  animatedTextureGetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

proc `frame167texture=`(self: AnimatedTexture; val: Texture) =
  if isNil(animatedTextureSetFrameTextureMethodBind):
    animatedTextureSetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"set_frame_texture")
  var
    godotBoundArg0 = 167'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  let argToPassToGodot1 = if not val.isNil:
    val.godotObject
  else:
    nil
  argsToPassToGodot[][1] = argToPassToGodot1
  var ptrCallRet: pointer
  animatedTextureSetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame168delaySec(self: AnimatedTexture): float64 =
  if isNil(animatedTextureGetFrameDelayMethodBind):
    animatedTextureGetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"get_frame_delay")
  var
    godotBoundArg0 = 168'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animatedTextureGetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc `frame168delaySec=`(self: AnimatedTexture; val: float64) =
  if isNil(animatedTextureSetFrameDelayMethodBind):
    animatedTextureSetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"set_frame_delay")
  var
    godotBoundArg0 = 168'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  animatedTextureSetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame168texture(self: AnimatedTexture): Texture =
  if isNil(animatedTextureGetFrameTextureMethodBind):
    animatedTextureGetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"get_frame_texture")
  var
    godotBoundArg0 = 168'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  animatedTextureGetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

proc `frame168texture=`(self: AnimatedTexture; val: Texture) =
  if isNil(animatedTextureSetFrameTextureMethodBind):
    animatedTextureSetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"set_frame_texture")
  var
    godotBoundArg0 = 168'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  let argToPassToGodot1 = if not val.isNil:
    val.godotObject
  else:
    nil
  argsToPassToGodot[][1] = argToPassToGodot1
  var ptrCallRet: pointer
  animatedTextureSetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame169delaySec(self: AnimatedTexture): float64 =
  if isNil(animatedTextureGetFrameDelayMethodBind):
    animatedTextureGetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"get_frame_delay")
  var
    godotBoundArg0 = 169'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animatedTextureGetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc `frame169delaySec=`(self: AnimatedTexture; val: float64) =
  if isNil(animatedTextureSetFrameDelayMethodBind):
    animatedTextureSetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"set_frame_delay")
  var
    godotBoundArg0 = 169'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  animatedTextureSetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame169texture(self: AnimatedTexture): Texture =
  if isNil(animatedTextureGetFrameTextureMethodBind):
    animatedTextureGetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"get_frame_texture")
  var
    godotBoundArg0 = 169'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  animatedTextureGetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

proc `frame169texture=`(self: AnimatedTexture; val: Texture) =
  if isNil(animatedTextureSetFrameTextureMethodBind):
    animatedTextureSetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"set_frame_texture")
  var
    godotBoundArg0 = 169'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  let argToPassToGodot1 = if not val.isNil:
    val.godotObject
  else:
    nil
  argsToPassToGodot[][1] = argToPassToGodot1
  var ptrCallRet: pointer
  animatedTextureSetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame17delaySec(self: AnimatedTexture): float64 =
  if isNil(animatedTextureGetFrameDelayMethodBind):
    animatedTextureGetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"get_frame_delay")
  var
    godotBoundArg0 = 17'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animatedTextureGetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc `frame17delaySec=`(self: AnimatedTexture; val: float64) =
  if isNil(animatedTextureSetFrameDelayMethodBind):
    animatedTextureSetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"set_frame_delay")
  var
    godotBoundArg0 = 17'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  animatedTextureSetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame17texture(self: AnimatedTexture): Texture =
  if isNil(animatedTextureGetFrameTextureMethodBind):
    animatedTextureGetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"get_frame_texture")
  var
    godotBoundArg0 = 17'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  animatedTextureGetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

proc `frame17texture=`(self: AnimatedTexture; val: Texture) =
  if isNil(animatedTextureSetFrameTextureMethodBind):
    animatedTextureSetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"set_frame_texture")
  var
    godotBoundArg0 = 17'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  let argToPassToGodot1 = if not val.isNil:
    val.godotObject
  else:
    nil
  argsToPassToGodot[][1] = argToPassToGodot1
  var ptrCallRet: pointer
  animatedTextureSetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame170delaySec(self: AnimatedTexture): float64 =
  if isNil(animatedTextureGetFrameDelayMethodBind):
    animatedTextureGetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"get_frame_delay")
  var
    godotBoundArg0 = 170'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animatedTextureGetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc `frame170delaySec=`(self: AnimatedTexture; val: float64) =
  if isNil(animatedTextureSetFrameDelayMethodBind):
    animatedTextureSetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"set_frame_delay")
  var
    godotBoundArg0 = 170'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  animatedTextureSetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame170texture(self: AnimatedTexture): Texture =
  if isNil(animatedTextureGetFrameTextureMethodBind):
    animatedTextureGetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"get_frame_texture")
  var
    godotBoundArg0 = 170'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  animatedTextureGetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

proc `frame170texture=`(self: AnimatedTexture; val: Texture) =
  if isNil(animatedTextureSetFrameTextureMethodBind):
    animatedTextureSetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"set_frame_texture")
  var
    godotBoundArg0 = 170'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  let argToPassToGodot1 = if not val.isNil:
    val.godotObject
  else:
    nil
  argsToPassToGodot[][1] = argToPassToGodot1
  var ptrCallRet: pointer
  animatedTextureSetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame171delaySec(self: AnimatedTexture): float64 =
  if isNil(animatedTextureGetFrameDelayMethodBind):
    animatedTextureGetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"get_frame_delay")
  var
    godotBoundArg0 = 171'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animatedTextureGetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc `frame171delaySec=`(self: AnimatedTexture; val: float64) =
  if isNil(animatedTextureSetFrameDelayMethodBind):
    animatedTextureSetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"set_frame_delay")
  var
    godotBoundArg0 = 171'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  animatedTextureSetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame171texture(self: AnimatedTexture): Texture =
  if isNil(animatedTextureGetFrameTextureMethodBind):
    animatedTextureGetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"get_frame_texture")
  var
    godotBoundArg0 = 171'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  animatedTextureGetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

proc `frame171texture=`(self: AnimatedTexture; val: Texture) =
  if isNil(animatedTextureSetFrameTextureMethodBind):
    animatedTextureSetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"set_frame_texture")
  var
    godotBoundArg0 = 171'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  let argToPassToGodot1 = if not val.isNil:
    val.godotObject
  else:
    nil
  argsToPassToGodot[][1] = argToPassToGodot1
  var ptrCallRet: pointer
  animatedTextureSetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame172delaySec(self: AnimatedTexture): float64 =
  if isNil(animatedTextureGetFrameDelayMethodBind):
    animatedTextureGetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"get_frame_delay")
  var
    godotBoundArg0 = 172'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animatedTextureGetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc `frame172delaySec=`(self: AnimatedTexture; val: float64) =
  if isNil(animatedTextureSetFrameDelayMethodBind):
    animatedTextureSetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"set_frame_delay")
  var
    godotBoundArg0 = 172'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  animatedTextureSetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame172texture(self: AnimatedTexture): Texture =
  if isNil(animatedTextureGetFrameTextureMethodBind):
    animatedTextureGetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"get_frame_texture")
  var
    godotBoundArg0 = 172'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  animatedTextureGetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

proc `frame172texture=`(self: AnimatedTexture; val: Texture) =
  if isNil(animatedTextureSetFrameTextureMethodBind):
    animatedTextureSetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"set_frame_texture")
  var
    godotBoundArg0 = 172'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  let argToPassToGodot1 = if not val.isNil:
    val.godotObject
  else:
    nil
  argsToPassToGodot[][1] = argToPassToGodot1
  var ptrCallRet: pointer
  animatedTextureSetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame173delaySec(self: AnimatedTexture): float64 =
  if isNil(animatedTextureGetFrameDelayMethodBind):
    animatedTextureGetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"get_frame_delay")
  var
    godotBoundArg0 = 173'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animatedTextureGetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc `frame173delaySec=`(self: AnimatedTexture; val: float64) =
  if isNil(animatedTextureSetFrameDelayMethodBind):
    animatedTextureSetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"set_frame_delay")
  var
    godotBoundArg0 = 173'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  animatedTextureSetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame173texture(self: AnimatedTexture): Texture =
  if isNil(animatedTextureGetFrameTextureMethodBind):
    animatedTextureGetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"get_frame_texture")
  var
    godotBoundArg0 = 173'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  animatedTextureGetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

proc `frame173texture=`(self: AnimatedTexture; val: Texture) =
  if isNil(animatedTextureSetFrameTextureMethodBind):
    animatedTextureSetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"set_frame_texture")
  var
    godotBoundArg0 = 173'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  let argToPassToGodot1 = if not val.isNil:
    val.godotObject
  else:
    nil
  argsToPassToGodot[][1] = argToPassToGodot1
  var ptrCallRet: pointer
  animatedTextureSetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame174delaySec(self: AnimatedTexture): float64 =
  if isNil(animatedTextureGetFrameDelayMethodBind):
    animatedTextureGetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"get_frame_delay")
  var
    godotBoundArg0 = 174'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animatedTextureGetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc `frame174delaySec=`(self: AnimatedTexture; val: float64) =
  if isNil(animatedTextureSetFrameDelayMethodBind):
    animatedTextureSetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"set_frame_delay")
  var
    godotBoundArg0 = 174'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  animatedTextureSetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame174texture(self: AnimatedTexture): Texture =
  if isNil(animatedTextureGetFrameTextureMethodBind):
    animatedTextureGetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"get_frame_texture")
  var
    godotBoundArg0 = 174'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  animatedTextureGetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

proc `frame174texture=`(self: AnimatedTexture; val: Texture) =
  if isNil(animatedTextureSetFrameTextureMethodBind):
    animatedTextureSetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"set_frame_texture")
  var
    godotBoundArg0 = 174'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  let argToPassToGodot1 = if not val.isNil:
    val.godotObject
  else:
    nil
  argsToPassToGodot[][1] = argToPassToGodot1
  var ptrCallRet: pointer
  animatedTextureSetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame175delaySec(self: AnimatedTexture): float64 =
  if isNil(animatedTextureGetFrameDelayMethodBind):
    animatedTextureGetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"get_frame_delay")
  var
    godotBoundArg0 = 175'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animatedTextureGetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc `frame175delaySec=`(self: AnimatedTexture; val: float64) =
  if isNil(animatedTextureSetFrameDelayMethodBind):
    animatedTextureSetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"set_frame_delay")
  var
    godotBoundArg0 = 175'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  animatedTextureSetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame175texture(self: AnimatedTexture): Texture =
  if isNil(animatedTextureGetFrameTextureMethodBind):
    animatedTextureGetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"get_frame_texture")
  var
    godotBoundArg0 = 175'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  animatedTextureGetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

proc `frame175texture=`(self: AnimatedTexture; val: Texture) =
  if isNil(animatedTextureSetFrameTextureMethodBind):
    animatedTextureSetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"set_frame_texture")
  var
    godotBoundArg0 = 175'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  let argToPassToGodot1 = if not val.isNil:
    val.godotObject
  else:
    nil
  argsToPassToGodot[][1] = argToPassToGodot1
  var ptrCallRet: pointer
  animatedTextureSetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame176delaySec(self: AnimatedTexture): float64 =
  if isNil(animatedTextureGetFrameDelayMethodBind):
    animatedTextureGetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"get_frame_delay")
  var
    godotBoundArg0 = 176'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animatedTextureGetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc `frame176delaySec=`(self: AnimatedTexture; val: float64) =
  if isNil(animatedTextureSetFrameDelayMethodBind):
    animatedTextureSetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"set_frame_delay")
  var
    godotBoundArg0 = 176'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  animatedTextureSetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame176texture(self: AnimatedTexture): Texture =
  if isNil(animatedTextureGetFrameTextureMethodBind):
    animatedTextureGetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"get_frame_texture")
  var
    godotBoundArg0 = 176'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  animatedTextureGetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

proc `frame176texture=`(self: AnimatedTexture; val: Texture) =
  if isNil(animatedTextureSetFrameTextureMethodBind):
    animatedTextureSetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"set_frame_texture")
  var
    godotBoundArg0 = 176'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  let argToPassToGodot1 = if not val.isNil:
    val.godotObject
  else:
    nil
  argsToPassToGodot[][1] = argToPassToGodot1
  var ptrCallRet: pointer
  animatedTextureSetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame177delaySec(self: AnimatedTexture): float64 =
  if isNil(animatedTextureGetFrameDelayMethodBind):
    animatedTextureGetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"get_frame_delay")
  var
    godotBoundArg0 = 177'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animatedTextureGetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc `frame177delaySec=`(self: AnimatedTexture; val: float64) =
  if isNil(animatedTextureSetFrameDelayMethodBind):
    animatedTextureSetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"set_frame_delay")
  var
    godotBoundArg0 = 177'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  animatedTextureSetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame177texture(self: AnimatedTexture): Texture =
  if isNil(animatedTextureGetFrameTextureMethodBind):
    animatedTextureGetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"get_frame_texture")
  var
    godotBoundArg0 = 177'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  animatedTextureGetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

proc `frame177texture=`(self: AnimatedTexture; val: Texture) =
  if isNil(animatedTextureSetFrameTextureMethodBind):
    animatedTextureSetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"set_frame_texture")
  var
    godotBoundArg0 = 177'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  let argToPassToGodot1 = if not val.isNil:
    val.godotObject
  else:
    nil
  argsToPassToGodot[][1] = argToPassToGodot1
  var ptrCallRet: pointer
  animatedTextureSetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame178delaySec(self: AnimatedTexture): float64 =
  if isNil(animatedTextureGetFrameDelayMethodBind):
    animatedTextureGetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"get_frame_delay")
  var
    godotBoundArg0 = 178'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animatedTextureGetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc `frame178delaySec=`(self: AnimatedTexture; val: float64) =
  if isNil(animatedTextureSetFrameDelayMethodBind):
    animatedTextureSetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"set_frame_delay")
  var
    godotBoundArg0 = 178'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  animatedTextureSetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame178texture(self: AnimatedTexture): Texture =
  if isNil(animatedTextureGetFrameTextureMethodBind):
    animatedTextureGetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"get_frame_texture")
  var
    godotBoundArg0 = 178'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  animatedTextureGetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

proc `frame178texture=`(self: AnimatedTexture; val: Texture) =
  if isNil(animatedTextureSetFrameTextureMethodBind):
    animatedTextureSetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"set_frame_texture")
  var
    godotBoundArg0 = 178'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  let argToPassToGodot1 = if not val.isNil:
    val.godotObject
  else:
    nil
  argsToPassToGodot[][1] = argToPassToGodot1
  var ptrCallRet: pointer
  animatedTextureSetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame179delaySec(self: AnimatedTexture): float64 =
  if isNil(animatedTextureGetFrameDelayMethodBind):
    animatedTextureGetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"get_frame_delay")
  var
    godotBoundArg0 = 179'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animatedTextureGetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc `frame179delaySec=`(self: AnimatedTexture; val: float64) =
  if isNil(animatedTextureSetFrameDelayMethodBind):
    animatedTextureSetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"set_frame_delay")
  var
    godotBoundArg0 = 179'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  animatedTextureSetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame179texture(self: AnimatedTexture): Texture =
  if isNil(animatedTextureGetFrameTextureMethodBind):
    animatedTextureGetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"get_frame_texture")
  var
    godotBoundArg0 = 179'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  animatedTextureGetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

proc `frame179texture=`(self: AnimatedTexture; val: Texture) =
  if isNil(animatedTextureSetFrameTextureMethodBind):
    animatedTextureSetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"set_frame_texture")
  var
    godotBoundArg0 = 179'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  let argToPassToGodot1 = if not val.isNil:
    val.godotObject
  else:
    nil
  argsToPassToGodot[][1] = argToPassToGodot1
  var ptrCallRet: pointer
  animatedTextureSetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame18delaySec(self: AnimatedTexture): float64 =
  if isNil(animatedTextureGetFrameDelayMethodBind):
    animatedTextureGetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"get_frame_delay")
  var
    godotBoundArg0 = 18'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animatedTextureGetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc `frame18delaySec=`(self: AnimatedTexture; val: float64) =
  if isNil(animatedTextureSetFrameDelayMethodBind):
    animatedTextureSetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"set_frame_delay")
  var
    godotBoundArg0 = 18'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  animatedTextureSetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame18texture(self: AnimatedTexture): Texture =
  if isNil(animatedTextureGetFrameTextureMethodBind):
    animatedTextureGetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"get_frame_texture")
  var
    godotBoundArg0 = 18'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  animatedTextureGetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

proc `frame18texture=`(self: AnimatedTexture; val: Texture) =
  if isNil(animatedTextureSetFrameTextureMethodBind):
    animatedTextureSetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"set_frame_texture")
  var
    godotBoundArg0 = 18'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  let argToPassToGodot1 = if not val.isNil:
    val.godotObject
  else:
    nil
  argsToPassToGodot[][1] = argToPassToGodot1
  var ptrCallRet: pointer
  animatedTextureSetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame180delaySec(self: AnimatedTexture): float64 =
  if isNil(animatedTextureGetFrameDelayMethodBind):
    animatedTextureGetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"get_frame_delay")
  var
    godotBoundArg0 = 180'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animatedTextureGetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc `frame180delaySec=`(self: AnimatedTexture; val: float64) =
  if isNil(animatedTextureSetFrameDelayMethodBind):
    animatedTextureSetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"set_frame_delay")
  var
    godotBoundArg0 = 180'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  animatedTextureSetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame180texture(self: AnimatedTexture): Texture =
  if isNil(animatedTextureGetFrameTextureMethodBind):
    animatedTextureGetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"get_frame_texture")
  var
    godotBoundArg0 = 180'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  animatedTextureGetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

proc `frame180texture=`(self: AnimatedTexture; val: Texture) =
  if isNil(animatedTextureSetFrameTextureMethodBind):
    animatedTextureSetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"set_frame_texture")
  var
    godotBoundArg0 = 180'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  let argToPassToGodot1 = if not val.isNil:
    val.godotObject
  else:
    nil
  argsToPassToGodot[][1] = argToPassToGodot1
  var ptrCallRet: pointer
  animatedTextureSetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame181delaySec(self: AnimatedTexture): float64 =
  if isNil(animatedTextureGetFrameDelayMethodBind):
    animatedTextureGetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"get_frame_delay")
  var
    godotBoundArg0 = 181'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animatedTextureGetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc `frame181delaySec=`(self: AnimatedTexture; val: float64) =
  if isNil(animatedTextureSetFrameDelayMethodBind):
    animatedTextureSetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"set_frame_delay")
  var
    godotBoundArg0 = 181'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  animatedTextureSetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame181texture(self: AnimatedTexture): Texture =
  if isNil(animatedTextureGetFrameTextureMethodBind):
    animatedTextureGetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"get_frame_texture")
  var
    godotBoundArg0 = 181'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  animatedTextureGetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

proc `frame181texture=`(self: AnimatedTexture; val: Texture) =
  if isNil(animatedTextureSetFrameTextureMethodBind):
    animatedTextureSetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"set_frame_texture")
  var
    godotBoundArg0 = 181'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  let argToPassToGodot1 = if not val.isNil:
    val.godotObject
  else:
    nil
  argsToPassToGodot[][1] = argToPassToGodot1
  var ptrCallRet: pointer
  animatedTextureSetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame182delaySec(self: AnimatedTexture): float64 =
  if isNil(animatedTextureGetFrameDelayMethodBind):
    animatedTextureGetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"get_frame_delay")
  var
    godotBoundArg0 = 182'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animatedTextureGetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc `frame182delaySec=`(self: AnimatedTexture; val: float64) =
  if isNil(animatedTextureSetFrameDelayMethodBind):
    animatedTextureSetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"set_frame_delay")
  var
    godotBoundArg0 = 182'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  animatedTextureSetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame182texture(self: AnimatedTexture): Texture =
  if isNil(animatedTextureGetFrameTextureMethodBind):
    animatedTextureGetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"get_frame_texture")
  var
    godotBoundArg0 = 182'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  animatedTextureGetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

proc `frame182texture=`(self: AnimatedTexture; val: Texture) =
  if isNil(animatedTextureSetFrameTextureMethodBind):
    animatedTextureSetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"set_frame_texture")
  var
    godotBoundArg0 = 182'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  let argToPassToGodot1 = if not val.isNil:
    val.godotObject
  else:
    nil
  argsToPassToGodot[][1] = argToPassToGodot1
  var ptrCallRet: pointer
  animatedTextureSetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame183delaySec(self: AnimatedTexture): float64 =
  if isNil(animatedTextureGetFrameDelayMethodBind):
    animatedTextureGetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"get_frame_delay")
  var
    godotBoundArg0 = 183'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animatedTextureGetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc `frame183delaySec=`(self: AnimatedTexture; val: float64) =
  if isNil(animatedTextureSetFrameDelayMethodBind):
    animatedTextureSetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"set_frame_delay")
  var
    godotBoundArg0 = 183'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  animatedTextureSetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame183texture(self: AnimatedTexture): Texture =
  if isNil(animatedTextureGetFrameTextureMethodBind):
    animatedTextureGetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"get_frame_texture")
  var
    godotBoundArg0 = 183'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  animatedTextureGetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

proc `frame183texture=`(self: AnimatedTexture; val: Texture) =
  if isNil(animatedTextureSetFrameTextureMethodBind):
    animatedTextureSetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"set_frame_texture")
  var
    godotBoundArg0 = 183'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  let argToPassToGodot1 = if not val.isNil:
    val.godotObject
  else:
    nil
  argsToPassToGodot[][1] = argToPassToGodot1
  var ptrCallRet: pointer
  animatedTextureSetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame184delaySec(self: AnimatedTexture): float64 =
  if isNil(animatedTextureGetFrameDelayMethodBind):
    animatedTextureGetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"get_frame_delay")
  var
    godotBoundArg0 = 184'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animatedTextureGetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc `frame184delaySec=`(self: AnimatedTexture; val: float64) =
  if isNil(animatedTextureSetFrameDelayMethodBind):
    animatedTextureSetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"set_frame_delay")
  var
    godotBoundArg0 = 184'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  animatedTextureSetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame184texture(self: AnimatedTexture): Texture =
  if isNil(animatedTextureGetFrameTextureMethodBind):
    animatedTextureGetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"get_frame_texture")
  var
    godotBoundArg0 = 184'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  animatedTextureGetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

proc `frame184texture=`(self: AnimatedTexture; val: Texture) =
  if isNil(animatedTextureSetFrameTextureMethodBind):
    animatedTextureSetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"set_frame_texture")
  var
    godotBoundArg0 = 184'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  let argToPassToGodot1 = if not val.isNil:
    val.godotObject
  else:
    nil
  argsToPassToGodot[][1] = argToPassToGodot1
  var ptrCallRet: pointer
  animatedTextureSetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame185delaySec(self: AnimatedTexture): float64 =
  if isNil(animatedTextureGetFrameDelayMethodBind):
    animatedTextureGetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"get_frame_delay")
  var
    godotBoundArg0 = 185'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animatedTextureGetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc `frame185delaySec=`(self: AnimatedTexture; val: float64) =
  if isNil(animatedTextureSetFrameDelayMethodBind):
    animatedTextureSetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"set_frame_delay")
  var
    godotBoundArg0 = 185'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  animatedTextureSetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame185texture(self: AnimatedTexture): Texture =
  if isNil(animatedTextureGetFrameTextureMethodBind):
    animatedTextureGetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"get_frame_texture")
  var
    godotBoundArg0 = 185'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  animatedTextureGetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

proc `frame185texture=`(self: AnimatedTexture; val: Texture) =
  if isNil(animatedTextureSetFrameTextureMethodBind):
    animatedTextureSetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"set_frame_texture")
  var
    godotBoundArg0 = 185'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  let argToPassToGodot1 = if not val.isNil:
    val.godotObject
  else:
    nil
  argsToPassToGodot[][1] = argToPassToGodot1
  var ptrCallRet: pointer
  animatedTextureSetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame186delaySec(self: AnimatedTexture): float64 =
  if isNil(animatedTextureGetFrameDelayMethodBind):
    animatedTextureGetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"get_frame_delay")
  var
    godotBoundArg0 = 186'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animatedTextureGetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc `frame186delaySec=`(self: AnimatedTexture; val: float64) =
  if isNil(animatedTextureSetFrameDelayMethodBind):
    animatedTextureSetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"set_frame_delay")
  var
    godotBoundArg0 = 186'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  animatedTextureSetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame186texture(self: AnimatedTexture): Texture =
  if isNil(animatedTextureGetFrameTextureMethodBind):
    animatedTextureGetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"get_frame_texture")
  var
    godotBoundArg0 = 186'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  animatedTextureGetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

proc `frame186texture=`(self: AnimatedTexture; val: Texture) =
  if isNil(animatedTextureSetFrameTextureMethodBind):
    animatedTextureSetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"set_frame_texture")
  var
    godotBoundArg0 = 186'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  let argToPassToGodot1 = if not val.isNil:
    val.godotObject
  else:
    nil
  argsToPassToGodot[][1] = argToPassToGodot1
  var ptrCallRet: pointer
  animatedTextureSetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame187delaySec(self: AnimatedTexture): float64 =
  if isNil(animatedTextureGetFrameDelayMethodBind):
    animatedTextureGetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"get_frame_delay")
  var
    godotBoundArg0 = 187'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animatedTextureGetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc `frame187delaySec=`(self: AnimatedTexture; val: float64) =
  if isNil(animatedTextureSetFrameDelayMethodBind):
    animatedTextureSetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"set_frame_delay")
  var
    godotBoundArg0 = 187'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  animatedTextureSetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame187texture(self: AnimatedTexture): Texture =
  if isNil(animatedTextureGetFrameTextureMethodBind):
    animatedTextureGetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"get_frame_texture")
  var
    godotBoundArg0 = 187'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  animatedTextureGetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

proc `frame187texture=`(self: AnimatedTexture; val: Texture) =
  if isNil(animatedTextureSetFrameTextureMethodBind):
    animatedTextureSetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"set_frame_texture")
  var
    godotBoundArg0 = 187'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  let argToPassToGodot1 = if not val.isNil:
    val.godotObject
  else:
    nil
  argsToPassToGodot[][1] = argToPassToGodot1
  var ptrCallRet: pointer
  animatedTextureSetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame188delaySec(self: AnimatedTexture): float64 =
  if isNil(animatedTextureGetFrameDelayMethodBind):
    animatedTextureGetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"get_frame_delay")
  var
    godotBoundArg0 = 188'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animatedTextureGetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc `frame188delaySec=`(self: AnimatedTexture; val: float64) =
  if isNil(animatedTextureSetFrameDelayMethodBind):
    animatedTextureSetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"set_frame_delay")
  var
    godotBoundArg0 = 188'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  animatedTextureSetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame188texture(self: AnimatedTexture): Texture =
  if isNil(animatedTextureGetFrameTextureMethodBind):
    animatedTextureGetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"get_frame_texture")
  var
    godotBoundArg0 = 188'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  animatedTextureGetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

proc `frame188texture=`(self: AnimatedTexture; val: Texture) =
  if isNil(animatedTextureSetFrameTextureMethodBind):
    animatedTextureSetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"set_frame_texture")
  var
    godotBoundArg0 = 188'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  let argToPassToGodot1 = if not val.isNil:
    val.godotObject
  else:
    nil
  argsToPassToGodot[][1] = argToPassToGodot1
  var ptrCallRet: pointer
  animatedTextureSetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame189delaySec(self: AnimatedTexture): float64 =
  if isNil(animatedTextureGetFrameDelayMethodBind):
    animatedTextureGetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"get_frame_delay")
  var
    godotBoundArg0 = 189'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animatedTextureGetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc `frame189delaySec=`(self: AnimatedTexture; val: float64) =
  if isNil(animatedTextureSetFrameDelayMethodBind):
    animatedTextureSetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"set_frame_delay")
  var
    godotBoundArg0 = 189'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  animatedTextureSetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame189texture(self: AnimatedTexture): Texture =
  if isNil(animatedTextureGetFrameTextureMethodBind):
    animatedTextureGetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"get_frame_texture")
  var
    godotBoundArg0 = 189'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  animatedTextureGetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

proc `frame189texture=`(self: AnimatedTexture; val: Texture) =
  if isNil(animatedTextureSetFrameTextureMethodBind):
    animatedTextureSetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"set_frame_texture")
  var
    godotBoundArg0 = 189'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  let argToPassToGodot1 = if not val.isNil:
    val.godotObject
  else:
    nil
  argsToPassToGodot[][1] = argToPassToGodot1
  var ptrCallRet: pointer
  animatedTextureSetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame19delaySec(self: AnimatedTexture): float64 =
  if isNil(animatedTextureGetFrameDelayMethodBind):
    animatedTextureGetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"get_frame_delay")
  var
    godotBoundArg0 = 19'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animatedTextureGetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc `frame19delaySec=`(self: AnimatedTexture; val: float64) =
  if isNil(animatedTextureSetFrameDelayMethodBind):
    animatedTextureSetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"set_frame_delay")
  var
    godotBoundArg0 = 19'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  animatedTextureSetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame19texture(self: AnimatedTexture): Texture =
  if isNil(animatedTextureGetFrameTextureMethodBind):
    animatedTextureGetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"get_frame_texture")
  var
    godotBoundArg0 = 19'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  animatedTextureGetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

proc `frame19texture=`(self: AnimatedTexture; val: Texture) =
  if isNil(animatedTextureSetFrameTextureMethodBind):
    animatedTextureSetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"set_frame_texture")
  var
    godotBoundArg0 = 19'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  let argToPassToGodot1 = if not val.isNil:
    val.godotObject
  else:
    nil
  argsToPassToGodot[][1] = argToPassToGodot1
  var ptrCallRet: pointer
  animatedTextureSetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame190delaySec(self: AnimatedTexture): float64 =
  if isNil(animatedTextureGetFrameDelayMethodBind):
    animatedTextureGetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"get_frame_delay")
  var
    godotBoundArg0 = 190'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animatedTextureGetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc `frame190delaySec=`(self: AnimatedTexture; val: float64) =
  if isNil(animatedTextureSetFrameDelayMethodBind):
    animatedTextureSetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"set_frame_delay")
  var
    godotBoundArg0 = 190'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  animatedTextureSetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame190texture(self: AnimatedTexture): Texture =
  if isNil(animatedTextureGetFrameTextureMethodBind):
    animatedTextureGetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"get_frame_texture")
  var
    godotBoundArg0 = 190'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  animatedTextureGetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

proc `frame190texture=`(self: AnimatedTexture; val: Texture) =
  if isNil(animatedTextureSetFrameTextureMethodBind):
    animatedTextureSetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"set_frame_texture")
  var
    godotBoundArg0 = 190'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  let argToPassToGodot1 = if not val.isNil:
    val.godotObject
  else:
    nil
  argsToPassToGodot[][1] = argToPassToGodot1
  var ptrCallRet: pointer
  animatedTextureSetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame191delaySec(self: AnimatedTexture): float64 =
  if isNil(animatedTextureGetFrameDelayMethodBind):
    animatedTextureGetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"get_frame_delay")
  var
    godotBoundArg0 = 191'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animatedTextureGetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc `frame191delaySec=`(self: AnimatedTexture; val: float64) =
  if isNil(animatedTextureSetFrameDelayMethodBind):
    animatedTextureSetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"set_frame_delay")
  var
    godotBoundArg0 = 191'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  animatedTextureSetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame191texture(self: AnimatedTexture): Texture =
  if isNil(animatedTextureGetFrameTextureMethodBind):
    animatedTextureGetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"get_frame_texture")
  var
    godotBoundArg0 = 191'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  animatedTextureGetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

proc `frame191texture=`(self: AnimatedTexture; val: Texture) =
  if isNil(animatedTextureSetFrameTextureMethodBind):
    animatedTextureSetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"set_frame_texture")
  var
    godotBoundArg0 = 191'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  let argToPassToGodot1 = if not val.isNil:
    val.godotObject
  else:
    nil
  argsToPassToGodot[][1] = argToPassToGodot1
  var ptrCallRet: pointer
  animatedTextureSetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame192delaySec(self: AnimatedTexture): float64 =
  if isNil(animatedTextureGetFrameDelayMethodBind):
    animatedTextureGetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"get_frame_delay")
  var
    godotBoundArg0 = 192'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animatedTextureGetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc `frame192delaySec=`(self: AnimatedTexture; val: float64) =
  if isNil(animatedTextureSetFrameDelayMethodBind):
    animatedTextureSetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"set_frame_delay")
  var
    godotBoundArg0 = 192'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  animatedTextureSetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame192texture(self: AnimatedTexture): Texture =
  if isNil(animatedTextureGetFrameTextureMethodBind):
    animatedTextureGetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"get_frame_texture")
  var
    godotBoundArg0 = 192'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  animatedTextureGetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

proc `frame192texture=`(self: AnimatedTexture; val: Texture) =
  if isNil(animatedTextureSetFrameTextureMethodBind):
    animatedTextureSetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"set_frame_texture")
  var
    godotBoundArg0 = 192'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  let argToPassToGodot1 = if not val.isNil:
    val.godotObject
  else:
    nil
  argsToPassToGodot[][1] = argToPassToGodot1
  var ptrCallRet: pointer
  animatedTextureSetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame193delaySec(self: AnimatedTexture): float64 =
  if isNil(animatedTextureGetFrameDelayMethodBind):
    animatedTextureGetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"get_frame_delay")
  var
    godotBoundArg0 = 193'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animatedTextureGetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc `frame193delaySec=`(self: AnimatedTexture; val: float64) =
  if isNil(animatedTextureSetFrameDelayMethodBind):
    animatedTextureSetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"set_frame_delay")
  var
    godotBoundArg0 = 193'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  animatedTextureSetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame193texture(self: AnimatedTexture): Texture =
  if isNil(animatedTextureGetFrameTextureMethodBind):
    animatedTextureGetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"get_frame_texture")
  var
    godotBoundArg0 = 193'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  animatedTextureGetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

proc `frame193texture=`(self: AnimatedTexture; val: Texture) =
  if isNil(animatedTextureSetFrameTextureMethodBind):
    animatedTextureSetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"set_frame_texture")
  var
    godotBoundArg0 = 193'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  let argToPassToGodot1 = if not val.isNil:
    val.godotObject
  else:
    nil
  argsToPassToGodot[][1] = argToPassToGodot1
  var ptrCallRet: pointer
  animatedTextureSetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame194delaySec(self: AnimatedTexture): float64 =
  if isNil(animatedTextureGetFrameDelayMethodBind):
    animatedTextureGetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"get_frame_delay")
  var
    godotBoundArg0 = 194'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animatedTextureGetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc `frame194delaySec=`(self: AnimatedTexture; val: float64) =
  if isNil(animatedTextureSetFrameDelayMethodBind):
    animatedTextureSetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"set_frame_delay")
  var
    godotBoundArg0 = 194'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  animatedTextureSetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame194texture(self: AnimatedTexture): Texture =
  if isNil(animatedTextureGetFrameTextureMethodBind):
    animatedTextureGetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"get_frame_texture")
  var
    godotBoundArg0 = 194'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  animatedTextureGetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

proc `frame194texture=`(self: AnimatedTexture; val: Texture) =
  if isNil(animatedTextureSetFrameTextureMethodBind):
    animatedTextureSetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"set_frame_texture")
  var
    godotBoundArg0 = 194'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  let argToPassToGodot1 = if not val.isNil:
    val.godotObject
  else:
    nil
  argsToPassToGodot[][1] = argToPassToGodot1
  var ptrCallRet: pointer
  animatedTextureSetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame195delaySec(self: AnimatedTexture): float64 =
  if isNil(animatedTextureGetFrameDelayMethodBind):
    animatedTextureGetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"get_frame_delay")
  var
    godotBoundArg0 = 195'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animatedTextureGetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc `frame195delaySec=`(self: AnimatedTexture; val: float64) =
  if isNil(animatedTextureSetFrameDelayMethodBind):
    animatedTextureSetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"set_frame_delay")
  var
    godotBoundArg0 = 195'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  animatedTextureSetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame195texture(self: AnimatedTexture): Texture =
  if isNil(animatedTextureGetFrameTextureMethodBind):
    animatedTextureGetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"get_frame_texture")
  var
    godotBoundArg0 = 195'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  animatedTextureGetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

proc `frame195texture=`(self: AnimatedTexture; val: Texture) =
  if isNil(animatedTextureSetFrameTextureMethodBind):
    animatedTextureSetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"set_frame_texture")
  var
    godotBoundArg0 = 195'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  let argToPassToGodot1 = if not val.isNil:
    val.godotObject
  else:
    nil
  argsToPassToGodot[][1] = argToPassToGodot1
  var ptrCallRet: pointer
  animatedTextureSetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame196delaySec(self: AnimatedTexture): float64 =
  if isNil(animatedTextureGetFrameDelayMethodBind):
    animatedTextureGetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"get_frame_delay")
  var
    godotBoundArg0 = 196'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animatedTextureGetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc `frame196delaySec=`(self: AnimatedTexture; val: float64) =
  if isNil(animatedTextureSetFrameDelayMethodBind):
    animatedTextureSetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"set_frame_delay")
  var
    godotBoundArg0 = 196'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  animatedTextureSetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame196texture(self: AnimatedTexture): Texture =
  if isNil(animatedTextureGetFrameTextureMethodBind):
    animatedTextureGetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"get_frame_texture")
  var
    godotBoundArg0 = 196'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  animatedTextureGetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

proc `frame196texture=`(self: AnimatedTexture; val: Texture) =
  if isNil(animatedTextureSetFrameTextureMethodBind):
    animatedTextureSetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"set_frame_texture")
  var
    godotBoundArg0 = 196'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  let argToPassToGodot1 = if not val.isNil:
    val.godotObject
  else:
    nil
  argsToPassToGodot[][1] = argToPassToGodot1
  var ptrCallRet: pointer
  animatedTextureSetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame197delaySec(self: AnimatedTexture): float64 =
  if isNil(animatedTextureGetFrameDelayMethodBind):
    animatedTextureGetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"get_frame_delay")
  var
    godotBoundArg0 = 197'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animatedTextureGetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc `frame197delaySec=`(self: AnimatedTexture; val: float64) =
  if isNil(animatedTextureSetFrameDelayMethodBind):
    animatedTextureSetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"set_frame_delay")
  var
    godotBoundArg0 = 197'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  animatedTextureSetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame197texture(self: AnimatedTexture): Texture =
  if isNil(animatedTextureGetFrameTextureMethodBind):
    animatedTextureGetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"get_frame_texture")
  var
    godotBoundArg0 = 197'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  animatedTextureGetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

proc `frame197texture=`(self: AnimatedTexture; val: Texture) =
  if isNil(animatedTextureSetFrameTextureMethodBind):
    animatedTextureSetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"set_frame_texture")
  var
    godotBoundArg0 = 197'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  let argToPassToGodot1 = if not val.isNil:
    val.godotObject
  else:
    nil
  argsToPassToGodot[][1] = argToPassToGodot1
  var ptrCallRet: pointer
  animatedTextureSetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame198delaySec(self: AnimatedTexture): float64 =
  if isNil(animatedTextureGetFrameDelayMethodBind):
    animatedTextureGetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"get_frame_delay")
  var
    godotBoundArg0 = 198'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animatedTextureGetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc `frame198delaySec=`(self: AnimatedTexture; val: float64) =
  if isNil(animatedTextureSetFrameDelayMethodBind):
    animatedTextureSetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"set_frame_delay")
  var
    godotBoundArg0 = 198'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  animatedTextureSetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame198texture(self: AnimatedTexture): Texture =
  if isNil(animatedTextureGetFrameTextureMethodBind):
    animatedTextureGetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"get_frame_texture")
  var
    godotBoundArg0 = 198'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  animatedTextureGetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

proc `frame198texture=`(self: AnimatedTexture; val: Texture) =
  if isNil(animatedTextureSetFrameTextureMethodBind):
    animatedTextureSetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"set_frame_texture")
  var
    godotBoundArg0 = 198'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  let argToPassToGodot1 = if not val.isNil:
    val.godotObject
  else:
    nil
  argsToPassToGodot[][1] = argToPassToGodot1
  var ptrCallRet: pointer
  animatedTextureSetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame199delaySec(self: AnimatedTexture): float64 =
  if isNil(animatedTextureGetFrameDelayMethodBind):
    animatedTextureGetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"get_frame_delay")
  var
    godotBoundArg0 = 199'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animatedTextureGetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc `frame199delaySec=`(self: AnimatedTexture; val: float64) =
  if isNil(animatedTextureSetFrameDelayMethodBind):
    animatedTextureSetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"set_frame_delay")
  var
    godotBoundArg0 = 199'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  animatedTextureSetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame199texture(self: AnimatedTexture): Texture =
  if isNil(animatedTextureGetFrameTextureMethodBind):
    animatedTextureGetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"get_frame_texture")
  var
    godotBoundArg0 = 199'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  animatedTextureGetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

proc `frame199texture=`(self: AnimatedTexture; val: Texture) =
  if isNil(animatedTextureSetFrameTextureMethodBind):
    animatedTextureSetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"set_frame_texture")
  var
    godotBoundArg0 = 199'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  let argToPassToGodot1 = if not val.isNil:
    val.godotObject
  else:
    nil
  argsToPassToGodot[][1] = argToPassToGodot1
  var ptrCallRet: pointer
  animatedTextureSetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame2delaySec(self: AnimatedTexture): float64 =
  if isNil(animatedTextureGetFrameDelayMethodBind):
    animatedTextureGetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"get_frame_delay")
  var
    godotBoundArg0 = 2'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animatedTextureGetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc `frame2delaySec=`(self: AnimatedTexture; val: float64) =
  if isNil(animatedTextureSetFrameDelayMethodBind):
    animatedTextureSetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"set_frame_delay")
  var
    godotBoundArg0 = 2'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  animatedTextureSetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame2texture(self: AnimatedTexture): Texture =
  if isNil(animatedTextureGetFrameTextureMethodBind):
    animatedTextureGetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"get_frame_texture")
  var
    godotBoundArg0 = 2'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  animatedTextureGetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

proc `frame2texture=`(self: AnimatedTexture; val: Texture) =
  if isNil(animatedTextureSetFrameTextureMethodBind):
    animatedTextureSetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"set_frame_texture")
  var
    godotBoundArg0 = 2'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  let argToPassToGodot1 = if not val.isNil:
    val.godotObject
  else:
    nil
  argsToPassToGodot[][1] = argToPassToGodot1
  var ptrCallRet: pointer
  animatedTextureSetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame20delaySec(self: AnimatedTexture): float64 =
  if isNil(animatedTextureGetFrameDelayMethodBind):
    animatedTextureGetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"get_frame_delay")
  var
    godotBoundArg0 = 20'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animatedTextureGetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc `frame20delaySec=`(self: AnimatedTexture; val: float64) =
  if isNil(animatedTextureSetFrameDelayMethodBind):
    animatedTextureSetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"set_frame_delay")
  var
    godotBoundArg0 = 20'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  animatedTextureSetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame20texture(self: AnimatedTexture): Texture =
  if isNil(animatedTextureGetFrameTextureMethodBind):
    animatedTextureGetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"get_frame_texture")
  var
    godotBoundArg0 = 20'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  animatedTextureGetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

proc `frame20texture=`(self: AnimatedTexture; val: Texture) =
  if isNil(animatedTextureSetFrameTextureMethodBind):
    animatedTextureSetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"set_frame_texture")
  var
    godotBoundArg0 = 20'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  let argToPassToGodot1 = if not val.isNil:
    val.godotObject
  else:
    nil
  argsToPassToGodot[][1] = argToPassToGodot1
  var ptrCallRet: pointer
  animatedTextureSetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame200delaySec(self: AnimatedTexture): float64 =
  if isNil(animatedTextureGetFrameDelayMethodBind):
    animatedTextureGetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"get_frame_delay")
  var
    godotBoundArg0 = 200'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animatedTextureGetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc `frame200delaySec=`(self: AnimatedTexture; val: float64) =
  if isNil(animatedTextureSetFrameDelayMethodBind):
    animatedTextureSetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"set_frame_delay")
  var
    godotBoundArg0 = 200'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  animatedTextureSetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame200texture(self: AnimatedTexture): Texture =
  if isNil(animatedTextureGetFrameTextureMethodBind):
    animatedTextureGetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"get_frame_texture")
  var
    godotBoundArg0 = 200'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  animatedTextureGetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

proc `frame200texture=`(self: AnimatedTexture; val: Texture) =
  if isNil(animatedTextureSetFrameTextureMethodBind):
    animatedTextureSetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"set_frame_texture")
  var
    godotBoundArg0 = 200'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  let argToPassToGodot1 = if not val.isNil:
    val.godotObject
  else:
    nil
  argsToPassToGodot[][1] = argToPassToGodot1
  var ptrCallRet: pointer
  animatedTextureSetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame201delaySec(self: AnimatedTexture): float64 =
  if isNil(animatedTextureGetFrameDelayMethodBind):
    animatedTextureGetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"get_frame_delay")
  var
    godotBoundArg0 = 201'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animatedTextureGetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc `frame201delaySec=`(self: AnimatedTexture; val: float64) =
  if isNil(animatedTextureSetFrameDelayMethodBind):
    animatedTextureSetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"set_frame_delay")
  var
    godotBoundArg0 = 201'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  animatedTextureSetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame201texture(self: AnimatedTexture): Texture =
  if isNil(animatedTextureGetFrameTextureMethodBind):
    animatedTextureGetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"get_frame_texture")
  var
    godotBoundArg0 = 201'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  animatedTextureGetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

proc `frame201texture=`(self: AnimatedTexture; val: Texture) =
  if isNil(animatedTextureSetFrameTextureMethodBind):
    animatedTextureSetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"set_frame_texture")
  var
    godotBoundArg0 = 201'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  let argToPassToGodot1 = if not val.isNil:
    val.godotObject
  else:
    nil
  argsToPassToGodot[][1] = argToPassToGodot1
  var ptrCallRet: pointer
  animatedTextureSetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame202delaySec(self: AnimatedTexture): float64 =
  if isNil(animatedTextureGetFrameDelayMethodBind):
    animatedTextureGetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"get_frame_delay")
  var
    godotBoundArg0 = 202'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animatedTextureGetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc `frame202delaySec=`(self: AnimatedTexture; val: float64) =
  if isNil(animatedTextureSetFrameDelayMethodBind):
    animatedTextureSetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"set_frame_delay")
  var
    godotBoundArg0 = 202'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  animatedTextureSetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame202texture(self: AnimatedTexture): Texture =
  if isNil(animatedTextureGetFrameTextureMethodBind):
    animatedTextureGetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"get_frame_texture")
  var
    godotBoundArg0 = 202'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  animatedTextureGetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

proc `frame202texture=`(self: AnimatedTexture; val: Texture) =
  if isNil(animatedTextureSetFrameTextureMethodBind):
    animatedTextureSetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"set_frame_texture")
  var
    godotBoundArg0 = 202'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  let argToPassToGodot1 = if not val.isNil:
    val.godotObject
  else:
    nil
  argsToPassToGodot[][1] = argToPassToGodot1
  var ptrCallRet: pointer
  animatedTextureSetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame203delaySec(self: AnimatedTexture): float64 =
  if isNil(animatedTextureGetFrameDelayMethodBind):
    animatedTextureGetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"get_frame_delay")
  var
    godotBoundArg0 = 203'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animatedTextureGetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc `frame203delaySec=`(self: AnimatedTexture; val: float64) =
  if isNil(animatedTextureSetFrameDelayMethodBind):
    animatedTextureSetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"set_frame_delay")
  var
    godotBoundArg0 = 203'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  animatedTextureSetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame203texture(self: AnimatedTexture): Texture =
  if isNil(animatedTextureGetFrameTextureMethodBind):
    animatedTextureGetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"get_frame_texture")
  var
    godotBoundArg0 = 203'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  animatedTextureGetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

proc `frame203texture=`(self: AnimatedTexture; val: Texture) =
  if isNil(animatedTextureSetFrameTextureMethodBind):
    animatedTextureSetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"set_frame_texture")
  var
    godotBoundArg0 = 203'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  let argToPassToGodot1 = if not val.isNil:
    val.godotObject
  else:
    nil
  argsToPassToGodot[][1] = argToPassToGodot1
  var ptrCallRet: pointer
  animatedTextureSetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame204delaySec(self: AnimatedTexture): float64 =
  if isNil(animatedTextureGetFrameDelayMethodBind):
    animatedTextureGetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"get_frame_delay")
  var
    godotBoundArg0 = 204'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animatedTextureGetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc `frame204delaySec=`(self: AnimatedTexture; val: float64) =
  if isNil(animatedTextureSetFrameDelayMethodBind):
    animatedTextureSetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"set_frame_delay")
  var
    godotBoundArg0 = 204'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  animatedTextureSetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame204texture(self: AnimatedTexture): Texture =
  if isNil(animatedTextureGetFrameTextureMethodBind):
    animatedTextureGetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"get_frame_texture")
  var
    godotBoundArg0 = 204'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  animatedTextureGetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

proc `frame204texture=`(self: AnimatedTexture; val: Texture) =
  if isNil(animatedTextureSetFrameTextureMethodBind):
    animatedTextureSetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"set_frame_texture")
  var
    godotBoundArg0 = 204'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  let argToPassToGodot1 = if not val.isNil:
    val.godotObject
  else:
    nil
  argsToPassToGodot[][1] = argToPassToGodot1
  var ptrCallRet: pointer
  animatedTextureSetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame205delaySec(self: AnimatedTexture): float64 =
  if isNil(animatedTextureGetFrameDelayMethodBind):
    animatedTextureGetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"get_frame_delay")
  var
    godotBoundArg0 = 205'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animatedTextureGetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc `frame205delaySec=`(self: AnimatedTexture; val: float64) =
  if isNil(animatedTextureSetFrameDelayMethodBind):
    animatedTextureSetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"set_frame_delay")
  var
    godotBoundArg0 = 205'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  animatedTextureSetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame205texture(self: AnimatedTexture): Texture =
  if isNil(animatedTextureGetFrameTextureMethodBind):
    animatedTextureGetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"get_frame_texture")
  var
    godotBoundArg0 = 205'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  animatedTextureGetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

proc `frame205texture=`(self: AnimatedTexture; val: Texture) =
  if isNil(animatedTextureSetFrameTextureMethodBind):
    animatedTextureSetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"set_frame_texture")
  var
    godotBoundArg0 = 205'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  let argToPassToGodot1 = if not val.isNil:
    val.godotObject
  else:
    nil
  argsToPassToGodot[][1] = argToPassToGodot1
  var ptrCallRet: pointer
  animatedTextureSetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame206delaySec(self: AnimatedTexture): float64 =
  if isNil(animatedTextureGetFrameDelayMethodBind):
    animatedTextureGetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"get_frame_delay")
  var
    godotBoundArg0 = 206'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animatedTextureGetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc `frame206delaySec=`(self: AnimatedTexture; val: float64) =
  if isNil(animatedTextureSetFrameDelayMethodBind):
    animatedTextureSetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"set_frame_delay")
  var
    godotBoundArg0 = 206'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  animatedTextureSetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame206texture(self: AnimatedTexture): Texture =
  if isNil(animatedTextureGetFrameTextureMethodBind):
    animatedTextureGetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"get_frame_texture")
  var
    godotBoundArg0 = 206'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  animatedTextureGetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

proc `frame206texture=`(self: AnimatedTexture; val: Texture) =
  if isNil(animatedTextureSetFrameTextureMethodBind):
    animatedTextureSetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"set_frame_texture")
  var
    godotBoundArg0 = 206'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  let argToPassToGodot1 = if not val.isNil:
    val.godotObject
  else:
    nil
  argsToPassToGodot[][1] = argToPassToGodot1
  var ptrCallRet: pointer
  animatedTextureSetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame207delaySec(self: AnimatedTexture): float64 =
  if isNil(animatedTextureGetFrameDelayMethodBind):
    animatedTextureGetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"get_frame_delay")
  var
    godotBoundArg0 = 207'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animatedTextureGetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc `frame207delaySec=`(self: AnimatedTexture; val: float64) =
  if isNil(animatedTextureSetFrameDelayMethodBind):
    animatedTextureSetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"set_frame_delay")
  var
    godotBoundArg0 = 207'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  animatedTextureSetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame207texture(self: AnimatedTexture): Texture =
  if isNil(animatedTextureGetFrameTextureMethodBind):
    animatedTextureGetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"get_frame_texture")
  var
    godotBoundArg0 = 207'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  animatedTextureGetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

proc `frame207texture=`(self: AnimatedTexture; val: Texture) =
  if isNil(animatedTextureSetFrameTextureMethodBind):
    animatedTextureSetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"set_frame_texture")
  var
    godotBoundArg0 = 207'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  let argToPassToGodot1 = if not val.isNil:
    val.godotObject
  else:
    nil
  argsToPassToGodot[][1] = argToPassToGodot1
  var ptrCallRet: pointer
  animatedTextureSetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame208delaySec(self: AnimatedTexture): float64 =
  if isNil(animatedTextureGetFrameDelayMethodBind):
    animatedTextureGetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"get_frame_delay")
  var
    godotBoundArg0 = 208'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animatedTextureGetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc `frame208delaySec=`(self: AnimatedTexture; val: float64) =
  if isNil(animatedTextureSetFrameDelayMethodBind):
    animatedTextureSetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"set_frame_delay")
  var
    godotBoundArg0 = 208'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  animatedTextureSetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame208texture(self: AnimatedTexture): Texture =
  if isNil(animatedTextureGetFrameTextureMethodBind):
    animatedTextureGetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"get_frame_texture")
  var
    godotBoundArg0 = 208'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  animatedTextureGetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

proc `frame208texture=`(self: AnimatedTexture; val: Texture) =
  if isNil(animatedTextureSetFrameTextureMethodBind):
    animatedTextureSetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"set_frame_texture")
  var
    godotBoundArg0 = 208'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  let argToPassToGodot1 = if not val.isNil:
    val.godotObject
  else:
    nil
  argsToPassToGodot[][1] = argToPassToGodot1
  var ptrCallRet: pointer
  animatedTextureSetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame209delaySec(self: AnimatedTexture): float64 =
  if isNil(animatedTextureGetFrameDelayMethodBind):
    animatedTextureGetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"get_frame_delay")
  var
    godotBoundArg0 = 209'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animatedTextureGetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc `frame209delaySec=`(self: AnimatedTexture; val: float64) =
  if isNil(animatedTextureSetFrameDelayMethodBind):
    animatedTextureSetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"set_frame_delay")
  var
    godotBoundArg0 = 209'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  animatedTextureSetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame209texture(self: AnimatedTexture): Texture =
  if isNil(animatedTextureGetFrameTextureMethodBind):
    animatedTextureGetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"get_frame_texture")
  var
    godotBoundArg0 = 209'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  animatedTextureGetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

proc `frame209texture=`(self: AnimatedTexture; val: Texture) =
  if isNil(animatedTextureSetFrameTextureMethodBind):
    animatedTextureSetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"set_frame_texture")
  var
    godotBoundArg0 = 209'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  let argToPassToGodot1 = if not val.isNil:
    val.godotObject
  else:
    nil
  argsToPassToGodot[][1] = argToPassToGodot1
  var ptrCallRet: pointer
  animatedTextureSetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame21delaySec(self: AnimatedTexture): float64 =
  if isNil(animatedTextureGetFrameDelayMethodBind):
    animatedTextureGetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"get_frame_delay")
  var
    godotBoundArg0 = 21'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animatedTextureGetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc `frame21delaySec=`(self: AnimatedTexture; val: float64) =
  if isNil(animatedTextureSetFrameDelayMethodBind):
    animatedTextureSetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"set_frame_delay")
  var
    godotBoundArg0 = 21'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  animatedTextureSetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame21texture(self: AnimatedTexture): Texture =
  if isNil(animatedTextureGetFrameTextureMethodBind):
    animatedTextureGetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"get_frame_texture")
  var
    godotBoundArg0 = 21'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  animatedTextureGetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

proc `frame21texture=`(self: AnimatedTexture; val: Texture) =
  if isNil(animatedTextureSetFrameTextureMethodBind):
    animatedTextureSetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"set_frame_texture")
  var
    godotBoundArg0 = 21'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  let argToPassToGodot1 = if not val.isNil:
    val.godotObject
  else:
    nil
  argsToPassToGodot[][1] = argToPassToGodot1
  var ptrCallRet: pointer
  animatedTextureSetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame210delaySec(self: AnimatedTexture): float64 =
  if isNil(animatedTextureGetFrameDelayMethodBind):
    animatedTextureGetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"get_frame_delay")
  var
    godotBoundArg0 = 210'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animatedTextureGetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc `frame210delaySec=`(self: AnimatedTexture; val: float64) =
  if isNil(animatedTextureSetFrameDelayMethodBind):
    animatedTextureSetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"set_frame_delay")
  var
    godotBoundArg0 = 210'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  animatedTextureSetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame210texture(self: AnimatedTexture): Texture =
  if isNil(animatedTextureGetFrameTextureMethodBind):
    animatedTextureGetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"get_frame_texture")
  var
    godotBoundArg0 = 210'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  animatedTextureGetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

proc `frame210texture=`(self: AnimatedTexture; val: Texture) =
  if isNil(animatedTextureSetFrameTextureMethodBind):
    animatedTextureSetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"set_frame_texture")
  var
    godotBoundArg0 = 210'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  let argToPassToGodot1 = if not val.isNil:
    val.godotObject
  else:
    nil
  argsToPassToGodot[][1] = argToPassToGodot1
  var ptrCallRet: pointer
  animatedTextureSetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame211delaySec(self: AnimatedTexture): float64 =
  if isNil(animatedTextureGetFrameDelayMethodBind):
    animatedTextureGetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"get_frame_delay")
  var
    godotBoundArg0 = 211'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animatedTextureGetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc `frame211delaySec=`(self: AnimatedTexture; val: float64) =
  if isNil(animatedTextureSetFrameDelayMethodBind):
    animatedTextureSetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"set_frame_delay")
  var
    godotBoundArg0 = 211'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  animatedTextureSetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame211texture(self: AnimatedTexture): Texture =
  if isNil(animatedTextureGetFrameTextureMethodBind):
    animatedTextureGetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"get_frame_texture")
  var
    godotBoundArg0 = 211'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  animatedTextureGetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

proc `frame211texture=`(self: AnimatedTexture; val: Texture) =
  if isNil(animatedTextureSetFrameTextureMethodBind):
    animatedTextureSetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"set_frame_texture")
  var
    godotBoundArg0 = 211'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  let argToPassToGodot1 = if not val.isNil:
    val.godotObject
  else:
    nil
  argsToPassToGodot[][1] = argToPassToGodot1
  var ptrCallRet: pointer
  animatedTextureSetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame212delaySec(self: AnimatedTexture): float64 =
  if isNil(animatedTextureGetFrameDelayMethodBind):
    animatedTextureGetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"get_frame_delay")
  var
    godotBoundArg0 = 212'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animatedTextureGetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc `frame212delaySec=`(self: AnimatedTexture; val: float64) =
  if isNil(animatedTextureSetFrameDelayMethodBind):
    animatedTextureSetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"set_frame_delay")
  var
    godotBoundArg0 = 212'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  animatedTextureSetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame212texture(self: AnimatedTexture): Texture =
  if isNil(animatedTextureGetFrameTextureMethodBind):
    animatedTextureGetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"get_frame_texture")
  var
    godotBoundArg0 = 212'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  animatedTextureGetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

proc `frame212texture=`(self: AnimatedTexture; val: Texture) =
  if isNil(animatedTextureSetFrameTextureMethodBind):
    animatedTextureSetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"set_frame_texture")
  var
    godotBoundArg0 = 212'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  let argToPassToGodot1 = if not val.isNil:
    val.godotObject
  else:
    nil
  argsToPassToGodot[][1] = argToPassToGodot1
  var ptrCallRet: pointer
  animatedTextureSetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame213delaySec(self: AnimatedTexture): float64 =
  if isNil(animatedTextureGetFrameDelayMethodBind):
    animatedTextureGetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"get_frame_delay")
  var
    godotBoundArg0 = 213'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animatedTextureGetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc `frame213delaySec=`(self: AnimatedTexture; val: float64) =
  if isNil(animatedTextureSetFrameDelayMethodBind):
    animatedTextureSetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"set_frame_delay")
  var
    godotBoundArg0 = 213'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  animatedTextureSetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame213texture(self: AnimatedTexture): Texture =
  if isNil(animatedTextureGetFrameTextureMethodBind):
    animatedTextureGetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"get_frame_texture")
  var
    godotBoundArg0 = 213'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  animatedTextureGetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

proc `frame213texture=`(self: AnimatedTexture; val: Texture) =
  if isNil(animatedTextureSetFrameTextureMethodBind):
    animatedTextureSetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"set_frame_texture")
  var
    godotBoundArg0 = 213'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  let argToPassToGodot1 = if not val.isNil:
    val.godotObject
  else:
    nil
  argsToPassToGodot[][1] = argToPassToGodot1
  var ptrCallRet: pointer
  animatedTextureSetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame214delaySec(self: AnimatedTexture): float64 =
  if isNil(animatedTextureGetFrameDelayMethodBind):
    animatedTextureGetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"get_frame_delay")
  var
    godotBoundArg0 = 214'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animatedTextureGetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc `frame214delaySec=`(self: AnimatedTexture; val: float64) =
  if isNil(animatedTextureSetFrameDelayMethodBind):
    animatedTextureSetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"set_frame_delay")
  var
    godotBoundArg0 = 214'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  animatedTextureSetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame214texture(self: AnimatedTexture): Texture =
  if isNil(animatedTextureGetFrameTextureMethodBind):
    animatedTextureGetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"get_frame_texture")
  var
    godotBoundArg0 = 214'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  animatedTextureGetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

proc `frame214texture=`(self: AnimatedTexture; val: Texture) =
  if isNil(animatedTextureSetFrameTextureMethodBind):
    animatedTextureSetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"set_frame_texture")
  var
    godotBoundArg0 = 214'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  let argToPassToGodot1 = if not val.isNil:
    val.godotObject
  else:
    nil
  argsToPassToGodot[][1] = argToPassToGodot1
  var ptrCallRet: pointer
  animatedTextureSetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame215delaySec(self: AnimatedTexture): float64 =
  if isNil(animatedTextureGetFrameDelayMethodBind):
    animatedTextureGetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"get_frame_delay")
  var
    godotBoundArg0 = 215'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animatedTextureGetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc `frame215delaySec=`(self: AnimatedTexture; val: float64) =
  if isNil(animatedTextureSetFrameDelayMethodBind):
    animatedTextureSetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"set_frame_delay")
  var
    godotBoundArg0 = 215'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  animatedTextureSetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame215texture(self: AnimatedTexture): Texture =
  if isNil(animatedTextureGetFrameTextureMethodBind):
    animatedTextureGetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"get_frame_texture")
  var
    godotBoundArg0 = 215'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  animatedTextureGetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

proc `frame215texture=`(self: AnimatedTexture; val: Texture) =
  if isNil(animatedTextureSetFrameTextureMethodBind):
    animatedTextureSetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"set_frame_texture")
  var
    godotBoundArg0 = 215'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  let argToPassToGodot1 = if not val.isNil:
    val.godotObject
  else:
    nil
  argsToPassToGodot[][1] = argToPassToGodot1
  var ptrCallRet: pointer
  animatedTextureSetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame216delaySec(self: AnimatedTexture): float64 =
  if isNil(animatedTextureGetFrameDelayMethodBind):
    animatedTextureGetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"get_frame_delay")
  var
    godotBoundArg0 = 216'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animatedTextureGetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc `frame216delaySec=`(self: AnimatedTexture; val: float64) =
  if isNil(animatedTextureSetFrameDelayMethodBind):
    animatedTextureSetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"set_frame_delay")
  var
    godotBoundArg0 = 216'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  animatedTextureSetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame216texture(self: AnimatedTexture): Texture =
  if isNil(animatedTextureGetFrameTextureMethodBind):
    animatedTextureGetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"get_frame_texture")
  var
    godotBoundArg0 = 216'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  animatedTextureGetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

proc `frame216texture=`(self: AnimatedTexture; val: Texture) =
  if isNil(animatedTextureSetFrameTextureMethodBind):
    animatedTextureSetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"set_frame_texture")
  var
    godotBoundArg0 = 216'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  let argToPassToGodot1 = if not val.isNil:
    val.godotObject
  else:
    nil
  argsToPassToGodot[][1] = argToPassToGodot1
  var ptrCallRet: pointer
  animatedTextureSetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame217delaySec(self: AnimatedTexture): float64 =
  if isNil(animatedTextureGetFrameDelayMethodBind):
    animatedTextureGetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"get_frame_delay")
  var
    godotBoundArg0 = 217'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animatedTextureGetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc `frame217delaySec=`(self: AnimatedTexture; val: float64) =
  if isNil(animatedTextureSetFrameDelayMethodBind):
    animatedTextureSetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"set_frame_delay")
  var
    godotBoundArg0 = 217'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  animatedTextureSetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame217texture(self: AnimatedTexture): Texture =
  if isNil(animatedTextureGetFrameTextureMethodBind):
    animatedTextureGetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"get_frame_texture")
  var
    godotBoundArg0 = 217'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  animatedTextureGetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

proc `frame217texture=`(self: AnimatedTexture; val: Texture) =
  if isNil(animatedTextureSetFrameTextureMethodBind):
    animatedTextureSetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"set_frame_texture")
  var
    godotBoundArg0 = 217'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  let argToPassToGodot1 = if not val.isNil:
    val.godotObject
  else:
    nil
  argsToPassToGodot[][1] = argToPassToGodot1
  var ptrCallRet: pointer
  animatedTextureSetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame218delaySec(self: AnimatedTexture): float64 =
  if isNil(animatedTextureGetFrameDelayMethodBind):
    animatedTextureGetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"get_frame_delay")
  var
    godotBoundArg0 = 218'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animatedTextureGetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc `frame218delaySec=`(self: AnimatedTexture; val: float64) =
  if isNil(animatedTextureSetFrameDelayMethodBind):
    animatedTextureSetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"set_frame_delay")
  var
    godotBoundArg0 = 218'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  animatedTextureSetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame218texture(self: AnimatedTexture): Texture =
  if isNil(animatedTextureGetFrameTextureMethodBind):
    animatedTextureGetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"get_frame_texture")
  var
    godotBoundArg0 = 218'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  animatedTextureGetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

proc `frame218texture=`(self: AnimatedTexture; val: Texture) =
  if isNil(animatedTextureSetFrameTextureMethodBind):
    animatedTextureSetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"set_frame_texture")
  var
    godotBoundArg0 = 218'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  let argToPassToGodot1 = if not val.isNil:
    val.godotObject
  else:
    nil
  argsToPassToGodot[][1] = argToPassToGodot1
  var ptrCallRet: pointer
  animatedTextureSetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame219delaySec(self: AnimatedTexture): float64 =
  if isNil(animatedTextureGetFrameDelayMethodBind):
    animatedTextureGetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"get_frame_delay")
  var
    godotBoundArg0 = 219'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animatedTextureGetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc `frame219delaySec=`(self: AnimatedTexture; val: float64) =
  if isNil(animatedTextureSetFrameDelayMethodBind):
    animatedTextureSetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"set_frame_delay")
  var
    godotBoundArg0 = 219'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  animatedTextureSetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame219texture(self: AnimatedTexture): Texture =
  if isNil(animatedTextureGetFrameTextureMethodBind):
    animatedTextureGetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"get_frame_texture")
  var
    godotBoundArg0 = 219'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  animatedTextureGetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

proc `frame219texture=`(self: AnimatedTexture; val: Texture) =
  if isNil(animatedTextureSetFrameTextureMethodBind):
    animatedTextureSetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"set_frame_texture")
  var
    godotBoundArg0 = 219'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  let argToPassToGodot1 = if not val.isNil:
    val.godotObject
  else:
    nil
  argsToPassToGodot[][1] = argToPassToGodot1
  var ptrCallRet: pointer
  animatedTextureSetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame22delaySec(self: AnimatedTexture): float64 =
  if isNil(animatedTextureGetFrameDelayMethodBind):
    animatedTextureGetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"get_frame_delay")
  var
    godotBoundArg0 = 22'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animatedTextureGetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc `frame22delaySec=`(self: AnimatedTexture; val: float64) =
  if isNil(animatedTextureSetFrameDelayMethodBind):
    animatedTextureSetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"set_frame_delay")
  var
    godotBoundArg0 = 22'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  animatedTextureSetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame22texture(self: AnimatedTexture): Texture =
  if isNil(animatedTextureGetFrameTextureMethodBind):
    animatedTextureGetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"get_frame_texture")
  var
    godotBoundArg0 = 22'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  animatedTextureGetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

proc `frame22texture=`(self: AnimatedTexture; val: Texture) =
  if isNil(animatedTextureSetFrameTextureMethodBind):
    animatedTextureSetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"set_frame_texture")
  var
    godotBoundArg0 = 22'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  let argToPassToGodot1 = if not val.isNil:
    val.godotObject
  else:
    nil
  argsToPassToGodot[][1] = argToPassToGodot1
  var ptrCallRet: pointer
  animatedTextureSetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame220delaySec(self: AnimatedTexture): float64 =
  if isNil(animatedTextureGetFrameDelayMethodBind):
    animatedTextureGetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"get_frame_delay")
  var
    godotBoundArg0 = 220'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animatedTextureGetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc `frame220delaySec=`(self: AnimatedTexture; val: float64) =
  if isNil(animatedTextureSetFrameDelayMethodBind):
    animatedTextureSetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"set_frame_delay")
  var
    godotBoundArg0 = 220'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  animatedTextureSetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame220texture(self: AnimatedTexture): Texture =
  if isNil(animatedTextureGetFrameTextureMethodBind):
    animatedTextureGetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"get_frame_texture")
  var
    godotBoundArg0 = 220'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  animatedTextureGetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

proc `frame220texture=`(self: AnimatedTexture; val: Texture) =
  if isNil(animatedTextureSetFrameTextureMethodBind):
    animatedTextureSetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"set_frame_texture")
  var
    godotBoundArg0 = 220'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  let argToPassToGodot1 = if not val.isNil:
    val.godotObject
  else:
    nil
  argsToPassToGodot[][1] = argToPassToGodot1
  var ptrCallRet: pointer
  animatedTextureSetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame221delaySec(self: AnimatedTexture): float64 =
  if isNil(animatedTextureGetFrameDelayMethodBind):
    animatedTextureGetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"get_frame_delay")
  var
    godotBoundArg0 = 221'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animatedTextureGetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc `frame221delaySec=`(self: AnimatedTexture; val: float64) =
  if isNil(animatedTextureSetFrameDelayMethodBind):
    animatedTextureSetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"set_frame_delay")
  var
    godotBoundArg0 = 221'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  animatedTextureSetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame221texture(self: AnimatedTexture): Texture =
  if isNil(animatedTextureGetFrameTextureMethodBind):
    animatedTextureGetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"get_frame_texture")
  var
    godotBoundArg0 = 221'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  animatedTextureGetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

proc `frame221texture=`(self: AnimatedTexture; val: Texture) =
  if isNil(animatedTextureSetFrameTextureMethodBind):
    animatedTextureSetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"set_frame_texture")
  var
    godotBoundArg0 = 221'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  let argToPassToGodot1 = if not val.isNil:
    val.godotObject
  else:
    nil
  argsToPassToGodot[][1] = argToPassToGodot1
  var ptrCallRet: pointer
  animatedTextureSetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame222delaySec(self: AnimatedTexture): float64 =
  if isNil(animatedTextureGetFrameDelayMethodBind):
    animatedTextureGetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"get_frame_delay")
  var
    godotBoundArg0 = 222'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animatedTextureGetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc `frame222delaySec=`(self: AnimatedTexture; val: float64) =
  if isNil(animatedTextureSetFrameDelayMethodBind):
    animatedTextureSetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"set_frame_delay")
  var
    godotBoundArg0 = 222'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  animatedTextureSetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame222texture(self: AnimatedTexture): Texture =
  if isNil(animatedTextureGetFrameTextureMethodBind):
    animatedTextureGetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"get_frame_texture")
  var
    godotBoundArg0 = 222'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  animatedTextureGetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

proc `frame222texture=`(self: AnimatedTexture; val: Texture) =
  if isNil(animatedTextureSetFrameTextureMethodBind):
    animatedTextureSetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"set_frame_texture")
  var
    godotBoundArg0 = 222'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  let argToPassToGodot1 = if not val.isNil:
    val.godotObject
  else:
    nil
  argsToPassToGodot[][1] = argToPassToGodot1
  var ptrCallRet: pointer
  animatedTextureSetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame223delaySec(self: AnimatedTexture): float64 =
  if isNil(animatedTextureGetFrameDelayMethodBind):
    animatedTextureGetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"get_frame_delay")
  var
    godotBoundArg0 = 223'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animatedTextureGetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc `frame223delaySec=`(self: AnimatedTexture; val: float64) =
  if isNil(animatedTextureSetFrameDelayMethodBind):
    animatedTextureSetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"set_frame_delay")
  var
    godotBoundArg0 = 223'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  animatedTextureSetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame223texture(self: AnimatedTexture): Texture =
  if isNil(animatedTextureGetFrameTextureMethodBind):
    animatedTextureGetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"get_frame_texture")
  var
    godotBoundArg0 = 223'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  animatedTextureGetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

proc `frame223texture=`(self: AnimatedTexture; val: Texture) =
  if isNil(animatedTextureSetFrameTextureMethodBind):
    animatedTextureSetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"set_frame_texture")
  var
    godotBoundArg0 = 223'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  let argToPassToGodot1 = if not val.isNil:
    val.godotObject
  else:
    nil
  argsToPassToGodot[][1] = argToPassToGodot1
  var ptrCallRet: pointer
  animatedTextureSetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame224delaySec(self: AnimatedTexture): float64 =
  if isNil(animatedTextureGetFrameDelayMethodBind):
    animatedTextureGetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"get_frame_delay")
  var
    godotBoundArg0 = 224'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animatedTextureGetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc `frame224delaySec=`(self: AnimatedTexture; val: float64) =
  if isNil(animatedTextureSetFrameDelayMethodBind):
    animatedTextureSetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"set_frame_delay")
  var
    godotBoundArg0 = 224'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  animatedTextureSetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame224texture(self: AnimatedTexture): Texture =
  if isNil(animatedTextureGetFrameTextureMethodBind):
    animatedTextureGetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"get_frame_texture")
  var
    godotBoundArg0 = 224'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  animatedTextureGetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

proc `frame224texture=`(self: AnimatedTexture; val: Texture) =
  if isNil(animatedTextureSetFrameTextureMethodBind):
    animatedTextureSetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"set_frame_texture")
  var
    godotBoundArg0 = 224'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  let argToPassToGodot1 = if not val.isNil:
    val.godotObject
  else:
    nil
  argsToPassToGodot[][1] = argToPassToGodot1
  var ptrCallRet: pointer
  animatedTextureSetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame225delaySec(self: AnimatedTexture): float64 =
  if isNil(animatedTextureGetFrameDelayMethodBind):
    animatedTextureGetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"get_frame_delay")
  var
    godotBoundArg0 = 225'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animatedTextureGetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc `frame225delaySec=`(self: AnimatedTexture; val: float64) =
  if isNil(animatedTextureSetFrameDelayMethodBind):
    animatedTextureSetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"set_frame_delay")
  var
    godotBoundArg0 = 225'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  animatedTextureSetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame225texture(self: AnimatedTexture): Texture =
  if isNil(animatedTextureGetFrameTextureMethodBind):
    animatedTextureGetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"get_frame_texture")
  var
    godotBoundArg0 = 225'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  animatedTextureGetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

proc `frame225texture=`(self: AnimatedTexture; val: Texture) =
  if isNil(animatedTextureSetFrameTextureMethodBind):
    animatedTextureSetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"set_frame_texture")
  var
    godotBoundArg0 = 225'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  let argToPassToGodot1 = if not val.isNil:
    val.godotObject
  else:
    nil
  argsToPassToGodot[][1] = argToPassToGodot1
  var ptrCallRet: pointer
  animatedTextureSetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame226delaySec(self: AnimatedTexture): float64 =
  if isNil(animatedTextureGetFrameDelayMethodBind):
    animatedTextureGetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"get_frame_delay")
  var
    godotBoundArg0 = 226'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animatedTextureGetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc `frame226delaySec=`(self: AnimatedTexture; val: float64) =
  if isNil(animatedTextureSetFrameDelayMethodBind):
    animatedTextureSetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"set_frame_delay")
  var
    godotBoundArg0 = 226'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  animatedTextureSetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame226texture(self: AnimatedTexture): Texture =
  if isNil(animatedTextureGetFrameTextureMethodBind):
    animatedTextureGetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"get_frame_texture")
  var
    godotBoundArg0 = 226'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  animatedTextureGetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

proc `frame226texture=`(self: AnimatedTexture; val: Texture) =
  if isNil(animatedTextureSetFrameTextureMethodBind):
    animatedTextureSetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"set_frame_texture")
  var
    godotBoundArg0 = 226'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  let argToPassToGodot1 = if not val.isNil:
    val.godotObject
  else:
    nil
  argsToPassToGodot[][1] = argToPassToGodot1
  var ptrCallRet: pointer
  animatedTextureSetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame227delaySec(self: AnimatedTexture): float64 =
  if isNil(animatedTextureGetFrameDelayMethodBind):
    animatedTextureGetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"get_frame_delay")
  var
    godotBoundArg0 = 227'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animatedTextureGetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc `frame227delaySec=`(self: AnimatedTexture; val: float64) =
  if isNil(animatedTextureSetFrameDelayMethodBind):
    animatedTextureSetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"set_frame_delay")
  var
    godotBoundArg0 = 227'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  animatedTextureSetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame227texture(self: AnimatedTexture): Texture =
  if isNil(animatedTextureGetFrameTextureMethodBind):
    animatedTextureGetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"get_frame_texture")
  var
    godotBoundArg0 = 227'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  animatedTextureGetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

proc `frame227texture=`(self: AnimatedTexture; val: Texture) =
  if isNil(animatedTextureSetFrameTextureMethodBind):
    animatedTextureSetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"set_frame_texture")
  var
    godotBoundArg0 = 227'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  let argToPassToGodot1 = if not val.isNil:
    val.godotObject
  else:
    nil
  argsToPassToGodot[][1] = argToPassToGodot1
  var ptrCallRet: pointer
  animatedTextureSetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame228delaySec(self: AnimatedTexture): float64 =
  if isNil(animatedTextureGetFrameDelayMethodBind):
    animatedTextureGetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"get_frame_delay")
  var
    godotBoundArg0 = 228'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animatedTextureGetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc `frame228delaySec=`(self: AnimatedTexture; val: float64) =
  if isNil(animatedTextureSetFrameDelayMethodBind):
    animatedTextureSetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"set_frame_delay")
  var
    godotBoundArg0 = 228'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  animatedTextureSetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame228texture(self: AnimatedTexture): Texture =
  if isNil(animatedTextureGetFrameTextureMethodBind):
    animatedTextureGetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"get_frame_texture")
  var
    godotBoundArg0 = 228'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  animatedTextureGetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

proc `frame228texture=`(self: AnimatedTexture; val: Texture) =
  if isNil(animatedTextureSetFrameTextureMethodBind):
    animatedTextureSetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"set_frame_texture")
  var
    godotBoundArg0 = 228'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  let argToPassToGodot1 = if not val.isNil:
    val.godotObject
  else:
    nil
  argsToPassToGodot[][1] = argToPassToGodot1
  var ptrCallRet: pointer
  animatedTextureSetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame229delaySec(self: AnimatedTexture): float64 =
  if isNil(animatedTextureGetFrameDelayMethodBind):
    animatedTextureGetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"get_frame_delay")
  var
    godotBoundArg0 = 229'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animatedTextureGetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc `frame229delaySec=`(self: AnimatedTexture; val: float64) =
  if isNil(animatedTextureSetFrameDelayMethodBind):
    animatedTextureSetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"set_frame_delay")
  var
    godotBoundArg0 = 229'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  animatedTextureSetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame229texture(self: AnimatedTexture): Texture =
  if isNil(animatedTextureGetFrameTextureMethodBind):
    animatedTextureGetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"get_frame_texture")
  var
    godotBoundArg0 = 229'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  animatedTextureGetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

proc `frame229texture=`(self: AnimatedTexture; val: Texture) =
  if isNil(animatedTextureSetFrameTextureMethodBind):
    animatedTextureSetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"set_frame_texture")
  var
    godotBoundArg0 = 229'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  let argToPassToGodot1 = if not val.isNil:
    val.godotObject
  else:
    nil
  argsToPassToGodot[][1] = argToPassToGodot1
  var ptrCallRet: pointer
  animatedTextureSetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame23delaySec(self: AnimatedTexture): float64 =
  if isNil(animatedTextureGetFrameDelayMethodBind):
    animatedTextureGetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"get_frame_delay")
  var
    godotBoundArg0 = 23'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animatedTextureGetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc `frame23delaySec=`(self: AnimatedTexture; val: float64) =
  if isNil(animatedTextureSetFrameDelayMethodBind):
    animatedTextureSetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"set_frame_delay")
  var
    godotBoundArg0 = 23'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  animatedTextureSetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame23texture(self: AnimatedTexture): Texture =
  if isNil(animatedTextureGetFrameTextureMethodBind):
    animatedTextureGetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"get_frame_texture")
  var
    godotBoundArg0 = 23'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  animatedTextureGetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

proc `frame23texture=`(self: AnimatedTexture; val: Texture) =
  if isNil(animatedTextureSetFrameTextureMethodBind):
    animatedTextureSetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"set_frame_texture")
  var
    godotBoundArg0 = 23'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  let argToPassToGodot1 = if not val.isNil:
    val.godotObject
  else:
    nil
  argsToPassToGodot[][1] = argToPassToGodot1
  var ptrCallRet: pointer
  animatedTextureSetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame230delaySec(self: AnimatedTexture): float64 =
  if isNil(animatedTextureGetFrameDelayMethodBind):
    animatedTextureGetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"get_frame_delay")
  var
    godotBoundArg0 = 230'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animatedTextureGetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc `frame230delaySec=`(self: AnimatedTexture; val: float64) =
  if isNil(animatedTextureSetFrameDelayMethodBind):
    animatedTextureSetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"set_frame_delay")
  var
    godotBoundArg0 = 230'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  animatedTextureSetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame230texture(self: AnimatedTexture): Texture =
  if isNil(animatedTextureGetFrameTextureMethodBind):
    animatedTextureGetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"get_frame_texture")
  var
    godotBoundArg0 = 230'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  animatedTextureGetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

proc `frame230texture=`(self: AnimatedTexture; val: Texture) =
  if isNil(animatedTextureSetFrameTextureMethodBind):
    animatedTextureSetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"set_frame_texture")
  var
    godotBoundArg0 = 230'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  let argToPassToGodot1 = if not val.isNil:
    val.godotObject
  else:
    nil
  argsToPassToGodot[][1] = argToPassToGodot1
  var ptrCallRet: pointer
  animatedTextureSetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame231delaySec(self: AnimatedTexture): float64 =
  if isNil(animatedTextureGetFrameDelayMethodBind):
    animatedTextureGetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"get_frame_delay")
  var
    godotBoundArg0 = 231'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animatedTextureGetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc `frame231delaySec=`(self: AnimatedTexture; val: float64) =
  if isNil(animatedTextureSetFrameDelayMethodBind):
    animatedTextureSetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"set_frame_delay")
  var
    godotBoundArg0 = 231'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  animatedTextureSetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame231texture(self: AnimatedTexture): Texture =
  if isNil(animatedTextureGetFrameTextureMethodBind):
    animatedTextureGetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"get_frame_texture")
  var
    godotBoundArg0 = 231'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  animatedTextureGetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

proc `frame231texture=`(self: AnimatedTexture; val: Texture) =
  if isNil(animatedTextureSetFrameTextureMethodBind):
    animatedTextureSetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"set_frame_texture")
  var
    godotBoundArg0 = 231'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  let argToPassToGodot1 = if not val.isNil:
    val.godotObject
  else:
    nil
  argsToPassToGodot[][1] = argToPassToGodot1
  var ptrCallRet: pointer
  animatedTextureSetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame232delaySec(self: AnimatedTexture): float64 =
  if isNil(animatedTextureGetFrameDelayMethodBind):
    animatedTextureGetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"get_frame_delay")
  var
    godotBoundArg0 = 232'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animatedTextureGetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc `frame232delaySec=`(self: AnimatedTexture; val: float64) =
  if isNil(animatedTextureSetFrameDelayMethodBind):
    animatedTextureSetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"set_frame_delay")
  var
    godotBoundArg0 = 232'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  animatedTextureSetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame232texture(self: AnimatedTexture): Texture =
  if isNil(animatedTextureGetFrameTextureMethodBind):
    animatedTextureGetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"get_frame_texture")
  var
    godotBoundArg0 = 232'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  animatedTextureGetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

proc `frame232texture=`(self: AnimatedTexture; val: Texture) =
  if isNil(animatedTextureSetFrameTextureMethodBind):
    animatedTextureSetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"set_frame_texture")
  var
    godotBoundArg0 = 232'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  let argToPassToGodot1 = if not val.isNil:
    val.godotObject
  else:
    nil
  argsToPassToGodot[][1] = argToPassToGodot1
  var ptrCallRet: pointer
  animatedTextureSetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame233delaySec(self: AnimatedTexture): float64 =
  if isNil(animatedTextureGetFrameDelayMethodBind):
    animatedTextureGetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"get_frame_delay")
  var
    godotBoundArg0 = 233'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animatedTextureGetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc `frame233delaySec=`(self: AnimatedTexture; val: float64) =
  if isNil(animatedTextureSetFrameDelayMethodBind):
    animatedTextureSetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"set_frame_delay")
  var
    godotBoundArg0 = 233'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  animatedTextureSetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame233texture(self: AnimatedTexture): Texture =
  if isNil(animatedTextureGetFrameTextureMethodBind):
    animatedTextureGetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"get_frame_texture")
  var
    godotBoundArg0 = 233'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  animatedTextureGetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

proc `frame233texture=`(self: AnimatedTexture; val: Texture) =
  if isNil(animatedTextureSetFrameTextureMethodBind):
    animatedTextureSetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"set_frame_texture")
  var
    godotBoundArg0 = 233'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  let argToPassToGodot1 = if not val.isNil:
    val.godotObject
  else:
    nil
  argsToPassToGodot[][1] = argToPassToGodot1
  var ptrCallRet: pointer
  animatedTextureSetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame234delaySec(self: AnimatedTexture): float64 =
  if isNil(animatedTextureGetFrameDelayMethodBind):
    animatedTextureGetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"get_frame_delay")
  var
    godotBoundArg0 = 234'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animatedTextureGetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc `frame234delaySec=`(self: AnimatedTexture; val: float64) =
  if isNil(animatedTextureSetFrameDelayMethodBind):
    animatedTextureSetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"set_frame_delay")
  var
    godotBoundArg0 = 234'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  animatedTextureSetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame234texture(self: AnimatedTexture): Texture =
  if isNil(animatedTextureGetFrameTextureMethodBind):
    animatedTextureGetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"get_frame_texture")
  var
    godotBoundArg0 = 234'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  animatedTextureGetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

proc `frame234texture=`(self: AnimatedTexture; val: Texture) =
  if isNil(animatedTextureSetFrameTextureMethodBind):
    animatedTextureSetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"set_frame_texture")
  var
    godotBoundArg0 = 234'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  let argToPassToGodot1 = if not val.isNil:
    val.godotObject
  else:
    nil
  argsToPassToGodot[][1] = argToPassToGodot1
  var ptrCallRet: pointer
  animatedTextureSetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame235delaySec(self: AnimatedTexture): float64 =
  if isNil(animatedTextureGetFrameDelayMethodBind):
    animatedTextureGetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"get_frame_delay")
  var
    godotBoundArg0 = 235'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animatedTextureGetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc `frame235delaySec=`(self: AnimatedTexture; val: float64) =
  if isNil(animatedTextureSetFrameDelayMethodBind):
    animatedTextureSetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"set_frame_delay")
  var
    godotBoundArg0 = 235'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  animatedTextureSetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame235texture(self: AnimatedTexture): Texture =
  if isNil(animatedTextureGetFrameTextureMethodBind):
    animatedTextureGetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"get_frame_texture")
  var
    godotBoundArg0 = 235'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  animatedTextureGetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

proc `frame235texture=`(self: AnimatedTexture; val: Texture) =
  if isNil(animatedTextureSetFrameTextureMethodBind):
    animatedTextureSetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"set_frame_texture")
  var
    godotBoundArg0 = 235'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  let argToPassToGodot1 = if not val.isNil:
    val.godotObject
  else:
    nil
  argsToPassToGodot[][1] = argToPassToGodot1
  var ptrCallRet: pointer
  animatedTextureSetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame236delaySec(self: AnimatedTexture): float64 =
  if isNil(animatedTextureGetFrameDelayMethodBind):
    animatedTextureGetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"get_frame_delay")
  var
    godotBoundArg0 = 236'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animatedTextureGetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc `frame236delaySec=`(self: AnimatedTexture; val: float64) =
  if isNil(animatedTextureSetFrameDelayMethodBind):
    animatedTextureSetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"set_frame_delay")
  var
    godotBoundArg0 = 236'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  animatedTextureSetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame236texture(self: AnimatedTexture): Texture =
  if isNil(animatedTextureGetFrameTextureMethodBind):
    animatedTextureGetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"get_frame_texture")
  var
    godotBoundArg0 = 236'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  animatedTextureGetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

proc `frame236texture=`(self: AnimatedTexture; val: Texture) =
  if isNil(animatedTextureSetFrameTextureMethodBind):
    animatedTextureSetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"set_frame_texture")
  var
    godotBoundArg0 = 236'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  let argToPassToGodot1 = if not val.isNil:
    val.godotObject
  else:
    nil
  argsToPassToGodot[][1] = argToPassToGodot1
  var ptrCallRet: pointer
  animatedTextureSetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame237delaySec(self: AnimatedTexture): float64 =
  if isNil(animatedTextureGetFrameDelayMethodBind):
    animatedTextureGetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"get_frame_delay")
  var
    godotBoundArg0 = 237'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animatedTextureGetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc `frame237delaySec=`(self: AnimatedTexture; val: float64) =
  if isNil(animatedTextureSetFrameDelayMethodBind):
    animatedTextureSetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"set_frame_delay")
  var
    godotBoundArg0 = 237'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  animatedTextureSetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame237texture(self: AnimatedTexture): Texture =
  if isNil(animatedTextureGetFrameTextureMethodBind):
    animatedTextureGetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"get_frame_texture")
  var
    godotBoundArg0 = 237'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  animatedTextureGetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

proc `frame237texture=`(self: AnimatedTexture; val: Texture) =
  if isNil(animatedTextureSetFrameTextureMethodBind):
    animatedTextureSetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"set_frame_texture")
  var
    godotBoundArg0 = 237'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  let argToPassToGodot1 = if not val.isNil:
    val.godotObject
  else:
    nil
  argsToPassToGodot[][1] = argToPassToGodot1
  var ptrCallRet: pointer
  animatedTextureSetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame238delaySec(self: AnimatedTexture): float64 =
  if isNil(animatedTextureGetFrameDelayMethodBind):
    animatedTextureGetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"get_frame_delay")
  var
    godotBoundArg0 = 238'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animatedTextureGetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc `frame238delaySec=`(self: AnimatedTexture; val: float64) =
  if isNil(animatedTextureSetFrameDelayMethodBind):
    animatedTextureSetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"set_frame_delay")
  var
    godotBoundArg0 = 238'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  animatedTextureSetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame238texture(self: AnimatedTexture): Texture =
  if isNil(animatedTextureGetFrameTextureMethodBind):
    animatedTextureGetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"get_frame_texture")
  var
    godotBoundArg0 = 238'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  animatedTextureGetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

proc `frame238texture=`(self: AnimatedTexture; val: Texture) =
  if isNil(animatedTextureSetFrameTextureMethodBind):
    animatedTextureSetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"set_frame_texture")
  var
    godotBoundArg0 = 238'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  let argToPassToGodot1 = if not val.isNil:
    val.godotObject
  else:
    nil
  argsToPassToGodot[][1] = argToPassToGodot1
  var ptrCallRet: pointer
  animatedTextureSetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame239delaySec(self: AnimatedTexture): float64 =
  if isNil(animatedTextureGetFrameDelayMethodBind):
    animatedTextureGetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"get_frame_delay")
  var
    godotBoundArg0 = 239'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animatedTextureGetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc `frame239delaySec=`(self: AnimatedTexture; val: float64) =
  if isNil(animatedTextureSetFrameDelayMethodBind):
    animatedTextureSetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"set_frame_delay")
  var
    godotBoundArg0 = 239'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  animatedTextureSetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame239texture(self: AnimatedTexture): Texture =
  if isNil(animatedTextureGetFrameTextureMethodBind):
    animatedTextureGetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"get_frame_texture")
  var
    godotBoundArg0 = 239'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  animatedTextureGetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

proc `frame239texture=`(self: AnimatedTexture; val: Texture) =
  if isNil(animatedTextureSetFrameTextureMethodBind):
    animatedTextureSetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"set_frame_texture")
  var
    godotBoundArg0 = 239'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  let argToPassToGodot1 = if not val.isNil:
    val.godotObject
  else:
    nil
  argsToPassToGodot[][1] = argToPassToGodot1
  var ptrCallRet: pointer
  animatedTextureSetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame24delaySec(self: AnimatedTexture): float64 =
  if isNil(animatedTextureGetFrameDelayMethodBind):
    animatedTextureGetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"get_frame_delay")
  var
    godotBoundArg0 = 24'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animatedTextureGetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc `frame24delaySec=`(self: AnimatedTexture; val: float64) =
  if isNil(animatedTextureSetFrameDelayMethodBind):
    animatedTextureSetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"set_frame_delay")
  var
    godotBoundArg0 = 24'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  animatedTextureSetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame24texture(self: AnimatedTexture): Texture =
  if isNil(animatedTextureGetFrameTextureMethodBind):
    animatedTextureGetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"get_frame_texture")
  var
    godotBoundArg0 = 24'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  animatedTextureGetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

proc `frame24texture=`(self: AnimatedTexture; val: Texture) =
  if isNil(animatedTextureSetFrameTextureMethodBind):
    animatedTextureSetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"set_frame_texture")
  var
    godotBoundArg0 = 24'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  let argToPassToGodot1 = if not val.isNil:
    val.godotObject
  else:
    nil
  argsToPassToGodot[][1] = argToPassToGodot1
  var ptrCallRet: pointer
  animatedTextureSetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame240delaySec(self: AnimatedTexture): float64 =
  if isNil(animatedTextureGetFrameDelayMethodBind):
    animatedTextureGetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"get_frame_delay")
  var
    godotBoundArg0 = 240'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animatedTextureGetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc `frame240delaySec=`(self: AnimatedTexture; val: float64) =
  if isNil(animatedTextureSetFrameDelayMethodBind):
    animatedTextureSetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"set_frame_delay")
  var
    godotBoundArg0 = 240'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  animatedTextureSetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame240texture(self: AnimatedTexture): Texture =
  if isNil(animatedTextureGetFrameTextureMethodBind):
    animatedTextureGetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"get_frame_texture")
  var
    godotBoundArg0 = 240'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  animatedTextureGetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

proc `frame240texture=`(self: AnimatedTexture; val: Texture) =
  if isNil(animatedTextureSetFrameTextureMethodBind):
    animatedTextureSetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"set_frame_texture")
  var
    godotBoundArg0 = 240'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  let argToPassToGodot1 = if not val.isNil:
    val.godotObject
  else:
    nil
  argsToPassToGodot[][1] = argToPassToGodot1
  var ptrCallRet: pointer
  animatedTextureSetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame241delaySec(self: AnimatedTexture): float64 =
  if isNil(animatedTextureGetFrameDelayMethodBind):
    animatedTextureGetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"get_frame_delay")
  var
    godotBoundArg0 = 241'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animatedTextureGetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc `frame241delaySec=`(self: AnimatedTexture; val: float64) =
  if isNil(animatedTextureSetFrameDelayMethodBind):
    animatedTextureSetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"set_frame_delay")
  var
    godotBoundArg0 = 241'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  animatedTextureSetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame241texture(self: AnimatedTexture): Texture =
  if isNil(animatedTextureGetFrameTextureMethodBind):
    animatedTextureGetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"get_frame_texture")
  var
    godotBoundArg0 = 241'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  animatedTextureGetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

proc `frame241texture=`(self: AnimatedTexture; val: Texture) =
  if isNil(animatedTextureSetFrameTextureMethodBind):
    animatedTextureSetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"set_frame_texture")
  var
    godotBoundArg0 = 241'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  let argToPassToGodot1 = if not val.isNil:
    val.godotObject
  else:
    nil
  argsToPassToGodot[][1] = argToPassToGodot1
  var ptrCallRet: pointer
  animatedTextureSetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame242delaySec(self: AnimatedTexture): float64 =
  if isNil(animatedTextureGetFrameDelayMethodBind):
    animatedTextureGetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"get_frame_delay")
  var
    godotBoundArg0 = 242'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animatedTextureGetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc `frame242delaySec=`(self: AnimatedTexture; val: float64) =
  if isNil(animatedTextureSetFrameDelayMethodBind):
    animatedTextureSetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"set_frame_delay")
  var
    godotBoundArg0 = 242'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  animatedTextureSetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame242texture(self: AnimatedTexture): Texture =
  if isNil(animatedTextureGetFrameTextureMethodBind):
    animatedTextureGetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"get_frame_texture")
  var
    godotBoundArg0 = 242'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  animatedTextureGetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

proc `frame242texture=`(self: AnimatedTexture; val: Texture) =
  if isNil(animatedTextureSetFrameTextureMethodBind):
    animatedTextureSetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"set_frame_texture")
  var
    godotBoundArg0 = 242'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  let argToPassToGodot1 = if not val.isNil:
    val.godotObject
  else:
    nil
  argsToPassToGodot[][1] = argToPassToGodot1
  var ptrCallRet: pointer
  animatedTextureSetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame243delaySec(self: AnimatedTexture): float64 =
  if isNil(animatedTextureGetFrameDelayMethodBind):
    animatedTextureGetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"get_frame_delay")
  var
    godotBoundArg0 = 243'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animatedTextureGetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc `frame243delaySec=`(self: AnimatedTexture; val: float64) =
  if isNil(animatedTextureSetFrameDelayMethodBind):
    animatedTextureSetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"set_frame_delay")
  var
    godotBoundArg0 = 243'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  animatedTextureSetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame243texture(self: AnimatedTexture): Texture =
  if isNil(animatedTextureGetFrameTextureMethodBind):
    animatedTextureGetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"get_frame_texture")
  var
    godotBoundArg0 = 243'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  animatedTextureGetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

proc `frame243texture=`(self: AnimatedTexture; val: Texture) =
  if isNil(animatedTextureSetFrameTextureMethodBind):
    animatedTextureSetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"set_frame_texture")
  var
    godotBoundArg0 = 243'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  let argToPassToGodot1 = if not val.isNil:
    val.godotObject
  else:
    nil
  argsToPassToGodot[][1] = argToPassToGodot1
  var ptrCallRet: pointer
  animatedTextureSetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame244delaySec(self: AnimatedTexture): float64 =
  if isNil(animatedTextureGetFrameDelayMethodBind):
    animatedTextureGetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"get_frame_delay")
  var
    godotBoundArg0 = 244'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animatedTextureGetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc `frame244delaySec=`(self: AnimatedTexture; val: float64) =
  if isNil(animatedTextureSetFrameDelayMethodBind):
    animatedTextureSetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"set_frame_delay")
  var
    godotBoundArg0 = 244'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  animatedTextureSetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame244texture(self: AnimatedTexture): Texture =
  if isNil(animatedTextureGetFrameTextureMethodBind):
    animatedTextureGetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"get_frame_texture")
  var
    godotBoundArg0 = 244'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  animatedTextureGetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

proc `frame244texture=`(self: AnimatedTexture; val: Texture) =
  if isNil(animatedTextureSetFrameTextureMethodBind):
    animatedTextureSetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"set_frame_texture")
  var
    godotBoundArg0 = 244'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  let argToPassToGodot1 = if not val.isNil:
    val.godotObject
  else:
    nil
  argsToPassToGodot[][1] = argToPassToGodot1
  var ptrCallRet: pointer
  animatedTextureSetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame245delaySec(self: AnimatedTexture): float64 =
  if isNil(animatedTextureGetFrameDelayMethodBind):
    animatedTextureGetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"get_frame_delay")
  var
    godotBoundArg0 = 245'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animatedTextureGetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc `frame245delaySec=`(self: AnimatedTexture; val: float64) =
  if isNil(animatedTextureSetFrameDelayMethodBind):
    animatedTextureSetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"set_frame_delay")
  var
    godotBoundArg0 = 245'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  animatedTextureSetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame245texture(self: AnimatedTexture): Texture =
  if isNil(animatedTextureGetFrameTextureMethodBind):
    animatedTextureGetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"get_frame_texture")
  var
    godotBoundArg0 = 245'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  animatedTextureGetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

proc `frame245texture=`(self: AnimatedTexture; val: Texture) =
  if isNil(animatedTextureSetFrameTextureMethodBind):
    animatedTextureSetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"set_frame_texture")
  var
    godotBoundArg0 = 245'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  let argToPassToGodot1 = if not val.isNil:
    val.godotObject
  else:
    nil
  argsToPassToGodot[][1] = argToPassToGodot1
  var ptrCallRet: pointer
  animatedTextureSetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame246delaySec(self: AnimatedTexture): float64 =
  if isNil(animatedTextureGetFrameDelayMethodBind):
    animatedTextureGetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"get_frame_delay")
  var
    godotBoundArg0 = 246'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animatedTextureGetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc `frame246delaySec=`(self: AnimatedTexture; val: float64) =
  if isNil(animatedTextureSetFrameDelayMethodBind):
    animatedTextureSetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"set_frame_delay")
  var
    godotBoundArg0 = 246'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  animatedTextureSetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame246texture(self: AnimatedTexture): Texture =
  if isNil(animatedTextureGetFrameTextureMethodBind):
    animatedTextureGetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"get_frame_texture")
  var
    godotBoundArg0 = 246'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  animatedTextureGetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

proc `frame246texture=`(self: AnimatedTexture; val: Texture) =
  if isNil(animatedTextureSetFrameTextureMethodBind):
    animatedTextureSetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"set_frame_texture")
  var
    godotBoundArg0 = 246'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  let argToPassToGodot1 = if not val.isNil:
    val.godotObject
  else:
    nil
  argsToPassToGodot[][1] = argToPassToGodot1
  var ptrCallRet: pointer
  animatedTextureSetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame247delaySec(self: AnimatedTexture): float64 =
  if isNil(animatedTextureGetFrameDelayMethodBind):
    animatedTextureGetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"get_frame_delay")
  var
    godotBoundArg0 = 247'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animatedTextureGetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc `frame247delaySec=`(self: AnimatedTexture; val: float64) =
  if isNil(animatedTextureSetFrameDelayMethodBind):
    animatedTextureSetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"set_frame_delay")
  var
    godotBoundArg0 = 247'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  animatedTextureSetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame247texture(self: AnimatedTexture): Texture =
  if isNil(animatedTextureGetFrameTextureMethodBind):
    animatedTextureGetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"get_frame_texture")
  var
    godotBoundArg0 = 247'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  animatedTextureGetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

proc `frame247texture=`(self: AnimatedTexture; val: Texture) =
  if isNil(animatedTextureSetFrameTextureMethodBind):
    animatedTextureSetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"set_frame_texture")
  var
    godotBoundArg0 = 247'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  let argToPassToGodot1 = if not val.isNil:
    val.godotObject
  else:
    nil
  argsToPassToGodot[][1] = argToPassToGodot1
  var ptrCallRet: pointer
  animatedTextureSetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame248delaySec(self: AnimatedTexture): float64 =
  if isNil(animatedTextureGetFrameDelayMethodBind):
    animatedTextureGetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"get_frame_delay")
  var
    godotBoundArg0 = 248'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animatedTextureGetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc `frame248delaySec=`(self: AnimatedTexture; val: float64) =
  if isNil(animatedTextureSetFrameDelayMethodBind):
    animatedTextureSetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"set_frame_delay")
  var
    godotBoundArg0 = 248'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  animatedTextureSetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame248texture(self: AnimatedTexture): Texture =
  if isNil(animatedTextureGetFrameTextureMethodBind):
    animatedTextureGetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"get_frame_texture")
  var
    godotBoundArg0 = 248'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  animatedTextureGetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

proc `frame248texture=`(self: AnimatedTexture; val: Texture) =
  if isNil(animatedTextureSetFrameTextureMethodBind):
    animatedTextureSetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"set_frame_texture")
  var
    godotBoundArg0 = 248'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  let argToPassToGodot1 = if not val.isNil:
    val.godotObject
  else:
    nil
  argsToPassToGodot[][1] = argToPassToGodot1
  var ptrCallRet: pointer
  animatedTextureSetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame249delaySec(self: AnimatedTexture): float64 =
  if isNil(animatedTextureGetFrameDelayMethodBind):
    animatedTextureGetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"get_frame_delay")
  var
    godotBoundArg0 = 249'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animatedTextureGetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc `frame249delaySec=`(self: AnimatedTexture; val: float64) =
  if isNil(animatedTextureSetFrameDelayMethodBind):
    animatedTextureSetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"set_frame_delay")
  var
    godotBoundArg0 = 249'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  animatedTextureSetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame249texture(self: AnimatedTexture): Texture =
  if isNil(animatedTextureGetFrameTextureMethodBind):
    animatedTextureGetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"get_frame_texture")
  var
    godotBoundArg0 = 249'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  animatedTextureGetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

proc `frame249texture=`(self: AnimatedTexture; val: Texture) =
  if isNil(animatedTextureSetFrameTextureMethodBind):
    animatedTextureSetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"set_frame_texture")
  var
    godotBoundArg0 = 249'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  let argToPassToGodot1 = if not val.isNil:
    val.godotObject
  else:
    nil
  argsToPassToGodot[][1] = argToPassToGodot1
  var ptrCallRet: pointer
  animatedTextureSetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame25delaySec(self: AnimatedTexture): float64 =
  if isNil(animatedTextureGetFrameDelayMethodBind):
    animatedTextureGetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"get_frame_delay")
  var
    godotBoundArg0 = 25'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animatedTextureGetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc `frame25delaySec=`(self: AnimatedTexture; val: float64) =
  if isNil(animatedTextureSetFrameDelayMethodBind):
    animatedTextureSetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"set_frame_delay")
  var
    godotBoundArg0 = 25'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  animatedTextureSetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame25texture(self: AnimatedTexture): Texture =
  if isNil(animatedTextureGetFrameTextureMethodBind):
    animatedTextureGetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"get_frame_texture")
  var
    godotBoundArg0 = 25'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  animatedTextureGetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

proc `frame25texture=`(self: AnimatedTexture; val: Texture) =
  if isNil(animatedTextureSetFrameTextureMethodBind):
    animatedTextureSetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"set_frame_texture")
  var
    godotBoundArg0 = 25'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  let argToPassToGodot1 = if not val.isNil:
    val.godotObject
  else:
    nil
  argsToPassToGodot[][1] = argToPassToGodot1
  var ptrCallRet: pointer
  animatedTextureSetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame250delaySec(self: AnimatedTexture): float64 =
  if isNil(animatedTextureGetFrameDelayMethodBind):
    animatedTextureGetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"get_frame_delay")
  var
    godotBoundArg0 = 250'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animatedTextureGetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc `frame250delaySec=`(self: AnimatedTexture; val: float64) =
  if isNil(animatedTextureSetFrameDelayMethodBind):
    animatedTextureSetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"set_frame_delay")
  var
    godotBoundArg0 = 250'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  animatedTextureSetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame250texture(self: AnimatedTexture): Texture =
  if isNil(animatedTextureGetFrameTextureMethodBind):
    animatedTextureGetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"get_frame_texture")
  var
    godotBoundArg0 = 250'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  animatedTextureGetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

proc `frame250texture=`(self: AnimatedTexture; val: Texture) =
  if isNil(animatedTextureSetFrameTextureMethodBind):
    animatedTextureSetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"set_frame_texture")
  var
    godotBoundArg0 = 250'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  let argToPassToGodot1 = if not val.isNil:
    val.godotObject
  else:
    nil
  argsToPassToGodot[][1] = argToPassToGodot1
  var ptrCallRet: pointer
  animatedTextureSetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame251delaySec(self: AnimatedTexture): float64 =
  if isNil(animatedTextureGetFrameDelayMethodBind):
    animatedTextureGetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"get_frame_delay")
  var
    godotBoundArg0 = 251'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animatedTextureGetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc `frame251delaySec=`(self: AnimatedTexture; val: float64) =
  if isNil(animatedTextureSetFrameDelayMethodBind):
    animatedTextureSetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"set_frame_delay")
  var
    godotBoundArg0 = 251'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  animatedTextureSetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame251texture(self: AnimatedTexture): Texture =
  if isNil(animatedTextureGetFrameTextureMethodBind):
    animatedTextureGetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"get_frame_texture")
  var
    godotBoundArg0 = 251'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  animatedTextureGetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

proc `frame251texture=`(self: AnimatedTexture; val: Texture) =
  if isNil(animatedTextureSetFrameTextureMethodBind):
    animatedTextureSetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"set_frame_texture")
  var
    godotBoundArg0 = 251'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  let argToPassToGodot1 = if not val.isNil:
    val.godotObject
  else:
    nil
  argsToPassToGodot[][1] = argToPassToGodot1
  var ptrCallRet: pointer
  animatedTextureSetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame252delaySec(self: AnimatedTexture): float64 =
  if isNil(animatedTextureGetFrameDelayMethodBind):
    animatedTextureGetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"get_frame_delay")
  var
    godotBoundArg0 = 252'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animatedTextureGetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc `frame252delaySec=`(self: AnimatedTexture; val: float64) =
  if isNil(animatedTextureSetFrameDelayMethodBind):
    animatedTextureSetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"set_frame_delay")
  var
    godotBoundArg0 = 252'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  animatedTextureSetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame252texture(self: AnimatedTexture): Texture =
  if isNil(animatedTextureGetFrameTextureMethodBind):
    animatedTextureGetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"get_frame_texture")
  var
    godotBoundArg0 = 252'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  animatedTextureGetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

proc `frame252texture=`(self: AnimatedTexture; val: Texture) =
  if isNil(animatedTextureSetFrameTextureMethodBind):
    animatedTextureSetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"set_frame_texture")
  var
    godotBoundArg0 = 252'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  let argToPassToGodot1 = if not val.isNil:
    val.godotObject
  else:
    nil
  argsToPassToGodot[][1] = argToPassToGodot1
  var ptrCallRet: pointer
  animatedTextureSetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame253delaySec(self: AnimatedTexture): float64 =
  if isNil(animatedTextureGetFrameDelayMethodBind):
    animatedTextureGetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"get_frame_delay")
  var
    godotBoundArg0 = 253'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animatedTextureGetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc `frame253delaySec=`(self: AnimatedTexture; val: float64) =
  if isNil(animatedTextureSetFrameDelayMethodBind):
    animatedTextureSetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"set_frame_delay")
  var
    godotBoundArg0 = 253'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  animatedTextureSetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame253texture(self: AnimatedTexture): Texture =
  if isNil(animatedTextureGetFrameTextureMethodBind):
    animatedTextureGetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"get_frame_texture")
  var
    godotBoundArg0 = 253'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  animatedTextureGetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

proc `frame253texture=`(self: AnimatedTexture; val: Texture) =
  if isNil(animatedTextureSetFrameTextureMethodBind):
    animatedTextureSetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"set_frame_texture")
  var
    godotBoundArg0 = 253'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  let argToPassToGodot1 = if not val.isNil:
    val.godotObject
  else:
    nil
  argsToPassToGodot[][1] = argToPassToGodot1
  var ptrCallRet: pointer
  animatedTextureSetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame254delaySec(self: AnimatedTexture): float64 =
  if isNil(animatedTextureGetFrameDelayMethodBind):
    animatedTextureGetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"get_frame_delay")
  var
    godotBoundArg0 = 254'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animatedTextureGetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc `frame254delaySec=`(self: AnimatedTexture; val: float64) =
  if isNil(animatedTextureSetFrameDelayMethodBind):
    animatedTextureSetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"set_frame_delay")
  var
    godotBoundArg0 = 254'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  animatedTextureSetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame254texture(self: AnimatedTexture): Texture =
  if isNil(animatedTextureGetFrameTextureMethodBind):
    animatedTextureGetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"get_frame_texture")
  var
    godotBoundArg0 = 254'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  animatedTextureGetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

proc `frame254texture=`(self: AnimatedTexture; val: Texture) =
  if isNil(animatedTextureSetFrameTextureMethodBind):
    animatedTextureSetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"set_frame_texture")
  var
    godotBoundArg0 = 254'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  let argToPassToGodot1 = if not val.isNil:
    val.godotObject
  else:
    nil
  argsToPassToGodot[][1] = argToPassToGodot1
  var ptrCallRet: pointer
  animatedTextureSetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame255delaySec(self: AnimatedTexture): float64 =
  if isNil(animatedTextureGetFrameDelayMethodBind):
    animatedTextureGetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"get_frame_delay")
  var
    godotBoundArg0 = 255'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animatedTextureGetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc `frame255delaySec=`(self: AnimatedTexture; val: float64) =
  if isNil(animatedTextureSetFrameDelayMethodBind):
    animatedTextureSetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"set_frame_delay")
  var
    godotBoundArg0 = 255'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  animatedTextureSetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame255texture(self: AnimatedTexture): Texture =
  if isNil(animatedTextureGetFrameTextureMethodBind):
    animatedTextureGetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"get_frame_texture")
  var
    godotBoundArg0 = 255'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  animatedTextureGetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

proc `frame255texture=`(self: AnimatedTexture; val: Texture) =
  if isNil(animatedTextureSetFrameTextureMethodBind):
    animatedTextureSetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"set_frame_texture")
  var
    godotBoundArg0 = 255'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  let argToPassToGodot1 = if not val.isNil:
    val.godotObject
  else:
    nil
  argsToPassToGodot[][1] = argToPassToGodot1
  var ptrCallRet: pointer
  animatedTextureSetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame26delaySec(self: AnimatedTexture): float64 =
  if isNil(animatedTextureGetFrameDelayMethodBind):
    animatedTextureGetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"get_frame_delay")
  var
    godotBoundArg0 = 26'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animatedTextureGetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc `frame26delaySec=`(self: AnimatedTexture; val: float64) =
  if isNil(animatedTextureSetFrameDelayMethodBind):
    animatedTextureSetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"set_frame_delay")
  var
    godotBoundArg0 = 26'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  animatedTextureSetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame26texture(self: AnimatedTexture): Texture =
  if isNil(animatedTextureGetFrameTextureMethodBind):
    animatedTextureGetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"get_frame_texture")
  var
    godotBoundArg0 = 26'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  animatedTextureGetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

proc `frame26texture=`(self: AnimatedTexture; val: Texture) =
  if isNil(animatedTextureSetFrameTextureMethodBind):
    animatedTextureSetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"set_frame_texture")
  var
    godotBoundArg0 = 26'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  let argToPassToGodot1 = if not val.isNil:
    val.godotObject
  else:
    nil
  argsToPassToGodot[][1] = argToPassToGodot1
  var ptrCallRet: pointer
  animatedTextureSetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame27delaySec(self: AnimatedTexture): float64 =
  if isNil(animatedTextureGetFrameDelayMethodBind):
    animatedTextureGetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"get_frame_delay")
  var
    godotBoundArg0 = 27'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animatedTextureGetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc `frame27delaySec=`(self: AnimatedTexture; val: float64) =
  if isNil(animatedTextureSetFrameDelayMethodBind):
    animatedTextureSetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"set_frame_delay")
  var
    godotBoundArg0 = 27'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  animatedTextureSetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame27texture(self: AnimatedTexture): Texture =
  if isNil(animatedTextureGetFrameTextureMethodBind):
    animatedTextureGetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"get_frame_texture")
  var
    godotBoundArg0 = 27'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  animatedTextureGetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

proc `frame27texture=`(self: AnimatedTexture; val: Texture) =
  if isNil(animatedTextureSetFrameTextureMethodBind):
    animatedTextureSetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"set_frame_texture")
  var
    godotBoundArg0 = 27'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  let argToPassToGodot1 = if not val.isNil:
    val.godotObject
  else:
    nil
  argsToPassToGodot[][1] = argToPassToGodot1
  var ptrCallRet: pointer
  animatedTextureSetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame28delaySec(self: AnimatedTexture): float64 =
  if isNil(animatedTextureGetFrameDelayMethodBind):
    animatedTextureGetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"get_frame_delay")
  var
    godotBoundArg0 = 28'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animatedTextureGetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc `frame28delaySec=`(self: AnimatedTexture; val: float64) =
  if isNil(animatedTextureSetFrameDelayMethodBind):
    animatedTextureSetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"set_frame_delay")
  var
    godotBoundArg0 = 28'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  animatedTextureSetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame28texture(self: AnimatedTexture): Texture =
  if isNil(animatedTextureGetFrameTextureMethodBind):
    animatedTextureGetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"get_frame_texture")
  var
    godotBoundArg0 = 28'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  animatedTextureGetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

proc `frame28texture=`(self: AnimatedTexture; val: Texture) =
  if isNil(animatedTextureSetFrameTextureMethodBind):
    animatedTextureSetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"set_frame_texture")
  var
    godotBoundArg0 = 28'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  let argToPassToGodot1 = if not val.isNil:
    val.godotObject
  else:
    nil
  argsToPassToGodot[][1] = argToPassToGodot1
  var ptrCallRet: pointer
  animatedTextureSetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame29delaySec(self: AnimatedTexture): float64 =
  if isNil(animatedTextureGetFrameDelayMethodBind):
    animatedTextureGetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"get_frame_delay")
  var
    godotBoundArg0 = 29'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animatedTextureGetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc `frame29delaySec=`(self: AnimatedTexture; val: float64) =
  if isNil(animatedTextureSetFrameDelayMethodBind):
    animatedTextureSetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"set_frame_delay")
  var
    godotBoundArg0 = 29'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  animatedTextureSetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame29texture(self: AnimatedTexture): Texture =
  if isNil(animatedTextureGetFrameTextureMethodBind):
    animatedTextureGetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"get_frame_texture")
  var
    godotBoundArg0 = 29'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  animatedTextureGetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

proc `frame29texture=`(self: AnimatedTexture; val: Texture) =
  if isNil(animatedTextureSetFrameTextureMethodBind):
    animatedTextureSetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"set_frame_texture")
  var
    godotBoundArg0 = 29'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  let argToPassToGodot1 = if not val.isNil:
    val.godotObject
  else:
    nil
  argsToPassToGodot[][1] = argToPassToGodot1
  var ptrCallRet: pointer
  animatedTextureSetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame3delaySec(self: AnimatedTexture): float64 =
  if isNil(animatedTextureGetFrameDelayMethodBind):
    animatedTextureGetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"get_frame_delay")
  var
    godotBoundArg0 = 3'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animatedTextureGetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc `frame3delaySec=`(self: AnimatedTexture; val: float64) =
  if isNil(animatedTextureSetFrameDelayMethodBind):
    animatedTextureSetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"set_frame_delay")
  var
    godotBoundArg0 = 3'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  animatedTextureSetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame3texture(self: AnimatedTexture): Texture =
  if isNil(animatedTextureGetFrameTextureMethodBind):
    animatedTextureGetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"get_frame_texture")
  var
    godotBoundArg0 = 3'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  animatedTextureGetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

proc `frame3texture=`(self: AnimatedTexture; val: Texture) =
  if isNil(animatedTextureSetFrameTextureMethodBind):
    animatedTextureSetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"set_frame_texture")
  var
    godotBoundArg0 = 3'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  let argToPassToGodot1 = if not val.isNil:
    val.godotObject
  else:
    nil
  argsToPassToGodot[][1] = argToPassToGodot1
  var ptrCallRet: pointer
  animatedTextureSetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame30delaySec(self: AnimatedTexture): float64 =
  if isNil(animatedTextureGetFrameDelayMethodBind):
    animatedTextureGetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"get_frame_delay")
  var
    godotBoundArg0 = 30'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animatedTextureGetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc `frame30delaySec=`(self: AnimatedTexture; val: float64) =
  if isNil(animatedTextureSetFrameDelayMethodBind):
    animatedTextureSetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"set_frame_delay")
  var
    godotBoundArg0 = 30'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  animatedTextureSetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame30texture(self: AnimatedTexture): Texture =
  if isNil(animatedTextureGetFrameTextureMethodBind):
    animatedTextureGetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"get_frame_texture")
  var
    godotBoundArg0 = 30'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  animatedTextureGetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

proc `frame30texture=`(self: AnimatedTexture; val: Texture) =
  if isNil(animatedTextureSetFrameTextureMethodBind):
    animatedTextureSetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"set_frame_texture")
  var
    godotBoundArg0 = 30'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  let argToPassToGodot1 = if not val.isNil:
    val.godotObject
  else:
    nil
  argsToPassToGodot[][1] = argToPassToGodot1
  var ptrCallRet: pointer
  animatedTextureSetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame31delaySec(self: AnimatedTexture): float64 =
  if isNil(animatedTextureGetFrameDelayMethodBind):
    animatedTextureGetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"get_frame_delay")
  var
    godotBoundArg0 = 31'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animatedTextureGetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc `frame31delaySec=`(self: AnimatedTexture; val: float64) =
  if isNil(animatedTextureSetFrameDelayMethodBind):
    animatedTextureSetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"set_frame_delay")
  var
    godotBoundArg0 = 31'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  animatedTextureSetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame31texture(self: AnimatedTexture): Texture =
  if isNil(animatedTextureGetFrameTextureMethodBind):
    animatedTextureGetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"get_frame_texture")
  var
    godotBoundArg0 = 31'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  animatedTextureGetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

proc `frame31texture=`(self: AnimatedTexture; val: Texture) =
  if isNil(animatedTextureSetFrameTextureMethodBind):
    animatedTextureSetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"set_frame_texture")
  var
    godotBoundArg0 = 31'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  let argToPassToGodot1 = if not val.isNil:
    val.godotObject
  else:
    nil
  argsToPassToGodot[][1] = argToPassToGodot1
  var ptrCallRet: pointer
  animatedTextureSetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame32delaySec(self: AnimatedTexture): float64 =
  if isNil(animatedTextureGetFrameDelayMethodBind):
    animatedTextureGetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"get_frame_delay")
  var
    godotBoundArg0 = 32'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animatedTextureGetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc `frame32delaySec=`(self: AnimatedTexture; val: float64) =
  if isNil(animatedTextureSetFrameDelayMethodBind):
    animatedTextureSetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"set_frame_delay")
  var
    godotBoundArg0 = 32'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  animatedTextureSetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame32texture(self: AnimatedTexture): Texture =
  if isNil(animatedTextureGetFrameTextureMethodBind):
    animatedTextureGetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"get_frame_texture")
  var
    godotBoundArg0 = 32'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  animatedTextureGetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

proc `frame32texture=`(self: AnimatedTexture; val: Texture) =
  if isNil(animatedTextureSetFrameTextureMethodBind):
    animatedTextureSetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"set_frame_texture")
  var
    godotBoundArg0 = 32'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  let argToPassToGodot1 = if not val.isNil:
    val.godotObject
  else:
    nil
  argsToPassToGodot[][1] = argToPassToGodot1
  var ptrCallRet: pointer
  animatedTextureSetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame33delaySec(self: AnimatedTexture): float64 =
  if isNil(animatedTextureGetFrameDelayMethodBind):
    animatedTextureGetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"get_frame_delay")
  var
    godotBoundArg0 = 33'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animatedTextureGetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc `frame33delaySec=`(self: AnimatedTexture; val: float64) =
  if isNil(animatedTextureSetFrameDelayMethodBind):
    animatedTextureSetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"set_frame_delay")
  var
    godotBoundArg0 = 33'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  animatedTextureSetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame33texture(self: AnimatedTexture): Texture =
  if isNil(animatedTextureGetFrameTextureMethodBind):
    animatedTextureGetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"get_frame_texture")
  var
    godotBoundArg0 = 33'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  animatedTextureGetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

proc `frame33texture=`(self: AnimatedTexture; val: Texture) =
  if isNil(animatedTextureSetFrameTextureMethodBind):
    animatedTextureSetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"set_frame_texture")
  var
    godotBoundArg0 = 33'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  let argToPassToGodot1 = if not val.isNil:
    val.godotObject
  else:
    nil
  argsToPassToGodot[][1] = argToPassToGodot1
  var ptrCallRet: pointer
  animatedTextureSetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame34delaySec(self: AnimatedTexture): float64 =
  if isNil(animatedTextureGetFrameDelayMethodBind):
    animatedTextureGetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"get_frame_delay")
  var
    godotBoundArg0 = 34'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animatedTextureGetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc `frame34delaySec=`(self: AnimatedTexture; val: float64) =
  if isNil(animatedTextureSetFrameDelayMethodBind):
    animatedTextureSetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"set_frame_delay")
  var
    godotBoundArg0 = 34'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  animatedTextureSetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame34texture(self: AnimatedTexture): Texture =
  if isNil(animatedTextureGetFrameTextureMethodBind):
    animatedTextureGetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"get_frame_texture")
  var
    godotBoundArg0 = 34'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  animatedTextureGetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

proc `frame34texture=`(self: AnimatedTexture; val: Texture) =
  if isNil(animatedTextureSetFrameTextureMethodBind):
    animatedTextureSetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"set_frame_texture")
  var
    godotBoundArg0 = 34'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  let argToPassToGodot1 = if not val.isNil:
    val.godotObject
  else:
    nil
  argsToPassToGodot[][1] = argToPassToGodot1
  var ptrCallRet: pointer
  animatedTextureSetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame35delaySec(self: AnimatedTexture): float64 =
  if isNil(animatedTextureGetFrameDelayMethodBind):
    animatedTextureGetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"get_frame_delay")
  var
    godotBoundArg0 = 35'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animatedTextureGetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc `frame35delaySec=`(self: AnimatedTexture; val: float64) =
  if isNil(animatedTextureSetFrameDelayMethodBind):
    animatedTextureSetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"set_frame_delay")
  var
    godotBoundArg0 = 35'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  animatedTextureSetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame35texture(self: AnimatedTexture): Texture =
  if isNil(animatedTextureGetFrameTextureMethodBind):
    animatedTextureGetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"get_frame_texture")
  var
    godotBoundArg0 = 35'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  animatedTextureGetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

proc `frame35texture=`(self: AnimatedTexture; val: Texture) =
  if isNil(animatedTextureSetFrameTextureMethodBind):
    animatedTextureSetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"set_frame_texture")
  var
    godotBoundArg0 = 35'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  let argToPassToGodot1 = if not val.isNil:
    val.godotObject
  else:
    nil
  argsToPassToGodot[][1] = argToPassToGodot1
  var ptrCallRet: pointer
  animatedTextureSetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame36delaySec(self: AnimatedTexture): float64 =
  if isNil(animatedTextureGetFrameDelayMethodBind):
    animatedTextureGetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"get_frame_delay")
  var
    godotBoundArg0 = 36'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animatedTextureGetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc `frame36delaySec=`(self: AnimatedTexture; val: float64) =
  if isNil(animatedTextureSetFrameDelayMethodBind):
    animatedTextureSetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"set_frame_delay")
  var
    godotBoundArg0 = 36'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  animatedTextureSetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame36texture(self: AnimatedTexture): Texture =
  if isNil(animatedTextureGetFrameTextureMethodBind):
    animatedTextureGetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"get_frame_texture")
  var
    godotBoundArg0 = 36'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  animatedTextureGetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

proc `frame36texture=`(self: AnimatedTexture; val: Texture) =
  if isNil(animatedTextureSetFrameTextureMethodBind):
    animatedTextureSetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"set_frame_texture")
  var
    godotBoundArg0 = 36'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  let argToPassToGodot1 = if not val.isNil:
    val.godotObject
  else:
    nil
  argsToPassToGodot[][1] = argToPassToGodot1
  var ptrCallRet: pointer
  animatedTextureSetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame37delaySec(self: AnimatedTexture): float64 =
  if isNil(animatedTextureGetFrameDelayMethodBind):
    animatedTextureGetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"get_frame_delay")
  var
    godotBoundArg0 = 37'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animatedTextureGetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc `frame37delaySec=`(self: AnimatedTexture; val: float64) =
  if isNil(animatedTextureSetFrameDelayMethodBind):
    animatedTextureSetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"set_frame_delay")
  var
    godotBoundArg0 = 37'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  animatedTextureSetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame37texture(self: AnimatedTexture): Texture =
  if isNil(animatedTextureGetFrameTextureMethodBind):
    animatedTextureGetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"get_frame_texture")
  var
    godotBoundArg0 = 37'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  animatedTextureGetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

proc `frame37texture=`(self: AnimatedTexture; val: Texture) =
  if isNil(animatedTextureSetFrameTextureMethodBind):
    animatedTextureSetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"set_frame_texture")
  var
    godotBoundArg0 = 37'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  let argToPassToGodot1 = if not val.isNil:
    val.godotObject
  else:
    nil
  argsToPassToGodot[][1] = argToPassToGodot1
  var ptrCallRet: pointer
  animatedTextureSetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame38delaySec(self: AnimatedTexture): float64 =
  if isNil(animatedTextureGetFrameDelayMethodBind):
    animatedTextureGetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"get_frame_delay")
  var
    godotBoundArg0 = 38'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animatedTextureGetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc `frame38delaySec=`(self: AnimatedTexture; val: float64) =
  if isNil(animatedTextureSetFrameDelayMethodBind):
    animatedTextureSetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"set_frame_delay")
  var
    godotBoundArg0 = 38'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  animatedTextureSetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame38texture(self: AnimatedTexture): Texture =
  if isNil(animatedTextureGetFrameTextureMethodBind):
    animatedTextureGetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"get_frame_texture")
  var
    godotBoundArg0 = 38'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  animatedTextureGetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

proc `frame38texture=`(self: AnimatedTexture; val: Texture) =
  if isNil(animatedTextureSetFrameTextureMethodBind):
    animatedTextureSetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"set_frame_texture")
  var
    godotBoundArg0 = 38'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  let argToPassToGodot1 = if not val.isNil:
    val.godotObject
  else:
    nil
  argsToPassToGodot[][1] = argToPassToGodot1
  var ptrCallRet: pointer
  animatedTextureSetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame39delaySec(self: AnimatedTexture): float64 =
  if isNil(animatedTextureGetFrameDelayMethodBind):
    animatedTextureGetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"get_frame_delay")
  var
    godotBoundArg0 = 39'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animatedTextureGetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc `frame39delaySec=`(self: AnimatedTexture; val: float64) =
  if isNil(animatedTextureSetFrameDelayMethodBind):
    animatedTextureSetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"set_frame_delay")
  var
    godotBoundArg0 = 39'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  animatedTextureSetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame39texture(self: AnimatedTexture): Texture =
  if isNil(animatedTextureGetFrameTextureMethodBind):
    animatedTextureGetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"get_frame_texture")
  var
    godotBoundArg0 = 39'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  animatedTextureGetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

proc `frame39texture=`(self: AnimatedTexture; val: Texture) =
  if isNil(animatedTextureSetFrameTextureMethodBind):
    animatedTextureSetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"set_frame_texture")
  var
    godotBoundArg0 = 39'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  let argToPassToGodot1 = if not val.isNil:
    val.godotObject
  else:
    nil
  argsToPassToGodot[][1] = argToPassToGodot1
  var ptrCallRet: pointer
  animatedTextureSetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame4delaySec(self: AnimatedTexture): float64 =
  if isNil(animatedTextureGetFrameDelayMethodBind):
    animatedTextureGetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"get_frame_delay")
  var
    godotBoundArg0 = 4'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animatedTextureGetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc `frame4delaySec=`(self: AnimatedTexture; val: float64) =
  if isNil(animatedTextureSetFrameDelayMethodBind):
    animatedTextureSetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"set_frame_delay")
  var
    godotBoundArg0 = 4'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  animatedTextureSetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame4texture(self: AnimatedTexture): Texture =
  if isNil(animatedTextureGetFrameTextureMethodBind):
    animatedTextureGetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"get_frame_texture")
  var
    godotBoundArg0 = 4'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  animatedTextureGetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

proc `frame4texture=`(self: AnimatedTexture; val: Texture) =
  if isNil(animatedTextureSetFrameTextureMethodBind):
    animatedTextureSetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"set_frame_texture")
  var
    godotBoundArg0 = 4'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  let argToPassToGodot1 = if not val.isNil:
    val.godotObject
  else:
    nil
  argsToPassToGodot[][1] = argToPassToGodot1
  var ptrCallRet: pointer
  animatedTextureSetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame40delaySec(self: AnimatedTexture): float64 =
  if isNil(animatedTextureGetFrameDelayMethodBind):
    animatedTextureGetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"get_frame_delay")
  var
    godotBoundArg0 = 40'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animatedTextureGetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc `frame40delaySec=`(self: AnimatedTexture; val: float64) =
  if isNil(animatedTextureSetFrameDelayMethodBind):
    animatedTextureSetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"set_frame_delay")
  var
    godotBoundArg0 = 40'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  animatedTextureSetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame40texture(self: AnimatedTexture): Texture =
  if isNil(animatedTextureGetFrameTextureMethodBind):
    animatedTextureGetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"get_frame_texture")
  var
    godotBoundArg0 = 40'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  animatedTextureGetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

proc `frame40texture=`(self: AnimatedTexture; val: Texture) =
  if isNil(animatedTextureSetFrameTextureMethodBind):
    animatedTextureSetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"set_frame_texture")
  var
    godotBoundArg0 = 40'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  let argToPassToGodot1 = if not val.isNil:
    val.godotObject
  else:
    nil
  argsToPassToGodot[][1] = argToPassToGodot1
  var ptrCallRet: pointer
  animatedTextureSetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame41delaySec(self: AnimatedTexture): float64 =
  if isNil(animatedTextureGetFrameDelayMethodBind):
    animatedTextureGetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"get_frame_delay")
  var
    godotBoundArg0 = 41'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animatedTextureGetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc `frame41delaySec=`(self: AnimatedTexture; val: float64) =
  if isNil(animatedTextureSetFrameDelayMethodBind):
    animatedTextureSetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"set_frame_delay")
  var
    godotBoundArg0 = 41'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  animatedTextureSetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame41texture(self: AnimatedTexture): Texture =
  if isNil(animatedTextureGetFrameTextureMethodBind):
    animatedTextureGetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"get_frame_texture")
  var
    godotBoundArg0 = 41'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  animatedTextureGetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

proc `frame41texture=`(self: AnimatedTexture; val: Texture) =
  if isNil(animatedTextureSetFrameTextureMethodBind):
    animatedTextureSetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"set_frame_texture")
  var
    godotBoundArg0 = 41'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  let argToPassToGodot1 = if not val.isNil:
    val.godotObject
  else:
    nil
  argsToPassToGodot[][1] = argToPassToGodot1
  var ptrCallRet: pointer
  animatedTextureSetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame42delaySec(self: AnimatedTexture): float64 =
  if isNil(animatedTextureGetFrameDelayMethodBind):
    animatedTextureGetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"get_frame_delay")
  var
    godotBoundArg0 = 42'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animatedTextureGetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc `frame42delaySec=`(self: AnimatedTexture; val: float64) =
  if isNil(animatedTextureSetFrameDelayMethodBind):
    animatedTextureSetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"set_frame_delay")
  var
    godotBoundArg0 = 42'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  animatedTextureSetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame42texture(self: AnimatedTexture): Texture =
  if isNil(animatedTextureGetFrameTextureMethodBind):
    animatedTextureGetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"get_frame_texture")
  var
    godotBoundArg0 = 42'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  animatedTextureGetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

proc `frame42texture=`(self: AnimatedTexture; val: Texture) =
  if isNil(animatedTextureSetFrameTextureMethodBind):
    animatedTextureSetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"set_frame_texture")
  var
    godotBoundArg0 = 42'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  let argToPassToGodot1 = if not val.isNil:
    val.godotObject
  else:
    nil
  argsToPassToGodot[][1] = argToPassToGodot1
  var ptrCallRet: pointer
  animatedTextureSetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame43delaySec(self: AnimatedTexture): float64 =
  if isNil(animatedTextureGetFrameDelayMethodBind):
    animatedTextureGetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"get_frame_delay")
  var
    godotBoundArg0 = 43'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animatedTextureGetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc `frame43delaySec=`(self: AnimatedTexture; val: float64) =
  if isNil(animatedTextureSetFrameDelayMethodBind):
    animatedTextureSetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"set_frame_delay")
  var
    godotBoundArg0 = 43'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  animatedTextureSetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame43texture(self: AnimatedTexture): Texture =
  if isNil(animatedTextureGetFrameTextureMethodBind):
    animatedTextureGetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"get_frame_texture")
  var
    godotBoundArg0 = 43'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  animatedTextureGetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

proc `frame43texture=`(self: AnimatedTexture; val: Texture) =
  if isNil(animatedTextureSetFrameTextureMethodBind):
    animatedTextureSetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"set_frame_texture")
  var
    godotBoundArg0 = 43'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  let argToPassToGodot1 = if not val.isNil:
    val.godotObject
  else:
    nil
  argsToPassToGodot[][1] = argToPassToGodot1
  var ptrCallRet: pointer
  animatedTextureSetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame44delaySec(self: AnimatedTexture): float64 =
  if isNil(animatedTextureGetFrameDelayMethodBind):
    animatedTextureGetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"get_frame_delay")
  var
    godotBoundArg0 = 44'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animatedTextureGetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc `frame44delaySec=`(self: AnimatedTexture; val: float64) =
  if isNil(animatedTextureSetFrameDelayMethodBind):
    animatedTextureSetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"set_frame_delay")
  var
    godotBoundArg0 = 44'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  animatedTextureSetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame44texture(self: AnimatedTexture): Texture =
  if isNil(animatedTextureGetFrameTextureMethodBind):
    animatedTextureGetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"get_frame_texture")
  var
    godotBoundArg0 = 44'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  animatedTextureGetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

proc `frame44texture=`(self: AnimatedTexture; val: Texture) =
  if isNil(animatedTextureSetFrameTextureMethodBind):
    animatedTextureSetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"set_frame_texture")
  var
    godotBoundArg0 = 44'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  let argToPassToGodot1 = if not val.isNil:
    val.godotObject
  else:
    nil
  argsToPassToGodot[][1] = argToPassToGodot1
  var ptrCallRet: pointer
  animatedTextureSetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame45delaySec(self: AnimatedTexture): float64 =
  if isNil(animatedTextureGetFrameDelayMethodBind):
    animatedTextureGetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"get_frame_delay")
  var
    godotBoundArg0 = 45'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animatedTextureGetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc `frame45delaySec=`(self: AnimatedTexture; val: float64) =
  if isNil(animatedTextureSetFrameDelayMethodBind):
    animatedTextureSetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"set_frame_delay")
  var
    godotBoundArg0 = 45'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  animatedTextureSetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame45texture(self: AnimatedTexture): Texture =
  if isNil(animatedTextureGetFrameTextureMethodBind):
    animatedTextureGetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"get_frame_texture")
  var
    godotBoundArg0 = 45'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  animatedTextureGetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

proc `frame45texture=`(self: AnimatedTexture; val: Texture) =
  if isNil(animatedTextureSetFrameTextureMethodBind):
    animatedTextureSetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"set_frame_texture")
  var
    godotBoundArg0 = 45'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  let argToPassToGodot1 = if not val.isNil:
    val.godotObject
  else:
    nil
  argsToPassToGodot[][1] = argToPassToGodot1
  var ptrCallRet: pointer
  animatedTextureSetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame46delaySec(self: AnimatedTexture): float64 =
  if isNil(animatedTextureGetFrameDelayMethodBind):
    animatedTextureGetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"get_frame_delay")
  var
    godotBoundArg0 = 46'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animatedTextureGetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc `frame46delaySec=`(self: AnimatedTexture; val: float64) =
  if isNil(animatedTextureSetFrameDelayMethodBind):
    animatedTextureSetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"set_frame_delay")
  var
    godotBoundArg0 = 46'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  animatedTextureSetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame46texture(self: AnimatedTexture): Texture =
  if isNil(animatedTextureGetFrameTextureMethodBind):
    animatedTextureGetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"get_frame_texture")
  var
    godotBoundArg0 = 46'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  animatedTextureGetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

proc `frame46texture=`(self: AnimatedTexture; val: Texture) =
  if isNil(animatedTextureSetFrameTextureMethodBind):
    animatedTextureSetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"set_frame_texture")
  var
    godotBoundArg0 = 46'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  let argToPassToGodot1 = if not val.isNil:
    val.godotObject
  else:
    nil
  argsToPassToGodot[][1] = argToPassToGodot1
  var ptrCallRet: pointer
  animatedTextureSetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame47delaySec(self: AnimatedTexture): float64 =
  if isNil(animatedTextureGetFrameDelayMethodBind):
    animatedTextureGetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"get_frame_delay")
  var
    godotBoundArg0 = 47'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animatedTextureGetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc `frame47delaySec=`(self: AnimatedTexture; val: float64) =
  if isNil(animatedTextureSetFrameDelayMethodBind):
    animatedTextureSetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"set_frame_delay")
  var
    godotBoundArg0 = 47'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  animatedTextureSetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame47texture(self: AnimatedTexture): Texture =
  if isNil(animatedTextureGetFrameTextureMethodBind):
    animatedTextureGetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"get_frame_texture")
  var
    godotBoundArg0 = 47'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  animatedTextureGetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

proc `frame47texture=`(self: AnimatedTexture; val: Texture) =
  if isNil(animatedTextureSetFrameTextureMethodBind):
    animatedTextureSetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"set_frame_texture")
  var
    godotBoundArg0 = 47'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  let argToPassToGodot1 = if not val.isNil:
    val.godotObject
  else:
    nil
  argsToPassToGodot[][1] = argToPassToGodot1
  var ptrCallRet: pointer
  animatedTextureSetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame48delaySec(self: AnimatedTexture): float64 =
  if isNil(animatedTextureGetFrameDelayMethodBind):
    animatedTextureGetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"get_frame_delay")
  var
    godotBoundArg0 = 48'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animatedTextureGetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc `frame48delaySec=`(self: AnimatedTexture; val: float64) =
  if isNil(animatedTextureSetFrameDelayMethodBind):
    animatedTextureSetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"set_frame_delay")
  var
    godotBoundArg0 = 48'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  animatedTextureSetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame48texture(self: AnimatedTexture): Texture =
  if isNil(animatedTextureGetFrameTextureMethodBind):
    animatedTextureGetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"get_frame_texture")
  var
    godotBoundArg0 = 48'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  animatedTextureGetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

proc `frame48texture=`(self: AnimatedTexture; val: Texture) =
  if isNil(animatedTextureSetFrameTextureMethodBind):
    animatedTextureSetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"set_frame_texture")
  var
    godotBoundArg0 = 48'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  let argToPassToGodot1 = if not val.isNil:
    val.godotObject
  else:
    nil
  argsToPassToGodot[][1] = argToPassToGodot1
  var ptrCallRet: pointer
  animatedTextureSetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame49delaySec(self: AnimatedTexture): float64 =
  if isNil(animatedTextureGetFrameDelayMethodBind):
    animatedTextureGetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"get_frame_delay")
  var
    godotBoundArg0 = 49'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animatedTextureGetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc `frame49delaySec=`(self: AnimatedTexture; val: float64) =
  if isNil(animatedTextureSetFrameDelayMethodBind):
    animatedTextureSetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"set_frame_delay")
  var
    godotBoundArg0 = 49'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  animatedTextureSetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame49texture(self: AnimatedTexture): Texture =
  if isNil(animatedTextureGetFrameTextureMethodBind):
    animatedTextureGetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"get_frame_texture")
  var
    godotBoundArg0 = 49'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  animatedTextureGetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

proc `frame49texture=`(self: AnimatedTexture; val: Texture) =
  if isNil(animatedTextureSetFrameTextureMethodBind):
    animatedTextureSetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"set_frame_texture")
  var
    godotBoundArg0 = 49'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  let argToPassToGodot1 = if not val.isNil:
    val.godotObject
  else:
    nil
  argsToPassToGodot[][1] = argToPassToGodot1
  var ptrCallRet: pointer
  animatedTextureSetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame5delaySec(self: AnimatedTexture): float64 =
  if isNil(animatedTextureGetFrameDelayMethodBind):
    animatedTextureGetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"get_frame_delay")
  var
    godotBoundArg0 = 5'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animatedTextureGetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc `frame5delaySec=`(self: AnimatedTexture; val: float64) =
  if isNil(animatedTextureSetFrameDelayMethodBind):
    animatedTextureSetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"set_frame_delay")
  var
    godotBoundArg0 = 5'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  animatedTextureSetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame5texture(self: AnimatedTexture): Texture =
  if isNil(animatedTextureGetFrameTextureMethodBind):
    animatedTextureGetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"get_frame_texture")
  var
    godotBoundArg0 = 5'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  animatedTextureGetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

proc `frame5texture=`(self: AnimatedTexture; val: Texture) =
  if isNil(animatedTextureSetFrameTextureMethodBind):
    animatedTextureSetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"set_frame_texture")
  var
    godotBoundArg0 = 5'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  let argToPassToGodot1 = if not val.isNil:
    val.godotObject
  else:
    nil
  argsToPassToGodot[][1] = argToPassToGodot1
  var ptrCallRet: pointer
  animatedTextureSetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame50delaySec(self: AnimatedTexture): float64 =
  if isNil(animatedTextureGetFrameDelayMethodBind):
    animatedTextureGetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"get_frame_delay")
  var
    godotBoundArg0 = 50'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animatedTextureGetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc `frame50delaySec=`(self: AnimatedTexture; val: float64) =
  if isNil(animatedTextureSetFrameDelayMethodBind):
    animatedTextureSetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"set_frame_delay")
  var
    godotBoundArg0 = 50'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  animatedTextureSetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame50texture(self: AnimatedTexture): Texture =
  if isNil(animatedTextureGetFrameTextureMethodBind):
    animatedTextureGetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"get_frame_texture")
  var
    godotBoundArg0 = 50'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  animatedTextureGetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

proc `frame50texture=`(self: AnimatedTexture; val: Texture) =
  if isNil(animatedTextureSetFrameTextureMethodBind):
    animatedTextureSetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"set_frame_texture")
  var
    godotBoundArg0 = 50'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  let argToPassToGodot1 = if not val.isNil:
    val.godotObject
  else:
    nil
  argsToPassToGodot[][1] = argToPassToGodot1
  var ptrCallRet: pointer
  animatedTextureSetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame51delaySec(self: AnimatedTexture): float64 =
  if isNil(animatedTextureGetFrameDelayMethodBind):
    animatedTextureGetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"get_frame_delay")
  var
    godotBoundArg0 = 51'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animatedTextureGetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc `frame51delaySec=`(self: AnimatedTexture; val: float64) =
  if isNil(animatedTextureSetFrameDelayMethodBind):
    animatedTextureSetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"set_frame_delay")
  var
    godotBoundArg0 = 51'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  animatedTextureSetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame51texture(self: AnimatedTexture): Texture =
  if isNil(animatedTextureGetFrameTextureMethodBind):
    animatedTextureGetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"get_frame_texture")
  var
    godotBoundArg0 = 51'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  animatedTextureGetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

proc `frame51texture=`(self: AnimatedTexture; val: Texture) =
  if isNil(animatedTextureSetFrameTextureMethodBind):
    animatedTextureSetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"set_frame_texture")
  var
    godotBoundArg0 = 51'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  let argToPassToGodot1 = if not val.isNil:
    val.godotObject
  else:
    nil
  argsToPassToGodot[][1] = argToPassToGodot1
  var ptrCallRet: pointer
  animatedTextureSetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame52delaySec(self: AnimatedTexture): float64 =
  if isNil(animatedTextureGetFrameDelayMethodBind):
    animatedTextureGetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"get_frame_delay")
  var
    godotBoundArg0 = 52'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animatedTextureGetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc `frame52delaySec=`(self: AnimatedTexture; val: float64) =
  if isNil(animatedTextureSetFrameDelayMethodBind):
    animatedTextureSetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"set_frame_delay")
  var
    godotBoundArg0 = 52'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  animatedTextureSetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame52texture(self: AnimatedTexture): Texture =
  if isNil(animatedTextureGetFrameTextureMethodBind):
    animatedTextureGetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"get_frame_texture")
  var
    godotBoundArg0 = 52'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  animatedTextureGetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

proc `frame52texture=`(self: AnimatedTexture; val: Texture) =
  if isNil(animatedTextureSetFrameTextureMethodBind):
    animatedTextureSetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"set_frame_texture")
  var
    godotBoundArg0 = 52'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  let argToPassToGodot1 = if not val.isNil:
    val.godotObject
  else:
    nil
  argsToPassToGodot[][1] = argToPassToGodot1
  var ptrCallRet: pointer
  animatedTextureSetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame53delaySec(self: AnimatedTexture): float64 =
  if isNil(animatedTextureGetFrameDelayMethodBind):
    animatedTextureGetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"get_frame_delay")
  var
    godotBoundArg0 = 53'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animatedTextureGetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc `frame53delaySec=`(self: AnimatedTexture; val: float64) =
  if isNil(animatedTextureSetFrameDelayMethodBind):
    animatedTextureSetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"set_frame_delay")
  var
    godotBoundArg0 = 53'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  animatedTextureSetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame53texture(self: AnimatedTexture): Texture =
  if isNil(animatedTextureGetFrameTextureMethodBind):
    animatedTextureGetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"get_frame_texture")
  var
    godotBoundArg0 = 53'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  animatedTextureGetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

proc `frame53texture=`(self: AnimatedTexture; val: Texture) =
  if isNil(animatedTextureSetFrameTextureMethodBind):
    animatedTextureSetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"set_frame_texture")
  var
    godotBoundArg0 = 53'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  let argToPassToGodot1 = if not val.isNil:
    val.godotObject
  else:
    nil
  argsToPassToGodot[][1] = argToPassToGodot1
  var ptrCallRet: pointer
  animatedTextureSetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame54delaySec(self: AnimatedTexture): float64 =
  if isNil(animatedTextureGetFrameDelayMethodBind):
    animatedTextureGetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"get_frame_delay")
  var
    godotBoundArg0 = 54'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animatedTextureGetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc `frame54delaySec=`(self: AnimatedTexture; val: float64) =
  if isNil(animatedTextureSetFrameDelayMethodBind):
    animatedTextureSetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"set_frame_delay")
  var
    godotBoundArg0 = 54'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  animatedTextureSetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame54texture(self: AnimatedTexture): Texture =
  if isNil(animatedTextureGetFrameTextureMethodBind):
    animatedTextureGetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"get_frame_texture")
  var
    godotBoundArg0 = 54'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  animatedTextureGetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

proc `frame54texture=`(self: AnimatedTexture; val: Texture) =
  if isNil(animatedTextureSetFrameTextureMethodBind):
    animatedTextureSetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"set_frame_texture")
  var
    godotBoundArg0 = 54'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  let argToPassToGodot1 = if not val.isNil:
    val.godotObject
  else:
    nil
  argsToPassToGodot[][1] = argToPassToGodot1
  var ptrCallRet: pointer
  animatedTextureSetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame55delaySec(self: AnimatedTexture): float64 =
  if isNil(animatedTextureGetFrameDelayMethodBind):
    animatedTextureGetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"get_frame_delay")
  var
    godotBoundArg0 = 55'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animatedTextureGetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc `frame55delaySec=`(self: AnimatedTexture; val: float64) =
  if isNil(animatedTextureSetFrameDelayMethodBind):
    animatedTextureSetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"set_frame_delay")
  var
    godotBoundArg0 = 55'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  animatedTextureSetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame55texture(self: AnimatedTexture): Texture =
  if isNil(animatedTextureGetFrameTextureMethodBind):
    animatedTextureGetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"get_frame_texture")
  var
    godotBoundArg0 = 55'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  animatedTextureGetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

proc `frame55texture=`(self: AnimatedTexture; val: Texture) =
  if isNil(animatedTextureSetFrameTextureMethodBind):
    animatedTextureSetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"set_frame_texture")
  var
    godotBoundArg0 = 55'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  let argToPassToGodot1 = if not val.isNil:
    val.godotObject
  else:
    nil
  argsToPassToGodot[][1] = argToPassToGodot1
  var ptrCallRet: pointer
  animatedTextureSetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame56delaySec(self: AnimatedTexture): float64 =
  if isNil(animatedTextureGetFrameDelayMethodBind):
    animatedTextureGetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"get_frame_delay")
  var
    godotBoundArg0 = 56'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animatedTextureGetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc `frame56delaySec=`(self: AnimatedTexture; val: float64) =
  if isNil(animatedTextureSetFrameDelayMethodBind):
    animatedTextureSetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"set_frame_delay")
  var
    godotBoundArg0 = 56'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  animatedTextureSetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame56texture(self: AnimatedTexture): Texture =
  if isNil(animatedTextureGetFrameTextureMethodBind):
    animatedTextureGetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"get_frame_texture")
  var
    godotBoundArg0 = 56'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  animatedTextureGetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

proc `frame56texture=`(self: AnimatedTexture; val: Texture) =
  if isNil(animatedTextureSetFrameTextureMethodBind):
    animatedTextureSetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"set_frame_texture")
  var
    godotBoundArg0 = 56'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  let argToPassToGodot1 = if not val.isNil:
    val.godotObject
  else:
    nil
  argsToPassToGodot[][1] = argToPassToGodot1
  var ptrCallRet: pointer
  animatedTextureSetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame57delaySec(self: AnimatedTexture): float64 =
  if isNil(animatedTextureGetFrameDelayMethodBind):
    animatedTextureGetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"get_frame_delay")
  var
    godotBoundArg0 = 57'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animatedTextureGetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc `frame57delaySec=`(self: AnimatedTexture; val: float64) =
  if isNil(animatedTextureSetFrameDelayMethodBind):
    animatedTextureSetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"set_frame_delay")
  var
    godotBoundArg0 = 57'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  animatedTextureSetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame57texture(self: AnimatedTexture): Texture =
  if isNil(animatedTextureGetFrameTextureMethodBind):
    animatedTextureGetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"get_frame_texture")
  var
    godotBoundArg0 = 57'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  animatedTextureGetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

proc `frame57texture=`(self: AnimatedTexture; val: Texture) =
  if isNil(animatedTextureSetFrameTextureMethodBind):
    animatedTextureSetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"set_frame_texture")
  var
    godotBoundArg0 = 57'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  let argToPassToGodot1 = if not val.isNil:
    val.godotObject
  else:
    nil
  argsToPassToGodot[][1] = argToPassToGodot1
  var ptrCallRet: pointer
  animatedTextureSetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame58delaySec(self: AnimatedTexture): float64 =
  if isNil(animatedTextureGetFrameDelayMethodBind):
    animatedTextureGetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"get_frame_delay")
  var
    godotBoundArg0 = 58'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animatedTextureGetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc `frame58delaySec=`(self: AnimatedTexture; val: float64) =
  if isNil(animatedTextureSetFrameDelayMethodBind):
    animatedTextureSetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"set_frame_delay")
  var
    godotBoundArg0 = 58'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  animatedTextureSetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame58texture(self: AnimatedTexture): Texture =
  if isNil(animatedTextureGetFrameTextureMethodBind):
    animatedTextureGetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"get_frame_texture")
  var
    godotBoundArg0 = 58'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  animatedTextureGetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

proc `frame58texture=`(self: AnimatedTexture; val: Texture) =
  if isNil(animatedTextureSetFrameTextureMethodBind):
    animatedTextureSetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"set_frame_texture")
  var
    godotBoundArg0 = 58'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  let argToPassToGodot1 = if not val.isNil:
    val.godotObject
  else:
    nil
  argsToPassToGodot[][1] = argToPassToGodot1
  var ptrCallRet: pointer
  animatedTextureSetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame59delaySec(self: AnimatedTexture): float64 =
  if isNil(animatedTextureGetFrameDelayMethodBind):
    animatedTextureGetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"get_frame_delay")
  var
    godotBoundArg0 = 59'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animatedTextureGetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc `frame59delaySec=`(self: AnimatedTexture; val: float64) =
  if isNil(animatedTextureSetFrameDelayMethodBind):
    animatedTextureSetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"set_frame_delay")
  var
    godotBoundArg0 = 59'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  animatedTextureSetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame59texture(self: AnimatedTexture): Texture =
  if isNil(animatedTextureGetFrameTextureMethodBind):
    animatedTextureGetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"get_frame_texture")
  var
    godotBoundArg0 = 59'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  animatedTextureGetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

proc `frame59texture=`(self: AnimatedTexture; val: Texture) =
  if isNil(animatedTextureSetFrameTextureMethodBind):
    animatedTextureSetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"set_frame_texture")
  var
    godotBoundArg0 = 59'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  let argToPassToGodot1 = if not val.isNil:
    val.godotObject
  else:
    nil
  argsToPassToGodot[][1] = argToPassToGodot1
  var ptrCallRet: pointer
  animatedTextureSetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame6delaySec(self: AnimatedTexture): float64 =
  if isNil(animatedTextureGetFrameDelayMethodBind):
    animatedTextureGetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"get_frame_delay")
  var
    godotBoundArg0 = 6'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animatedTextureGetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc `frame6delaySec=`(self: AnimatedTexture; val: float64) =
  if isNil(animatedTextureSetFrameDelayMethodBind):
    animatedTextureSetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"set_frame_delay")
  var
    godotBoundArg0 = 6'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  animatedTextureSetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame6texture(self: AnimatedTexture): Texture =
  if isNil(animatedTextureGetFrameTextureMethodBind):
    animatedTextureGetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"get_frame_texture")
  var
    godotBoundArg0 = 6'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  animatedTextureGetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

proc `frame6texture=`(self: AnimatedTexture; val: Texture) =
  if isNil(animatedTextureSetFrameTextureMethodBind):
    animatedTextureSetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"set_frame_texture")
  var
    godotBoundArg0 = 6'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  let argToPassToGodot1 = if not val.isNil:
    val.godotObject
  else:
    nil
  argsToPassToGodot[][1] = argToPassToGodot1
  var ptrCallRet: pointer
  animatedTextureSetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame60delaySec(self: AnimatedTexture): float64 =
  if isNil(animatedTextureGetFrameDelayMethodBind):
    animatedTextureGetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"get_frame_delay")
  var
    godotBoundArg0 = 60'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animatedTextureGetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc `frame60delaySec=`(self: AnimatedTexture; val: float64) =
  if isNil(animatedTextureSetFrameDelayMethodBind):
    animatedTextureSetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"set_frame_delay")
  var
    godotBoundArg0 = 60'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  animatedTextureSetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame60texture(self: AnimatedTexture): Texture =
  if isNil(animatedTextureGetFrameTextureMethodBind):
    animatedTextureGetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"get_frame_texture")
  var
    godotBoundArg0 = 60'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  animatedTextureGetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

proc `frame60texture=`(self: AnimatedTexture; val: Texture) =
  if isNil(animatedTextureSetFrameTextureMethodBind):
    animatedTextureSetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"set_frame_texture")
  var
    godotBoundArg0 = 60'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  let argToPassToGodot1 = if not val.isNil:
    val.godotObject
  else:
    nil
  argsToPassToGodot[][1] = argToPassToGodot1
  var ptrCallRet: pointer
  animatedTextureSetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame61delaySec(self: AnimatedTexture): float64 =
  if isNil(animatedTextureGetFrameDelayMethodBind):
    animatedTextureGetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"get_frame_delay")
  var
    godotBoundArg0 = 61'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animatedTextureGetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc `frame61delaySec=`(self: AnimatedTexture; val: float64) =
  if isNil(animatedTextureSetFrameDelayMethodBind):
    animatedTextureSetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"set_frame_delay")
  var
    godotBoundArg0 = 61'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  animatedTextureSetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame61texture(self: AnimatedTexture): Texture =
  if isNil(animatedTextureGetFrameTextureMethodBind):
    animatedTextureGetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"get_frame_texture")
  var
    godotBoundArg0 = 61'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  animatedTextureGetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

proc `frame61texture=`(self: AnimatedTexture; val: Texture) =
  if isNil(animatedTextureSetFrameTextureMethodBind):
    animatedTextureSetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"set_frame_texture")
  var
    godotBoundArg0 = 61'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  let argToPassToGodot1 = if not val.isNil:
    val.godotObject
  else:
    nil
  argsToPassToGodot[][1] = argToPassToGodot1
  var ptrCallRet: pointer
  animatedTextureSetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame62delaySec(self: AnimatedTexture): float64 =
  if isNil(animatedTextureGetFrameDelayMethodBind):
    animatedTextureGetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"get_frame_delay")
  var
    godotBoundArg0 = 62'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animatedTextureGetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc `frame62delaySec=`(self: AnimatedTexture; val: float64) =
  if isNil(animatedTextureSetFrameDelayMethodBind):
    animatedTextureSetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"set_frame_delay")
  var
    godotBoundArg0 = 62'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  animatedTextureSetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame62texture(self: AnimatedTexture): Texture =
  if isNil(animatedTextureGetFrameTextureMethodBind):
    animatedTextureGetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"get_frame_texture")
  var
    godotBoundArg0 = 62'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  animatedTextureGetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

proc `frame62texture=`(self: AnimatedTexture; val: Texture) =
  if isNil(animatedTextureSetFrameTextureMethodBind):
    animatedTextureSetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"set_frame_texture")
  var
    godotBoundArg0 = 62'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  let argToPassToGodot1 = if not val.isNil:
    val.godotObject
  else:
    nil
  argsToPassToGodot[][1] = argToPassToGodot1
  var ptrCallRet: pointer
  animatedTextureSetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame63delaySec(self: AnimatedTexture): float64 =
  if isNil(animatedTextureGetFrameDelayMethodBind):
    animatedTextureGetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"get_frame_delay")
  var
    godotBoundArg0 = 63'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animatedTextureGetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc `frame63delaySec=`(self: AnimatedTexture; val: float64) =
  if isNil(animatedTextureSetFrameDelayMethodBind):
    animatedTextureSetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"set_frame_delay")
  var
    godotBoundArg0 = 63'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  animatedTextureSetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame63texture(self: AnimatedTexture): Texture =
  if isNil(animatedTextureGetFrameTextureMethodBind):
    animatedTextureGetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"get_frame_texture")
  var
    godotBoundArg0 = 63'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  animatedTextureGetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

proc `frame63texture=`(self: AnimatedTexture; val: Texture) =
  if isNil(animatedTextureSetFrameTextureMethodBind):
    animatedTextureSetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"set_frame_texture")
  var
    godotBoundArg0 = 63'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  let argToPassToGodot1 = if not val.isNil:
    val.godotObject
  else:
    nil
  argsToPassToGodot[][1] = argToPassToGodot1
  var ptrCallRet: pointer
  animatedTextureSetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame64delaySec(self: AnimatedTexture): float64 =
  if isNil(animatedTextureGetFrameDelayMethodBind):
    animatedTextureGetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"get_frame_delay")
  var
    godotBoundArg0 = 64'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animatedTextureGetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc `frame64delaySec=`(self: AnimatedTexture; val: float64) =
  if isNil(animatedTextureSetFrameDelayMethodBind):
    animatedTextureSetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"set_frame_delay")
  var
    godotBoundArg0 = 64'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  animatedTextureSetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame64texture(self: AnimatedTexture): Texture =
  if isNil(animatedTextureGetFrameTextureMethodBind):
    animatedTextureGetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"get_frame_texture")
  var
    godotBoundArg0 = 64'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  animatedTextureGetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

proc `frame64texture=`(self: AnimatedTexture; val: Texture) =
  if isNil(animatedTextureSetFrameTextureMethodBind):
    animatedTextureSetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"set_frame_texture")
  var
    godotBoundArg0 = 64'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  let argToPassToGodot1 = if not val.isNil:
    val.godotObject
  else:
    nil
  argsToPassToGodot[][1] = argToPassToGodot1
  var ptrCallRet: pointer
  animatedTextureSetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame65delaySec(self: AnimatedTexture): float64 =
  if isNil(animatedTextureGetFrameDelayMethodBind):
    animatedTextureGetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"get_frame_delay")
  var
    godotBoundArg0 = 65'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animatedTextureGetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc `frame65delaySec=`(self: AnimatedTexture; val: float64) =
  if isNil(animatedTextureSetFrameDelayMethodBind):
    animatedTextureSetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"set_frame_delay")
  var
    godotBoundArg0 = 65'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  animatedTextureSetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame65texture(self: AnimatedTexture): Texture =
  if isNil(animatedTextureGetFrameTextureMethodBind):
    animatedTextureGetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"get_frame_texture")
  var
    godotBoundArg0 = 65'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  animatedTextureGetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

proc `frame65texture=`(self: AnimatedTexture; val: Texture) =
  if isNil(animatedTextureSetFrameTextureMethodBind):
    animatedTextureSetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"set_frame_texture")
  var
    godotBoundArg0 = 65'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  let argToPassToGodot1 = if not val.isNil:
    val.godotObject
  else:
    nil
  argsToPassToGodot[][1] = argToPassToGodot1
  var ptrCallRet: pointer
  animatedTextureSetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame66delaySec(self: AnimatedTexture): float64 =
  if isNil(animatedTextureGetFrameDelayMethodBind):
    animatedTextureGetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"get_frame_delay")
  var
    godotBoundArg0 = 66'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animatedTextureGetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc `frame66delaySec=`(self: AnimatedTexture; val: float64) =
  if isNil(animatedTextureSetFrameDelayMethodBind):
    animatedTextureSetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"set_frame_delay")
  var
    godotBoundArg0 = 66'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  animatedTextureSetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame66texture(self: AnimatedTexture): Texture =
  if isNil(animatedTextureGetFrameTextureMethodBind):
    animatedTextureGetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"get_frame_texture")
  var
    godotBoundArg0 = 66'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  animatedTextureGetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

proc `frame66texture=`(self: AnimatedTexture; val: Texture) =
  if isNil(animatedTextureSetFrameTextureMethodBind):
    animatedTextureSetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"set_frame_texture")
  var
    godotBoundArg0 = 66'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  let argToPassToGodot1 = if not val.isNil:
    val.godotObject
  else:
    nil
  argsToPassToGodot[][1] = argToPassToGodot1
  var ptrCallRet: pointer
  animatedTextureSetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame67delaySec(self: AnimatedTexture): float64 =
  if isNil(animatedTextureGetFrameDelayMethodBind):
    animatedTextureGetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"get_frame_delay")
  var
    godotBoundArg0 = 67'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animatedTextureGetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc `frame67delaySec=`(self: AnimatedTexture; val: float64) =
  if isNil(animatedTextureSetFrameDelayMethodBind):
    animatedTextureSetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"set_frame_delay")
  var
    godotBoundArg0 = 67'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  animatedTextureSetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame67texture(self: AnimatedTexture): Texture =
  if isNil(animatedTextureGetFrameTextureMethodBind):
    animatedTextureGetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"get_frame_texture")
  var
    godotBoundArg0 = 67'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  animatedTextureGetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

proc `frame67texture=`(self: AnimatedTexture; val: Texture) =
  if isNil(animatedTextureSetFrameTextureMethodBind):
    animatedTextureSetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"set_frame_texture")
  var
    godotBoundArg0 = 67'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  let argToPassToGodot1 = if not val.isNil:
    val.godotObject
  else:
    nil
  argsToPassToGodot[][1] = argToPassToGodot1
  var ptrCallRet: pointer
  animatedTextureSetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame68delaySec(self: AnimatedTexture): float64 =
  if isNil(animatedTextureGetFrameDelayMethodBind):
    animatedTextureGetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"get_frame_delay")
  var
    godotBoundArg0 = 68'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animatedTextureGetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc `frame68delaySec=`(self: AnimatedTexture; val: float64) =
  if isNil(animatedTextureSetFrameDelayMethodBind):
    animatedTextureSetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"set_frame_delay")
  var
    godotBoundArg0 = 68'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  animatedTextureSetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame68texture(self: AnimatedTexture): Texture =
  if isNil(animatedTextureGetFrameTextureMethodBind):
    animatedTextureGetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"get_frame_texture")
  var
    godotBoundArg0 = 68'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  animatedTextureGetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

proc `frame68texture=`(self: AnimatedTexture; val: Texture) =
  if isNil(animatedTextureSetFrameTextureMethodBind):
    animatedTextureSetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"set_frame_texture")
  var
    godotBoundArg0 = 68'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  let argToPassToGodot1 = if not val.isNil:
    val.godotObject
  else:
    nil
  argsToPassToGodot[][1] = argToPassToGodot1
  var ptrCallRet: pointer
  animatedTextureSetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame69delaySec(self: AnimatedTexture): float64 =
  if isNil(animatedTextureGetFrameDelayMethodBind):
    animatedTextureGetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"get_frame_delay")
  var
    godotBoundArg0 = 69'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animatedTextureGetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc `frame69delaySec=`(self: AnimatedTexture; val: float64) =
  if isNil(animatedTextureSetFrameDelayMethodBind):
    animatedTextureSetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"set_frame_delay")
  var
    godotBoundArg0 = 69'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  animatedTextureSetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame69texture(self: AnimatedTexture): Texture =
  if isNil(animatedTextureGetFrameTextureMethodBind):
    animatedTextureGetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"get_frame_texture")
  var
    godotBoundArg0 = 69'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  animatedTextureGetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

proc `frame69texture=`(self: AnimatedTexture; val: Texture) =
  if isNil(animatedTextureSetFrameTextureMethodBind):
    animatedTextureSetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"set_frame_texture")
  var
    godotBoundArg0 = 69'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  let argToPassToGodot1 = if not val.isNil:
    val.godotObject
  else:
    nil
  argsToPassToGodot[][1] = argToPassToGodot1
  var ptrCallRet: pointer
  animatedTextureSetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame7delaySec(self: AnimatedTexture): float64 =
  if isNil(animatedTextureGetFrameDelayMethodBind):
    animatedTextureGetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"get_frame_delay")
  var
    godotBoundArg0 = 7'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animatedTextureGetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc `frame7delaySec=`(self: AnimatedTexture; val: float64) =
  if isNil(animatedTextureSetFrameDelayMethodBind):
    animatedTextureSetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"set_frame_delay")
  var
    godotBoundArg0 = 7'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  animatedTextureSetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame7texture(self: AnimatedTexture): Texture =
  if isNil(animatedTextureGetFrameTextureMethodBind):
    animatedTextureGetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"get_frame_texture")
  var
    godotBoundArg0 = 7'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  animatedTextureGetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

proc `frame7texture=`(self: AnimatedTexture; val: Texture) =
  if isNil(animatedTextureSetFrameTextureMethodBind):
    animatedTextureSetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"set_frame_texture")
  var
    godotBoundArg0 = 7'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  let argToPassToGodot1 = if not val.isNil:
    val.godotObject
  else:
    nil
  argsToPassToGodot[][1] = argToPassToGodot1
  var ptrCallRet: pointer
  animatedTextureSetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame70delaySec(self: AnimatedTexture): float64 =
  if isNil(animatedTextureGetFrameDelayMethodBind):
    animatedTextureGetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"get_frame_delay")
  var
    godotBoundArg0 = 70'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animatedTextureGetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc `frame70delaySec=`(self: AnimatedTexture; val: float64) =
  if isNil(animatedTextureSetFrameDelayMethodBind):
    animatedTextureSetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"set_frame_delay")
  var
    godotBoundArg0 = 70'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  animatedTextureSetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame70texture(self: AnimatedTexture): Texture =
  if isNil(animatedTextureGetFrameTextureMethodBind):
    animatedTextureGetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"get_frame_texture")
  var
    godotBoundArg0 = 70'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  animatedTextureGetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

proc `frame70texture=`(self: AnimatedTexture; val: Texture) =
  if isNil(animatedTextureSetFrameTextureMethodBind):
    animatedTextureSetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"set_frame_texture")
  var
    godotBoundArg0 = 70'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  let argToPassToGodot1 = if not val.isNil:
    val.godotObject
  else:
    nil
  argsToPassToGodot[][1] = argToPassToGodot1
  var ptrCallRet: pointer
  animatedTextureSetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame71delaySec(self: AnimatedTexture): float64 =
  if isNil(animatedTextureGetFrameDelayMethodBind):
    animatedTextureGetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"get_frame_delay")
  var
    godotBoundArg0 = 71'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animatedTextureGetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc `frame71delaySec=`(self: AnimatedTexture; val: float64) =
  if isNil(animatedTextureSetFrameDelayMethodBind):
    animatedTextureSetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"set_frame_delay")
  var
    godotBoundArg0 = 71'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  animatedTextureSetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame71texture(self: AnimatedTexture): Texture =
  if isNil(animatedTextureGetFrameTextureMethodBind):
    animatedTextureGetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"get_frame_texture")
  var
    godotBoundArg0 = 71'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  animatedTextureGetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

proc `frame71texture=`(self: AnimatedTexture; val: Texture) =
  if isNil(animatedTextureSetFrameTextureMethodBind):
    animatedTextureSetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"set_frame_texture")
  var
    godotBoundArg0 = 71'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  let argToPassToGodot1 = if not val.isNil:
    val.godotObject
  else:
    nil
  argsToPassToGodot[][1] = argToPassToGodot1
  var ptrCallRet: pointer
  animatedTextureSetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame72delaySec(self: AnimatedTexture): float64 =
  if isNil(animatedTextureGetFrameDelayMethodBind):
    animatedTextureGetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"get_frame_delay")
  var
    godotBoundArg0 = 72'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animatedTextureGetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc `frame72delaySec=`(self: AnimatedTexture; val: float64) =
  if isNil(animatedTextureSetFrameDelayMethodBind):
    animatedTextureSetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"set_frame_delay")
  var
    godotBoundArg0 = 72'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  animatedTextureSetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame72texture(self: AnimatedTexture): Texture =
  if isNil(animatedTextureGetFrameTextureMethodBind):
    animatedTextureGetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"get_frame_texture")
  var
    godotBoundArg0 = 72'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  animatedTextureGetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

proc `frame72texture=`(self: AnimatedTexture; val: Texture) =
  if isNil(animatedTextureSetFrameTextureMethodBind):
    animatedTextureSetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"set_frame_texture")
  var
    godotBoundArg0 = 72'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  let argToPassToGodot1 = if not val.isNil:
    val.godotObject
  else:
    nil
  argsToPassToGodot[][1] = argToPassToGodot1
  var ptrCallRet: pointer
  animatedTextureSetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame73delaySec(self: AnimatedTexture): float64 =
  if isNil(animatedTextureGetFrameDelayMethodBind):
    animatedTextureGetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"get_frame_delay")
  var
    godotBoundArg0 = 73'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animatedTextureGetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc `frame73delaySec=`(self: AnimatedTexture; val: float64) =
  if isNil(animatedTextureSetFrameDelayMethodBind):
    animatedTextureSetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"set_frame_delay")
  var
    godotBoundArg0 = 73'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  animatedTextureSetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame73texture(self: AnimatedTexture): Texture =
  if isNil(animatedTextureGetFrameTextureMethodBind):
    animatedTextureGetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"get_frame_texture")
  var
    godotBoundArg0 = 73'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  animatedTextureGetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

proc `frame73texture=`(self: AnimatedTexture; val: Texture) =
  if isNil(animatedTextureSetFrameTextureMethodBind):
    animatedTextureSetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"set_frame_texture")
  var
    godotBoundArg0 = 73'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  let argToPassToGodot1 = if not val.isNil:
    val.godotObject
  else:
    nil
  argsToPassToGodot[][1] = argToPassToGodot1
  var ptrCallRet: pointer
  animatedTextureSetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame74delaySec(self: AnimatedTexture): float64 =
  if isNil(animatedTextureGetFrameDelayMethodBind):
    animatedTextureGetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"get_frame_delay")
  var
    godotBoundArg0 = 74'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animatedTextureGetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc `frame74delaySec=`(self: AnimatedTexture; val: float64) =
  if isNil(animatedTextureSetFrameDelayMethodBind):
    animatedTextureSetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"set_frame_delay")
  var
    godotBoundArg0 = 74'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  animatedTextureSetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame74texture(self: AnimatedTexture): Texture =
  if isNil(animatedTextureGetFrameTextureMethodBind):
    animatedTextureGetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"get_frame_texture")
  var
    godotBoundArg0 = 74'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  animatedTextureGetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

proc `frame74texture=`(self: AnimatedTexture; val: Texture) =
  if isNil(animatedTextureSetFrameTextureMethodBind):
    animatedTextureSetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"set_frame_texture")
  var
    godotBoundArg0 = 74'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  let argToPassToGodot1 = if not val.isNil:
    val.godotObject
  else:
    nil
  argsToPassToGodot[][1] = argToPassToGodot1
  var ptrCallRet: pointer
  animatedTextureSetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame75delaySec(self: AnimatedTexture): float64 =
  if isNil(animatedTextureGetFrameDelayMethodBind):
    animatedTextureGetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"get_frame_delay")
  var
    godotBoundArg0 = 75'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animatedTextureGetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc `frame75delaySec=`(self: AnimatedTexture; val: float64) =
  if isNil(animatedTextureSetFrameDelayMethodBind):
    animatedTextureSetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"set_frame_delay")
  var
    godotBoundArg0 = 75'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  animatedTextureSetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame75texture(self: AnimatedTexture): Texture =
  if isNil(animatedTextureGetFrameTextureMethodBind):
    animatedTextureGetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"get_frame_texture")
  var
    godotBoundArg0 = 75'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  animatedTextureGetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

proc `frame75texture=`(self: AnimatedTexture; val: Texture) =
  if isNil(animatedTextureSetFrameTextureMethodBind):
    animatedTextureSetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"set_frame_texture")
  var
    godotBoundArg0 = 75'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  let argToPassToGodot1 = if not val.isNil:
    val.godotObject
  else:
    nil
  argsToPassToGodot[][1] = argToPassToGodot1
  var ptrCallRet: pointer
  animatedTextureSetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame76delaySec(self: AnimatedTexture): float64 =
  if isNil(animatedTextureGetFrameDelayMethodBind):
    animatedTextureGetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"get_frame_delay")
  var
    godotBoundArg0 = 76'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animatedTextureGetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc `frame76delaySec=`(self: AnimatedTexture; val: float64) =
  if isNil(animatedTextureSetFrameDelayMethodBind):
    animatedTextureSetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"set_frame_delay")
  var
    godotBoundArg0 = 76'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  animatedTextureSetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame76texture(self: AnimatedTexture): Texture =
  if isNil(animatedTextureGetFrameTextureMethodBind):
    animatedTextureGetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"get_frame_texture")
  var
    godotBoundArg0 = 76'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  animatedTextureGetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

proc `frame76texture=`(self: AnimatedTexture; val: Texture) =
  if isNil(animatedTextureSetFrameTextureMethodBind):
    animatedTextureSetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"set_frame_texture")
  var
    godotBoundArg0 = 76'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  let argToPassToGodot1 = if not val.isNil:
    val.godotObject
  else:
    nil
  argsToPassToGodot[][1] = argToPassToGodot1
  var ptrCallRet: pointer
  animatedTextureSetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame77delaySec(self: AnimatedTexture): float64 =
  if isNil(animatedTextureGetFrameDelayMethodBind):
    animatedTextureGetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"get_frame_delay")
  var
    godotBoundArg0 = 77'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animatedTextureGetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc `frame77delaySec=`(self: AnimatedTexture; val: float64) =
  if isNil(animatedTextureSetFrameDelayMethodBind):
    animatedTextureSetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"set_frame_delay")
  var
    godotBoundArg0 = 77'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  animatedTextureSetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame77texture(self: AnimatedTexture): Texture =
  if isNil(animatedTextureGetFrameTextureMethodBind):
    animatedTextureGetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"get_frame_texture")
  var
    godotBoundArg0 = 77'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  animatedTextureGetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

proc `frame77texture=`(self: AnimatedTexture; val: Texture) =
  if isNil(animatedTextureSetFrameTextureMethodBind):
    animatedTextureSetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"set_frame_texture")
  var
    godotBoundArg0 = 77'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  let argToPassToGodot1 = if not val.isNil:
    val.godotObject
  else:
    nil
  argsToPassToGodot[][1] = argToPassToGodot1
  var ptrCallRet: pointer
  animatedTextureSetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame78delaySec(self: AnimatedTexture): float64 =
  if isNil(animatedTextureGetFrameDelayMethodBind):
    animatedTextureGetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"get_frame_delay")
  var
    godotBoundArg0 = 78'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animatedTextureGetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc `frame78delaySec=`(self: AnimatedTexture; val: float64) =
  if isNil(animatedTextureSetFrameDelayMethodBind):
    animatedTextureSetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"set_frame_delay")
  var
    godotBoundArg0 = 78'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  animatedTextureSetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame78texture(self: AnimatedTexture): Texture =
  if isNil(animatedTextureGetFrameTextureMethodBind):
    animatedTextureGetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"get_frame_texture")
  var
    godotBoundArg0 = 78'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  animatedTextureGetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

proc `frame78texture=`(self: AnimatedTexture; val: Texture) =
  if isNil(animatedTextureSetFrameTextureMethodBind):
    animatedTextureSetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"set_frame_texture")
  var
    godotBoundArg0 = 78'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  let argToPassToGodot1 = if not val.isNil:
    val.godotObject
  else:
    nil
  argsToPassToGodot[][1] = argToPassToGodot1
  var ptrCallRet: pointer
  animatedTextureSetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame79delaySec(self: AnimatedTexture): float64 =
  if isNil(animatedTextureGetFrameDelayMethodBind):
    animatedTextureGetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"get_frame_delay")
  var
    godotBoundArg0 = 79'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animatedTextureGetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc `frame79delaySec=`(self: AnimatedTexture; val: float64) =
  if isNil(animatedTextureSetFrameDelayMethodBind):
    animatedTextureSetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"set_frame_delay")
  var
    godotBoundArg0 = 79'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  animatedTextureSetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame79texture(self: AnimatedTexture): Texture =
  if isNil(animatedTextureGetFrameTextureMethodBind):
    animatedTextureGetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"get_frame_texture")
  var
    godotBoundArg0 = 79'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  animatedTextureGetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

proc `frame79texture=`(self: AnimatedTexture; val: Texture) =
  if isNil(animatedTextureSetFrameTextureMethodBind):
    animatedTextureSetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"set_frame_texture")
  var
    godotBoundArg0 = 79'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  let argToPassToGodot1 = if not val.isNil:
    val.godotObject
  else:
    nil
  argsToPassToGodot[][1] = argToPassToGodot1
  var ptrCallRet: pointer
  animatedTextureSetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame8delaySec(self: AnimatedTexture): float64 =
  if isNil(animatedTextureGetFrameDelayMethodBind):
    animatedTextureGetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"get_frame_delay")
  var
    godotBoundArg0 = 8'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animatedTextureGetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc `frame8delaySec=`(self: AnimatedTexture; val: float64) =
  if isNil(animatedTextureSetFrameDelayMethodBind):
    animatedTextureSetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"set_frame_delay")
  var
    godotBoundArg0 = 8'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  animatedTextureSetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame8texture(self: AnimatedTexture): Texture =
  if isNil(animatedTextureGetFrameTextureMethodBind):
    animatedTextureGetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"get_frame_texture")
  var
    godotBoundArg0 = 8'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  animatedTextureGetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

proc `frame8texture=`(self: AnimatedTexture; val: Texture) =
  if isNil(animatedTextureSetFrameTextureMethodBind):
    animatedTextureSetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"set_frame_texture")
  var
    godotBoundArg0 = 8'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  let argToPassToGodot1 = if not val.isNil:
    val.godotObject
  else:
    nil
  argsToPassToGodot[][1] = argToPassToGodot1
  var ptrCallRet: pointer
  animatedTextureSetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame80delaySec(self: AnimatedTexture): float64 =
  if isNil(animatedTextureGetFrameDelayMethodBind):
    animatedTextureGetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"get_frame_delay")
  var
    godotBoundArg0 = 80'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animatedTextureGetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc `frame80delaySec=`(self: AnimatedTexture; val: float64) =
  if isNil(animatedTextureSetFrameDelayMethodBind):
    animatedTextureSetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"set_frame_delay")
  var
    godotBoundArg0 = 80'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  animatedTextureSetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame80texture(self: AnimatedTexture): Texture =
  if isNil(animatedTextureGetFrameTextureMethodBind):
    animatedTextureGetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"get_frame_texture")
  var
    godotBoundArg0 = 80'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  animatedTextureGetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

proc `frame80texture=`(self: AnimatedTexture; val: Texture) =
  if isNil(animatedTextureSetFrameTextureMethodBind):
    animatedTextureSetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"set_frame_texture")
  var
    godotBoundArg0 = 80'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  let argToPassToGodot1 = if not val.isNil:
    val.godotObject
  else:
    nil
  argsToPassToGodot[][1] = argToPassToGodot1
  var ptrCallRet: pointer
  animatedTextureSetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame81delaySec(self: AnimatedTexture): float64 =
  if isNil(animatedTextureGetFrameDelayMethodBind):
    animatedTextureGetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"get_frame_delay")
  var
    godotBoundArg0 = 81'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animatedTextureGetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc `frame81delaySec=`(self: AnimatedTexture; val: float64) =
  if isNil(animatedTextureSetFrameDelayMethodBind):
    animatedTextureSetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"set_frame_delay")
  var
    godotBoundArg0 = 81'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  animatedTextureSetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame81texture(self: AnimatedTexture): Texture =
  if isNil(animatedTextureGetFrameTextureMethodBind):
    animatedTextureGetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"get_frame_texture")
  var
    godotBoundArg0 = 81'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  animatedTextureGetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

proc `frame81texture=`(self: AnimatedTexture; val: Texture) =
  if isNil(animatedTextureSetFrameTextureMethodBind):
    animatedTextureSetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"set_frame_texture")
  var
    godotBoundArg0 = 81'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  let argToPassToGodot1 = if not val.isNil:
    val.godotObject
  else:
    nil
  argsToPassToGodot[][1] = argToPassToGodot1
  var ptrCallRet: pointer
  animatedTextureSetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame82delaySec(self: AnimatedTexture): float64 =
  if isNil(animatedTextureGetFrameDelayMethodBind):
    animatedTextureGetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"get_frame_delay")
  var
    godotBoundArg0 = 82'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animatedTextureGetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc `frame82delaySec=`(self: AnimatedTexture; val: float64) =
  if isNil(animatedTextureSetFrameDelayMethodBind):
    animatedTextureSetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"set_frame_delay")
  var
    godotBoundArg0 = 82'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  animatedTextureSetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame82texture(self: AnimatedTexture): Texture =
  if isNil(animatedTextureGetFrameTextureMethodBind):
    animatedTextureGetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"get_frame_texture")
  var
    godotBoundArg0 = 82'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  animatedTextureGetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

proc `frame82texture=`(self: AnimatedTexture; val: Texture) =
  if isNil(animatedTextureSetFrameTextureMethodBind):
    animatedTextureSetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"set_frame_texture")
  var
    godotBoundArg0 = 82'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  let argToPassToGodot1 = if not val.isNil:
    val.godotObject
  else:
    nil
  argsToPassToGodot[][1] = argToPassToGodot1
  var ptrCallRet: pointer
  animatedTextureSetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame83delaySec(self: AnimatedTexture): float64 =
  if isNil(animatedTextureGetFrameDelayMethodBind):
    animatedTextureGetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"get_frame_delay")
  var
    godotBoundArg0 = 83'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animatedTextureGetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc `frame83delaySec=`(self: AnimatedTexture; val: float64) =
  if isNil(animatedTextureSetFrameDelayMethodBind):
    animatedTextureSetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"set_frame_delay")
  var
    godotBoundArg0 = 83'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  animatedTextureSetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame83texture(self: AnimatedTexture): Texture =
  if isNil(animatedTextureGetFrameTextureMethodBind):
    animatedTextureGetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"get_frame_texture")
  var
    godotBoundArg0 = 83'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  animatedTextureGetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

proc `frame83texture=`(self: AnimatedTexture; val: Texture) =
  if isNil(animatedTextureSetFrameTextureMethodBind):
    animatedTextureSetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"set_frame_texture")
  var
    godotBoundArg0 = 83'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  let argToPassToGodot1 = if not val.isNil:
    val.godotObject
  else:
    nil
  argsToPassToGodot[][1] = argToPassToGodot1
  var ptrCallRet: pointer
  animatedTextureSetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame84delaySec(self: AnimatedTexture): float64 =
  if isNil(animatedTextureGetFrameDelayMethodBind):
    animatedTextureGetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"get_frame_delay")
  var
    godotBoundArg0 = 84'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animatedTextureGetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc `frame84delaySec=`(self: AnimatedTexture; val: float64) =
  if isNil(animatedTextureSetFrameDelayMethodBind):
    animatedTextureSetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"set_frame_delay")
  var
    godotBoundArg0 = 84'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  animatedTextureSetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame84texture(self: AnimatedTexture): Texture =
  if isNil(animatedTextureGetFrameTextureMethodBind):
    animatedTextureGetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"get_frame_texture")
  var
    godotBoundArg0 = 84'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  animatedTextureGetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

proc `frame84texture=`(self: AnimatedTexture; val: Texture) =
  if isNil(animatedTextureSetFrameTextureMethodBind):
    animatedTextureSetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"set_frame_texture")
  var
    godotBoundArg0 = 84'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  let argToPassToGodot1 = if not val.isNil:
    val.godotObject
  else:
    nil
  argsToPassToGodot[][1] = argToPassToGodot1
  var ptrCallRet: pointer
  animatedTextureSetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame85delaySec(self: AnimatedTexture): float64 =
  if isNil(animatedTextureGetFrameDelayMethodBind):
    animatedTextureGetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"get_frame_delay")
  var
    godotBoundArg0 = 85'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animatedTextureGetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc `frame85delaySec=`(self: AnimatedTexture; val: float64) =
  if isNil(animatedTextureSetFrameDelayMethodBind):
    animatedTextureSetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"set_frame_delay")
  var
    godotBoundArg0 = 85'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  animatedTextureSetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame85texture(self: AnimatedTexture): Texture =
  if isNil(animatedTextureGetFrameTextureMethodBind):
    animatedTextureGetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"get_frame_texture")
  var
    godotBoundArg0 = 85'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  animatedTextureGetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

proc `frame85texture=`(self: AnimatedTexture; val: Texture) =
  if isNil(animatedTextureSetFrameTextureMethodBind):
    animatedTextureSetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"set_frame_texture")
  var
    godotBoundArg0 = 85'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  let argToPassToGodot1 = if not val.isNil:
    val.godotObject
  else:
    nil
  argsToPassToGodot[][1] = argToPassToGodot1
  var ptrCallRet: pointer
  animatedTextureSetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame86delaySec(self: AnimatedTexture): float64 =
  if isNil(animatedTextureGetFrameDelayMethodBind):
    animatedTextureGetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"get_frame_delay")
  var
    godotBoundArg0 = 86'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animatedTextureGetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc `frame86delaySec=`(self: AnimatedTexture; val: float64) =
  if isNil(animatedTextureSetFrameDelayMethodBind):
    animatedTextureSetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"set_frame_delay")
  var
    godotBoundArg0 = 86'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  animatedTextureSetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame86texture(self: AnimatedTexture): Texture =
  if isNil(animatedTextureGetFrameTextureMethodBind):
    animatedTextureGetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"get_frame_texture")
  var
    godotBoundArg0 = 86'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  animatedTextureGetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

proc `frame86texture=`(self: AnimatedTexture; val: Texture) =
  if isNil(animatedTextureSetFrameTextureMethodBind):
    animatedTextureSetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"set_frame_texture")
  var
    godotBoundArg0 = 86'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  let argToPassToGodot1 = if not val.isNil:
    val.godotObject
  else:
    nil
  argsToPassToGodot[][1] = argToPassToGodot1
  var ptrCallRet: pointer
  animatedTextureSetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame87delaySec(self: AnimatedTexture): float64 =
  if isNil(animatedTextureGetFrameDelayMethodBind):
    animatedTextureGetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"get_frame_delay")
  var
    godotBoundArg0 = 87'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animatedTextureGetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc `frame87delaySec=`(self: AnimatedTexture; val: float64) =
  if isNil(animatedTextureSetFrameDelayMethodBind):
    animatedTextureSetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"set_frame_delay")
  var
    godotBoundArg0 = 87'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  animatedTextureSetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame87texture(self: AnimatedTexture): Texture =
  if isNil(animatedTextureGetFrameTextureMethodBind):
    animatedTextureGetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"get_frame_texture")
  var
    godotBoundArg0 = 87'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  animatedTextureGetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

proc `frame87texture=`(self: AnimatedTexture; val: Texture) =
  if isNil(animatedTextureSetFrameTextureMethodBind):
    animatedTextureSetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"set_frame_texture")
  var
    godotBoundArg0 = 87'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  let argToPassToGodot1 = if not val.isNil:
    val.godotObject
  else:
    nil
  argsToPassToGodot[][1] = argToPassToGodot1
  var ptrCallRet: pointer
  animatedTextureSetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame88delaySec(self: AnimatedTexture): float64 =
  if isNil(animatedTextureGetFrameDelayMethodBind):
    animatedTextureGetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"get_frame_delay")
  var
    godotBoundArg0 = 88'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animatedTextureGetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc `frame88delaySec=`(self: AnimatedTexture; val: float64) =
  if isNil(animatedTextureSetFrameDelayMethodBind):
    animatedTextureSetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"set_frame_delay")
  var
    godotBoundArg0 = 88'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  animatedTextureSetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame88texture(self: AnimatedTexture): Texture =
  if isNil(animatedTextureGetFrameTextureMethodBind):
    animatedTextureGetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"get_frame_texture")
  var
    godotBoundArg0 = 88'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  animatedTextureGetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

proc `frame88texture=`(self: AnimatedTexture; val: Texture) =
  if isNil(animatedTextureSetFrameTextureMethodBind):
    animatedTextureSetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"set_frame_texture")
  var
    godotBoundArg0 = 88'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  let argToPassToGodot1 = if not val.isNil:
    val.godotObject
  else:
    nil
  argsToPassToGodot[][1] = argToPassToGodot1
  var ptrCallRet: pointer
  animatedTextureSetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame89delaySec(self: AnimatedTexture): float64 =
  if isNil(animatedTextureGetFrameDelayMethodBind):
    animatedTextureGetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"get_frame_delay")
  var
    godotBoundArg0 = 89'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animatedTextureGetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc `frame89delaySec=`(self: AnimatedTexture; val: float64) =
  if isNil(animatedTextureSetFrameDelayMethodBind):
    animatedTextureSetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"set_frame_delay")
  var
    godotBoundArg0 = 89'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  animatedTextureSetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame89texture(self: AnimatedTexture): Texture =
  if isNil(animatedTextureGetFrameTextureMethodBind):
    animatedTextureGetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"get_frame_texture")
  var
    godotBoundArg0 = 89'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  animatedTextureGetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

proc `frame89texture=`(self: AnimatedTexture; val: Texture) =
  if isNil(animatedTextureSetFrameTextureMethodBind):
    animatedTextureSetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"set_frame_texture")
  var
    godotBoundArg0 = 89'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  let argToPassToGodot1 = if not val.isNil:
    val.godotObject
  else:
    nil
  argsToPassToGodot[][1] = argToPassToGodot1
  var ptrCallRet: pointer
  animatedTextureSetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame9delaySec(self: AnimatedTexture): float64 =
  if isNil(animatedTextureGetFrameDelayMethodBind):
    animatedTextureGetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"get_frame_delay")
  var
    godotBoundArg0 = 9'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animatedTextureGetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc `frame9delaySec=`(self: AnimatedTexture; val: float64) =
  if isNil(animatedTextureSetFrameDelayMethodBind):
    animatedTextureSetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"set_frame_delay")
  var
    godotBoundArg0 = 9'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  animatedTextureSetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame9texture(self: AnimatedTexture): Texture =
  if isNil(animatedTextureGetFrameTextureMethodBind):
    animatedTextureGetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"get_frame_texture")
  var
    godotBoundArg0 = 9'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  animatedTextureGetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

proc `frame9texture=`(self: AnimatedTexture; val: Texture) =
  if isNil(animatedTextureSetFrameTextureMethodBind):
    animatedTextureSetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"set_frame_texture")
  var
    godotBoundArg0 = 9'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  let argToPassToGodot1 = if not val.isNil:
    val.godotObject
  else:
    nil
  argsToPassToGodot[][1] = argToPassToGodot1
  var ptrCallRet: pointer
  animatedTextureSetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame90delaySec(self: AnimatedTexture): float64 =
  if isNil(animatedTextureGetFrameDelayMethodBind):
    animatedTextureGetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"get_frame_delay")
  var
    godotBoundArg0 = 90'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animatedTextureGetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc `frame90delaySec=`(self: AnimatedTexture; val: float64) =
  if isNil(animatedTextureSetFrameDelayMethodBind):
    animatedTextureSetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"set_frame_delay")
  var
    godotBoundArg0 = 90'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  animatedTextureSetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame90texture(self: AnimatedTexture): Texture =
  if isNil(animatedTextureGetFrameTextureMethodBind):
    animatedTextureGetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"get_frame_texture")
  var
    godotBoundArg0 = 90'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  animatedTextureGetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

proc `frame90texture=`(self: AnimatedTexture; val: Texture) =
  if isNil(animatedTextureSetFrameTextureMethodBind):
    animatedTextureSetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"set_frame_texture")
  var
    godotBoundArg0 = 90'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  let argToPassToGodot1 = if not val.isNil:
    val.godotObject
  else:
    nil
  argsToPassToGodot[][1] = argToPassToGodot1
  var ptrCallRet: pointer
  animatedTextureSetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame91delaySec(self: AnimatedTexture): float64 =
  if isNil(animatedTextureGetFrameDelayMethodBind):
    animatedTextureGetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"get_frame_delay")
  var
    godotBoundArg0 = 91'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animatedTextureGetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc `frame91delaySec=`(self: AnimatedTexture; val: float64) =
  if isNil(animatedTextureSetFrameDelayMethodBind):
    animatedTextureSetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"set_frame_delay")
  var
    godotBoundArg0 = 91'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  animatedTextureSetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame91texture(self: AnimatedTexture): Texture =
  if isNil(animatedTextureGetFrameTextureMethodBind):
    animatedTextureGetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"get_frame_texture")
  var
    godotBoundArg0 = 91'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  animatedTextureGetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

proc `frame91texture=`(self: AnimatedTexture; val: Texture) =
  if isNil(animatedTextureSetFrameTextureMethodBind):
    animatedTextureSetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"set_frame_texture")
  var
    godotBoundArg0 = 91'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  let argToPassToGodot1 = if not val.isNil:
    val.godotObject
  else:
    nil
  argsToPassToGodot[][1] = argToPassToGodot1
  var ptrCallRet: pointer
  animatedTextureSetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame92delaySec(self: AnimatedTexture): float64 =
  if isNil(animatedTextureGetFrameDelayMethodBind):
    animatedTextureGetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"get_frame_delay")
  var
    godotBoundArg0 = 92'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animatedTextureGetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc `frame92delaySec=`(self: AnimatedTexture; val: float64) =
  if isNil(animatedTextureSetFrameDelayMethodBind):
    animatedTextureSetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"set_frame_delay")
  var
    godotBoundArg0 = 92'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  animatedTextureSetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame92texture(self: AnimatedTexture): Texture =
  if isNil(animatedTextureGetFrameTextureMethodBind):
    animatedTextureGetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"get_frame_texture")
  var
    godotBoundArg0 = 92'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  animatedTextureGetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

proc `frame92texture=`(self: AnimatedTexture; val: Texture) =
  if isNil(animatedTextureSetFrameTextureMethodBind):
    animatedTextureSetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"set_frame_texture")
  var
    godotBoundArg0 = 92'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  let argToPassToGodot1 = if not val.isNil:
    val.godotObject
  else:
    nil
  argsToPassToGodot[][1] = argToPassToGodot1
  var ptrCallRet: pointer
  animatedTextureSetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame93delaySec(self: AnimatedTexture): float64 =
  if isNil(animatedTextureGetFrameDelayMethodBind):
    animatedTextureGetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"get_frame_delay")
  var
    godotBoundArg0 = 93'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animatedTextureGetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc `frame93delaySec=`(self: AnimatedTexture; val: float64) =
  if isNil(animatedTextureSetFrameDelayMethodBind):
    animatedTextureSetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"set_frame_delay")
  var
    godotBoundArg0 = 93'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  animatedTextureSetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame93texture(self: AnimatedTexture): Texture =
  if isNil(animatedTextureGetFrameTextureMethodBind):
    animatedTextureGetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"get_frame_texture")
  var
    godotBoundArg0 = 93'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  animatedTextureGetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

proc `frame93texture=`(self: AnimatedTexture; val: Texture) =
  if isNil(animatedTextureSetFrameTextureMethodBind):
    animatedTextureSetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"set_frame_texture")
  var
    godotBoundArg0 = 93'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  let argToPassToGodot1 = if not val.isNil:
    val.godotObject
  else:
    nil
  argsToPassToGodot[][1] = argToPassToGodot1
  var ptrCallRet: pointer
  animatedTextureSetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame94delaySec(self: AnimatedTexture): float64 =
  if isNil(animatedTextureGetFrameDelayMethodBind):
    animatedTextureGetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"get_frame_delay")
  var
    godotBoundArg0 = 94'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animatedTextureGetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc `frame94delaySec=`(self: AnimatedTexture; val: float64) =
  if isNil(animatedTextureSetFrameDelayMethodBind):
    animatedTextureSetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"set_frame_delay")
  var
    godotBoundArg0 = 94'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  animatedTextureSetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame94texture(self: AnimatedTexture): Texture =
  if isNil(animatedTextureGetFrameTextureMethodBind):
    animatedTextureGetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"get_frame_texture")
  var
    godotBoundArg0 = 94'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  animatedTextureGetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

proc `frame94texture=`(self: AnimatedTexture; val: Texture) =
  if isNil(animatedTextureSetFrameTextureMethodBind):
    animatedTextureSetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"set_frame_texture")
  var
    godotBoundArg0 = 94'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  let argToPassToGodot1 = if not val.isNil:
    val.godotObject
  else:
    nil
  argsToPassToGodot[][1] = argToPassToGodot1
  var ptrCallRet: pointer
  animatedTextureSetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame95delaySec(self: AnimatedTexture): float64 =
  if isNil(animatedTextureGetFrameDelayMethodBind):
    animatedTextureGetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"get_frame_delay")
  var
    godotBoundArg0 = 95'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animatedTextureGetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc `frame95delaySec=`(self: AnimatedTexture; val: float64) =
  if isNil(animatedTextureSetFrameDelayMethodBind):
    animatedTextureSetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"set_frame_delay")
  var
    godotBoundArg0 = 95'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  animatedTextureSetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame95texture(self: AnimatedTexture): Texture =
  if isNil(animatedTextureGetFrameTextureMethodBind):
    animatedTextureGetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"get_frame_texture")
  var
    godotBoundArg0 = 95'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  animatedTextureGetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

proc `frame95texture=`(self: AnimatedTexture; val: Texture) =
  if isNil(animatedTextureSetFrameTextureMethodBind):
    animatedTextureSetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"set_frame_texture")
  var
    godotBoundArg0 = 95'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  let argToPassToGodot1 = if not val.isNil:
    val.godotObject
  else:
    nil
  argsToPassToGodot[][1] = argToPassToGodot1
  var ptrCallRet: pointer
  animatedTextureSetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame96delaySec(self: AnimatedTexture): float64 =
  if isNil(animatedTextureGetFrameDelayMethodBind):
    animatedTextureGetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"get_frame_delay")
  var
    godotBoundArg0 = 96'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animatedTextureGetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc `frame96delaySec=`(self: AnimatedTexture; val: float64) =
  if isNil(animatedTextureSetFrameDelayMethodBind):
    animatedTextureSetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"set_frame_delay")
  var
    godotBoundArg0 = 96'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  animatedTextureSetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame96texture(self: AnimatedTexture): Texture =
  if isNil(animatedTextureGetFrameTextureMethodBind):
    animatedTextureGetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"get_frame_texture")
  var
    godotBoundArg0 = 96'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  animatedTextureGetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

proc `frame96texture=`(self: AnimatedTexture; val: Texture) =
  if isNil(animatedTextureSetFrameTextureMethodBind):
    animatedTextureSetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"set_frame_texture")
  var
    godotBoundArg0 = 96'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  let argToPassToGodot1 = if not val.isNil:
    val.godotObject
  else:
    nil
  argsToPassToGodot[][1] = argToPassToGodot1
  var ptrCallRet: pointer
  animatedTextureSetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame97delaySec(self: AnimatedTexture): float64 =
  if isNil(animatedTextureGetFrameDelayMethodBind):
    animatedTextureGetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"get_frame_delay")
  var
    godotBoundArg0 = 97'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animatedTextureGetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc `frame97delaySec=`(self: AnimatedTexture; val: float64) =
  if isNil(animatedTextureSetFrameDelayMethodBind):
    animatedTextureSetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"set_frame_delay")
  var
    godotBoundArg0 = 97'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  animatedTextureSetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame97texture(self: AnimatedTexture): Texture =
  if isNil(animatedTextureGetFrameTextureMethodBind):
    animatedTextureGetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"get_frame_texture")
  var
    godotBoundArg0 = 97'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  animatedTextureGetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

proc `frame97texture=`(self: AnimatedTexture; val: Texture) =
  if isNil(animatedTextureSetFrameTextureMethodBind):
    animatedTextureSetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"set_frame_texture")
  var
    godotBoundArg0 = 97'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  let argToPassToGodot1 = if not val.isNil:
    val.godotObject
  else:
    nil
  argsToPassToGodot[][1] = argToPassToGodot1
  var ptrCallRet: pointer
  animatedTextureSetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame98delaySec(self: AnimatedTexture): float64 =
  if isNil(animatedTextureGetFrameDelayMethodBind):
    animatedTextureGetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"get_frame_delay")
  var
    godotBoundArg0 = 98'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animatedTextureGetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc `frame98delaySec=`(self: AnimatedTexture; val: float64) =
  if isNil(animatedTextureSetFrameDelayMethodBind):
    animatedTextureSetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"set_frame_delay")
  var
    godotBoundArg0 = 98'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  animatedTextureSetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame98texture(self: AnimatedTexture): Texture =
  if isNil(animatedTextureGetFrameTextureMethodBind):
    animatedTextureGetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"get_frame_texture")
  var
    godotBoundArg0 = 98'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  animatedTextureGetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

proc `frame98texture=`(self: AnimatedTexture; val: Texture) =
  if isNil(animatedTextureSetFrameTextureMethodBind):
    animatedTextureSetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"set_frame_texture")
  var
    godotBoundArg0 = 98'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  let argToPassToGodot1 = if not val.isNil:
    val.godotObject
  else:
    nil
  argsToPassToGodot[][1] = argToPassToGodot1
  var ptrCallRet: pointer
  animatedTextureSetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame99delaySec(self: AnimatedTexture): float64 =
  if isNil(animatedTextureGetFrameDelayMethodBind):
    animatedTextureGetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"get_frame_delay")
  var
    godotBoundArg0 = 99'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animatedTextureGetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc `frame99delaySec=`(self: AnimatedTexture; val: float64) =
  if isNil(animatedTextureSetFrameDelayMethodBind):
    animatedTextureSetFrameDelayMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"set_frame_delay")
  var
    godotBoundArg0 = 99'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  animatedTextureSetFrameDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc frame99texture(self: AnimatedTexture): Texture =
  if isNil(animatedTextureGetFrameTextureMethodBind):
    animatedTextureGetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"get_frame_texture")
  var
    godotBoundArg0 = 99'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  animatedTextureGetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

proc `frame99texture=`(self: AnimatedTexture; val: Texture) =
  if isNil(animatedTextureSetFrameTextureMethodBind):
    animatedTextureSetFrameTextureMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"set_frame_texture")
  var
    godotBoundArg0 = 99'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  let argToPassToGodot1 = if not val.isNil:
    val.godotObject
  else:
    nil
  argsToPassToGodot[][1] = argToPassToGodot1
  var ptrCallRet: pointer
  animatedTextureSetFrameTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var animatedTextureGetFramesMethodBind {.threadvar.}: ptr GodotMethodBind
proc frames(self: AnimatedTexture): int64 =
  if isNil(animatedTextureGetFramesMethodBind):
    animatedTextureGetFramesMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"get_frames")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animatedTextureGetFramesMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var animatedTextureSetFramesMethodBind {.threadvar.}: ptr GodotMethodBind
proc `frames=`(self: AnimatedTexture; val: int64) =
  if isNil(animatedTextureSetFramesMethodBind):
    animatedTextureSetFramesMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"set_frames")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  animatedTextureSetFramesMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var animatedTextureGetOneshotMethodBind {.threadvar.}: ptr GodotMethodBind
proc oneshot(self: AnimatedTexture): bool =
  if isNil(animatedTextureGetOneshotMethodBind):
    animatedTextureGetOneshotMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"get_oneshot")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animatedTextureGetOneshotMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var animatedTextureSetOneshotMethodBind {.threadvar.}: ptr GodotMethodBind
proc `oneshot=`(self: AnimatedTexture; val: bool) =
  if isNil(animatedTextureSetOneshotMethodBind):
    animatedTextureSetOneshotMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"set_oneshot")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  animatedTextureSetOneshotMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var animatedTextureGetPauseMethodBind {.threadvar.}: ptr GodotMethodBind
proc pause(self: AnimatedTexture): bool =
  if isNil(animatedTextureGetPauseMethodBind):
    animatedTextureGetPauseMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"get_pause")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animatedTextureGetPauseMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var animatedTextureSetPauseMethodBind {.threadvar.}: ptr GodotMethodBind
proc `pause=`(self: AnimatedTexture; val: bool) =
  if isNil(animatedTextureSetPauseMethodBind):
    animatedTextureSetPauseMethodBind = getMethod(cstring"AnimatedTexture",
        cstring"set_pause")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  animatedTextureSetPauseMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var animatedTextureUnderscoreupdateProxyMethodBind {.threadvar.}: ptr GodotMethodBind
method updateProxy(self: AnimatedTexture) =
  if isNil(animatedTextureUnderscoreupdateProxyMethodBind):
    animatedTextureUnderscoreupdateProxyMethodBind = getMethod(
        cstring"AnimatedTexture", cstring"_update_proxy")
  var ptrCallRet: pointer
  animatedTextureUnderscoreupdateProxyMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)
