
import
  godot, godottypes, godotinternal, animation_root_node

export
  godottypes, animation_root_node

const
  BLEND_MODE_DISCRETE* = 1'i64
  BLEND_MODE_DISCRETE_CARRY* = 2'i64
  BLEND_MODE_INTERPOLATED* = 0'i64
proc autoTriangles*(self: AnimationNodeBlendSpace2D): bool {.gcsafe, locks: 0.}
proc `autoTriangles=`*(self: AnimationNodeBlendSpace2D; val: bool) {.gcsafe, locks: 0.}
proc blendMode*(self: AnimationNodeBlendSpace2D): int64 {.gcsafe, locks: 0.}
proc `blendMode=`*(self: AnimationNodeBlendSpace2D; val: int64) {.gcsafe, locks: 0.}
proc blendPoint0node*(self: AnimationNodeBlendSpace2D): AnimationRootNode {.gcsafe,
    locks: 0.}
proc `blendPoint0node=`*(self: AnimationNodeBlendSpace2D; val: AnimationRootNode) {.
    gcsafe, locks: 0.}
proc blendPoint0pos*(self: AnimationNodeBlendSpace2D): Vector2 {.gcsafe, locks: 0.}
proc `blendPoint0pos=`*(self: AnimationNodeBlendSpace2D; val: Vector2) {.gcsafe,
    locks: 0.}
proc blendPoint1node*(self: AnimationNodeBlendSpace2D): AnimationRootNode {.gcsafe,
    locks: 0.}
proc `blendPoint1node=`*(self: AnimationNodeBlendSpace2D; val: AnimationRootNode) {.
    gcsafe, locks: 0.}
proc blendPoint1pos*(self: AnimationNodeBlendSpace2D): Vector2 {.gcsafe, locks: 0.}
proc `blendPoint1pos=`*(self: AnimationNodeBlendSpace2D; val: Vector2) {.gcsafe,
    locks: 0.}
proc blendPoint10node*(self: AnimationNodeBlendSpace2D): AnimationRootNode {.gcsafe,
    locks: 0.}
proc `blendPoint10node=`*(self: AnimationNodeBlendSpace2D; val: AnimationRootNode) {.
    gcsafe, locks: 0.}
proc blendPoint10pos*(self: AnimationNodeBlendSpace2D): Vector2 {.gcsafe, locks: 0.}
proc `blendPoint10pos=`*(self: AnimationNodeBlendSpace2D; val: Vector2) {.gcsafe,
    locks: 0.}
proc blendPoint11node*(self: AnimationNodeBlendSpace2D): AnimationRootNode {.gcsafe,
    locks: 0.}
proc `blendPoint11node=`*(self: AnimationNodeBlendSpace2D; val: AnimationRootNode) {.
    gcsafe, locks: 0.}
proc blendPoint11pos*(self: AnimationNodeBlendSpace2D): Vector2 {.gcsafe, locks: 0.}
proc `blendPoint11pos=`*(self: AnimationNodeBlendSpace2D; val: Vector2) {.gcsafe,
    locks: 0.}
proc blendPoint12node*(self: AnimationNodeBlendSpace2D): AnimationRootNode {.gcsafe,
    locks: 0.}
proc `blendPoint12node=`*(self: AnimationNodeBlendSpace2D; val: AnimationRootNode) {.
    gcsafe, locks: 0.}
proc blendPoint12pos*(self: AnimationNodeBlendSpace2D): Vector2 {.gcsafe, locks: 0.}
proc `blendPoint12pos=`*(self: AnimationNodeBlendSpace2D; val: Vector2) {.gcsafe,
    locks: 0.}
proc blendPoint13node*(self: AnimationNodeBlendSpace2D): AnimationRootNode {.gcsafe,
    locks: 0.}
proc `blendPoint13node=`*(self: AnimationNodeBlendSpace2D; val: AnimationRootNode) {.
    gcsafe, locks: 0.}
proc blendPoint13pos*(self: AnimationNodeBlendSpace2D): Vector2 {.gcsafe, locks: 0.}
proc `blendPoint13pos=`*(self: AnimationNodeBlendSpace2D; val: Vector2) {.gcsafe,
    locks: 0.}
proc blendPoint14node*(self: AnimationNodeBlendSpace2D): AnimationRootNode {.gcsafe,
    locks: 0.}
proc `blendPoint14node=`*(self: AnimationNodeBlendSpace2D; val: AnimationRootNode) {.
    gcsafe, locks: 0.}
proc blendPoint14pos*(self: AnimationNodeBlendSpace2D): Vector2 {.gcsafe, locks: 0.}
proc `blendPoint14pos=`*(self: AnimationNodeBlendSpace2D; val: Vector2) {.gcsafe,
    locks: 0.}
proc blendPoint15node*(self: AnimationNodeBlendSpace2D): AnimationRootNode {.gcsafe,
    locks: 0.}
proc `blendPoint15node=`*(self: AnimationNodeBlendSpace2D; val: AnimationRootNode) {.
    gcsafe, locks: 0.}
proc blendPoint15pos*(self: AnimationNodeBlendSpace2D): Vector2 {.gcsafe, locks: 0.}
proc `blendPoint15pos=`*(self: AnimationNodeBlendSpace2D; val: Vector2) {.gcsafe,
    locks: 0.}
proc blendPoint16node*(self: AnimationNodeBlendSpace2D): AnimationRootNode {.gcsafe,
    locks: 0.}
proc `blendPoint16node=`*(self: AnimationNodeBlendSpace2D; val: AnimationRootNode) {.
    gcsafe, locks: 0.}
proc blendPoint16pos*(self: AnimationNodeBlendSpace2D): Vector2 {.gcsafe, locks: 0.}
proc `blendPoint16pos=`*(self: AnimationNodeBlendSpace2D; val: Vector2) {.gcsafe,
    locks: 0.}
proc blendPoint17node*(self: AnimationNodeBlendSpace2D): AnimationRootNode {.gcsafe,
    locks: 0.}
proc `blendPoint17node=`*(self: AnimationNodeBlendSpace2D; val: AnimationRootNode) {.
    gcsafe, locks: 0.}
proc blendPoint17pos*(self: AnimationNodeBlendSpace2D): Vector2 {.gcsafe, locks: 0.}
proc `blendPoint17pos=`*(self: AnimationNodeBlendSpace2D; val: Vector2) {.gcsafe,
    locks: 0.}
proc blendPoint18node*(self: AnimationNodeBlendSpace2D): AnimationRootNode {.gcsafe,
    locks: 0.}
proc `blendPoint18node=`*(self: AnimationNodeBlendSpace2D; val: AnimationRootNode) {.
    gcsafe, locks: 0.}
proc blendPoint18pos*(self: AnimationNodeBlendSpace2D): Vector2 {.gcsafe, locks: 0.}
proc `blendPoint18pos=`*(self: AnimationNodeBlendSpace2D; val: Vector2) {.gcsafe,
    locks: 0.}
proc blendPoint19node*(self: AnimationNodeBlendSpace2D): AnimationRootNode {.gcsafe,
    locks: 0.}
proc `blendPoint19node=`*(self: AnimationNodeBlendSpace2D; val: AnimationRootNode) {.
    gcsafe, locks: 0.}
proc blendPoint19pos*(self: AnimationNodeBlendSpace2D): Vector2 {.gcsafe, locks: 0.}
proc `blendPoint19pos=`*(self: AnimationNodeBlendSpace2D; val: Vector2) {.gcsafe,
    locks: 0.}
proc blendPoint2node*(self: AnimationNodeBlendSpace2D): AnimationRootNode {.gcsafe,
    locks: 0.}
proc `blendPoint2node=`*(self: AnimationNodeBlendSpace2D; val: AnimationRootNode) {.
    gcsafe, locks: 0.}
proc blendPoint2pos*(self: AnimationNodeBlendSpace2D): Vector2 {.gcsafe, locks: 0.}
proc `blendPoint2pos=`*(self: AnimationNodeBlendSpace2D; val: Vector2) {.gcsafe,
    locks: 0.}
proc blendPoint20node*(self: AnimationNodeBlendSpace2D): AnimationRootNode {.gcsafe,
    locks: 0.}
proc `blendPoint20node=`*(self: AnimationNodeBlendSpace2D; val: AnimationRootNode) {.
    gcsafe, locks: 0.}
proc blendPoint20pos*(self: AnimationNodeBlendSpace2D): Vector2 {.gcsafe, locks: 0.}
proc `blendPoint20pos=`*(self: AnimationNodeBlendSpace2D; val: Vector2) {.gcsafe,
    locks: 0.}
proc blendPoint21node*(self: AnimationNodeBlendSpace2D): AnimationRootNode {.gcsafe,
    locks: 0.}
proc `blendPoint21node=`*(self: AnimationNodeBlendSpace2D; val: AnimationRootNode) {.
    gcsafe, locks: 0.}
proc blendPoint21pos*(self: AnimationNodeBlendSpace2D): Vector2 {.gcsafe, locks: 0.}
proc `blendPoint21pos=`*(self: AnimationNodeBlendSpace2D; val: Vector2) {.gcsafe,
    locks: 0.}
proc blendPoint22node*(self: AnimationNodeBlendSpace2D): AnimationRootNode {.gcsafe,
    locks: 0.}
proc `blendPoint22node=`*(self: AnimationNodeBlendSpace2D; val: AnimationRootNode) {.
    gcsafe, locks: 0.}
proc blendPoint22pos*(self: AnimationNodeBlendSpace2D): Vector2 {.gcsafe, locks: 0.}
proc `blendPoint22pos=`*(self: AnimationNodeBlendSpace2D; val: Vector2) {.gcsafe,
    locks: 0.}
proc blendPoint23node*(self: AnimationNodeBlendSpace2D): AnimationRootNode {.gcsafe,
    locks: 0.}
proc `blendPoint23node=`*(self: AnimationNodeBlendSpace2D; val: AnimationRootNode) {.
    gcsafe, locks: 0.}
proc blendPoint23pos*(self: AnimationNodeBlendSpace2D): Vector2 {.gcsafe, locks: 0.}
proc `blendPoint23pos=`*(self: AnimationNodeBlendSpace2D; val: Vector2) {.gcsafe,
    locks: 0.}
proc blendPoint24node*(self: AnimationNodeBlendSpace2D): AnimationRootNode {.gcsafe,
    locks: 0.}
proc `blendPoint24node=`*(self: AnimationNodeBlendSpace2D; val: AnimationRootNode) {.
    gcsafe, locks: 0.}
proc blendPoint24pos*(self: AnimationNodeBlendSpace2D): Vector2 {.gcsafe, locks: 0.}
proc `blendPoint24pos=`*(self: AnimationNodeBlendSpace2D; val: Vector2) {.gcsafe,
    locks: 0.}
proc blendPoint25node*(self: AnimationNodeBlendSpace2D): AnimationRootNode {.gcsafe,
    locks: 0.}
proc `blendPoint25node=`*(self: AnimationNodeBlendSpace2D; val: AnimationRootNode) {.
    gcsafe, locks: 0.}
proc blendPoint25pos*(self: AnimationNodeBlendSpace2D): Vector2 {.gcsafe, locks: 0.}
proc `blendPoint25pos=`*(self: AnimationNodeBlendSpace2D; val: Vector2) {.gcsafe,
    locks: 0.}
proc blendPoint26node*(self: AnimationNodeBlendSpace2D): AnimationRootNode {.gcsafe,
    locks: 0.}
proc `blendPoint26node=`*(self: AnimationNodeBlendSpace2D; val: AnimationRootNode) {.
    gcsafe, locks: 0.}
proc blendPoint26pos*(self: AnimationNodeBlendSpace2D): Vector2 {.gcsafe, locks: 0.}
proc `blendPoint26pos=`*(self: AnimationNodeBlendSpace2D; val: Vector2) {.gcsafe,
    locks: 0.}
proc blendPoint27node*(self: AnimationNodeBlendSpace2D): AnimationRootNode {.gcsafe,
    locks: 0.}
proc `blendPoint27node=`*(self: AnimationNodeBlendSpace2D; val: AnimationRootNode) {.
    gcsafe, locks: 0.}
proc blendPoint27pos*(self: AnimationNodeBlendSpace2D): Vector2 {.gcsafe, locks: 0.}
proc `blendPoint27pos=`*(self: AnimationNodeBlendSpace2D; val: Vector2) {.gcsafe,
    locks: 0.}
proc blendPoint28node*(self: AnimationNodeBlendSpace2D): AnimationRootNode {.gcsafe,
    locks: 0.}
proc `blendPoint28node=`*(self: AnimationNodeBlendSpace2D; val: AnimationRootNode) {.
    gcsafe, locks: 0.}
proc blendPoint28pos*(self: AnimationNodeBlendSpace2D): Vector2 {.gcsafe, locks: 0.}
proc `blendPoint28pos=`*(self: AnimationNodeBlendSpace2D; val: Vector2) {.gcsafe,
    locks: 0.}
proc blendPoint29node*(self: AnimationNodeBlendSpace2D): AnimationRootNode {.gcsafe,
    locks: 0.}
proc `blendPoint29node=`*(self: AnimationNodeBlendSpace2D; val: AnimationRootNode) {.
    gcsafe, locks: 0.}
proc blendPoint29pos*(self: AnimationNodeBlendSpace2D): Vector2 {.gcsafe, locks: 0.}
proc `blendPoint29pos=`*(self: AnimationNodeBlendSpace2D; val: Vector2) {.gcsafe,
    locks: 0.}
proc blendPoint3node*(self: AnimationNodeBlendSpace2D): AnimationRootNode {.gcsafe,
    locks: 0.}
proc `blendPoint3node=`*(self: AnimationNodeBlendSpace2D; val: AnimationRootNode) {.
    gcsafe, locks: 0.}
proc blendPoint3pos*(self: AnimationNodeBlendSpace2D): Vector2 {.gcsafe, locks: 0.}
proc `blendPoint3pos=`*(self: AnimationNodeBlendSpace2D; val: Vector2) {.gcsafe,
    locks: 0.}
proc blendPoint30node*(self: AnimationNodeBlendSpace2D): AnimationRootNode {.gcsafe,
    locks: 0.}
proc `blendPoint30node=`*(self: AnimationNodeBlendSpace2D; val: AnimationRootNode) {.
    gcsafe, locks: 0.}
proc blendPoint30pos*(self: AnimationNodeBlendSpace2D): Vector2 {.gcsafe, locks: 0.}
proc `blendPoint30pos=`*(self: AnimationNodeBlendSpace2D; val: Vector2) {.gcsafe,
    locks: 0.}
proc blendPoint31node*(self: AnimationNodeBlendSpace2D): AnimationRootNode {.gcsafe,
    locks: 0.}
proc `blendPoint31node=`*(self: AnimationNodeBlendSpace2D; val: AnimationRootNode) {.
    gcsafe, locks: 0.}
proc blendPoint31pos*(self: AnimationNodeBlendSpace2D): Vector2 {.gcsafe, locks: 0.}
proc `blendPoint31pos=`*(self: AnimationNodeBlendSpace2D; val: Vector2) {.gcsafe,
    locks: 0.}
proc blendPoint32node*(self: AnimationNodeBlendSpace2D): AnimationRootNode {.gcsafe,
    locks: 0.}
proc `blendPoint32node=`*(self: AnimationNodeBlendSpace2D; val: AnimationRootNode) {.
    gcsafe, locks: 0.}
proc blendPoint32pos*(self: AnimationNodeBlendSpace2D): Vector2 {.gcsafe, locks: 0.}
proc `blendPoint32pos=`*(self: AnimationNodeBlendSpace2D; val: Vector2) {.gcsafe,
    locks: 0.}
proc blendPoint33node*(self: AnimationNodeBlendSpace2D): AnimationRootNode {.gcsafe,
    locks: 0.}
proc `blendPoint33node=`*(self: AnimationNodeBlendSpace2D; val: AnimationRootNode) {.
    gcsafe, locks: 0.}
proc blendPoint33pos*(self: AnimationNodeBlendSpace2D): Vector2 {.gcsafe, locks: 0.}
proc `blendPoint33pos=`*(self: AnimationNodeBlendSpace2D; val: Vector2) {.gcsafe,
    locks: 0.}
proc blendPoint34node*(self: AnimationNodeBlendSpace2D): AnimationRootNode {.gcsafe,
    locks: 0.}
proc `blendPoint34node=`*(self: AnimationNodeBlendSpace2D; val: AnimationRootNode) {.
    gcsafe, locks: 0.}
proc blendPoint34pos*(self: AnimationNodeBlendSpace2D): Vector2 {.gcsafe, locks: 0.}
proc `blendPoint34pos=`*(self: AnimationNodeBlendSpace2D; val: Vector2) {.gcsafe,
    locks: 0.}
proc blendPoint35node*(self: AnimationNodeBlendSpace2D): AnimationRootNode {.gcsafe,
    locks: 0.}
proc `blendPoint35node=`*(self: AnimationNodeBlendSpace2D; val: AnimationRootNode) {.
    gcsafe, locks: 0.}
proc blendPoint35pos*(self: AnimationNodeBlendSpace2D): Vector2 {.gcsafe, locks: 0.}
proc `blendPoint35pos=`*(self: AnimationNodeBlendSpace2D; val: Vector2) {.gcsafe,
    locks: 0.}
proc blendPoint36node*(self: AnimationNodeBlendSpace2D): AnimationRootNode {.gcsafe,
    locks: 0.}
proc `blendPoint36node=`*(self: AnimationNodeBlendSpace2D; val: AnimationRootNode) {.
    gcsafe, locks: 0.}
proc blendPoint36pos*(self: AnimationNodeBlendSpace2D): Vector2 {.gcsafe, locks: 0.}
proc `blendPoint36pos=`*(self: AnimationNodeBlendSpace2D; val: Vector2) {.gcsafe,
    locks: 0.}
proc blendPoint37node*(self: AnimationNodeBlendSpace2D): AnimationRootNode {.gcsafe,
    locks: 0.}
proc `blendPoint37node=`*(self: AnimationNodeBlendSpace2D; val: AnimationRootNode) {.
    gcsafe, locks: 0.}
proc blendPoint37pos*(self: AnimationNodeBlendSpace2D): Vector2 {.gcsafe, locks: 0.}
proc `blendPoint37pos=`*(self: AnimationNodeBlendSpace2D; val: Vector2) {.gcsafe,
    locks: 0.}
proc blendPoint38node*(self: AnimationNodeBlendSpace2D): AnimationRootNode {.gcsafe,
    locks: 0.}
proc `blendPoint38node=`*(self: AnimationNodeBlendSpace2D; val: AnimationRootNode) {.
    gcsafe, locks: 0.}
proc blendPoint38pos*(self: AnimationNodeBlendSpace2D): Vector2 {.gcsafe, locks: 0.}
proc `blendPoint38pos=`*(self: AnimationNodeBlendSpace2D; val: Vector2) {.gcsafe,
    locks: 0.}
proc blendPoint39node*(self: AnimationNodeBlendSpace2D): AnimationRootNode {.gcsafe,
    locks: 0.}
proc `blendPoint39node=`*(self: AnimationNodeBlendSpace2D; val: AnimationRootNode) {.
    gcsafe, locks: 0.}
proc blendPoint39pos*(self: AnimationNodeBlendSpace2D): Vector2 {.gcsafe, locks: 0.}
proc `blendPoint39pos=`*(self: AnimationNodeBlendSpace2D; val: Vector2) {.gcsafe,
    locks: 0.}
proc blendPoint4node*(self: AnimationNodeBlendSpace2D): AnimationRootNode {.gcsafe,
    locks: 0.}
proc `blendPoint4node=`*(self: AnimationNodeBlendSpace2D; val: AnimationRootNode) {.
    gcsafe, locks: 0.}
proc blendPoint4pos*(self: AnimationNodeBlendSpace2D): Vector2 {.gcsafe, locks: 0.}
proc `blendPoint4pos=`*(self: AnimationNodeBlendSpace2D; val: Vector2) {.gcsafe,
    locks: 0.}
proc blendPoint40node*(self: AnimationNodeBlendSpace2D): AnimationRootNode {.gcsafe,
    locks: 0.}
proc `blendPoint40node=`*(self: AnimationNodeBlendSpace2D; val: AnimationRootNode) {.
    gcsafe, locks: 0.}
proc blendPoint40pos*(self: AnimationNodeBlendSpace2D): Vector2 {.gcsafe, locks: 0.}
proc `blendPoint40pos=`*(self: AnimationNodeBlendSpace2D; val: Vector2) {.gcsafe,
    locks: 0.}
proc blendPoint41node*(self: AnimationNodeBlendSpace2D): AnimationRootNode {.gcsafe,
    locks: 0.}
proc `blendPoint41node=`*(self: AnimationNodeBlendSpace2D; val: AnimationRootNode) {.
    gcsafe, locks: 0.}
proc blendPoint41pos*(self: AnimationNodeBlendSpace2D): Vector2 {.gcsafe, locks: 0.}
proc `blendPoint41pos=`*(self: AnimationNodeBlendSpace2D; val: Vector2) {.gcsafe,
    locks: 0.}
proc blendPoint42node*(self: AnimationNodeBlendSpace2D): AnimationRootNode {.gcsafe,
    locks: 0.}
proc `blendPoint42node=`*(self: AnimationNodeBlendSpace2D; val: AnimationRootNode) {.
    gcsafe, locks: 0.}
proc blendPoint42pos*(self: AnimationNodeBlendSpace2D): Vector2 {.gcsafe, locks: 0.}
proc `blendPoint42pos=`*(self: AnimationNodeBlendSpace2D; val: Vector2) {.gcsafe,
    locks: 0.}
proc blendPoint43node*(self: AnimationNodeBlendSpace2D): AnimationRootNode {.gcsafe,
    locks: 0.}
proc `blendPoint43node=`*(self: AnimationNodeBlendSpace2D; val: AnimationRootNode) {.
    gcsafe, locks: 0.}
proc blendPoint43pos*(self: AnimationNodeBlendSpace2D): Vector2 {.gcsafe, locks: 0.}
proc `blendPoint43pos=`*(self: AnimationNodeBlendSpace2D; val: Vector2) {.gcsafe,
    locks: 0.}
proc blendPoint44node*(self: AnimationNodeBlendSpace2D): AnimationRootNode {.gcsafe,
    locks: 0.}
proc `blendPoint44node=`*(self: AnimationNodeBlendSpace2D; val: AnimationRootNode) {.
    gcsafe, locks: 0.}
proc blendPoint44pos*(self: AnimationNodeBlendSpace2D): Vector2 {.gcsafe, locks: 0.}
proc `blendPoint44pos=`*(self: AnimationNodeBlendSpace2D; val: Vector2) {.gcsafe,
    locks: 0.}
proc blendPoint45node*(self: AnimationNodeBlendSpace2D): AnimationRootNode {.gcsafe,
    locks: 0.}
proc `blendPoint45node=`*(self: AnimationNodeBlendSpace2D; val: AnimationRootNode) {.
    gcsafe, locks: 0.}
proc blendPoint45pos*(self: AnimationNodeBlendSpace2D): Vector2 {.gcsafe, locks: 0.}
proc `blendPoint45pos=`*(self: AnimationNodeBlendSpace2D; val: Vector2) {.gcsafe,
    locks: 0.}
proc blendPoint46node*(self: AnimationNodeBlendSpace2D): AnimationRootNode {.gcsafe,
    locks: 0.}
proc `blendPoint46node=`*(self: AnimationNodeBlendSpace2D; val: AnimationRootNode) {.
    gcsafe, locks: 0.}
proc blendPoint46pos*(self: AnimationNodeBlendSpace2D): Vector2 {.gcsafe, locks: 0.}
proc `blendPoint46pos=`*(self: AnimationNodeBlendSpace2D; val: Vector2) {.gcsafe,
    locks: 0.}
proc blendPoint47node*(self: AnimationNodeBlendSpace2D): AnimationRootNode {.gcsafe,
    locks: 0.}
proc `blendPoint47node=`*(self: AnimationNodeBlendSpace2D; val: AnimationRootNode) {.
    gcsafe, locks: 0.}
proc blendPoint47pos*(self: AnimationNodeBlendSpace2D): Vector2 {.gcsafe, locks: 0.}
proc `blendPoint47pos=`*(self: AnimationNodeBlendSpace2D; val: Vector2) {.gcsafe,
    locks: 0.}
proc blendPoint48node*(self: AnimationNodeBlendSpace2D): AnimationRootNode {.gcsafe,
    locks: 0.}
proc `blendPoint48node=`*(self: AnimationNodeBlendSpace2D; val: AnimationRootNode) {.
    gcsafe, locks: 0.}
proc blendPoint48pos*(self: AnimationNodeBlendSpace2D): Vector2 {.gcsafe, locks: 0.}
proc `blendPoint48pos=`*(self: AnimationNodeBlendSpace2D; val: Vector2) {.gcsafe,
    locks: 0.}
proc blendPoint49node*(self: AnimationNodeBlendSpace2D): AnimationRootNode {.gcsafe,
    locks: 0.}
proc `blendPoint49node=`*(self: AnimationNodeBlendSpace2D; val: AnimationRootNode) {.
    gcsafe, locks: 0.}
proc blendPoint49pos*(self: AnimationNodeBlendSpace2D): Vector2 {.gcsafe, locks: 0.}
proc `blendPoint49pos=`*(self: AnimationNodeBlendSpace2D; val: Vector2) {.gcsafe,
    locks: 0.}
proc blendPoint5node*(self: AnimationNodeBlendSpace2D): AnimationRootNode {.gcsafe,
    locks: 0.}
proc `blendPoint5node=`*(self: AnimationNodeBlendSpace2D; val: AnimationRootNode) {.
    gcsafe, locks: 0.}
proc blendPoint5pos*(self: AnimationNodeBlendSpace2D): Vector2 {.gcsafe, locks: 0.}
proc `blendPoint5pos=`*(self: AnimationNodeBlendSpace2D; val: Vector2) {.gcsafe,
    locks: 0.}
proc blendPoint50node*(self: AnimationNodeBlendSpace2D): AnimationRootNode {.gcsafe,
    locks: 0.}
proc `blendPoint50node=`*(self: AnimationNodeBlendSpace2D; val: AnimationRootNode) {.
    gcsafe, locks: 0.}
proc blendPoint50pos*(self: AnimationNodeBlendSpace2D): Vector2 {.gcsafe, locks: 0.}
proc `blendPoint50pos=`*(self: AnimationNodeBlendSpace2D; val: Vector2) {.gcsafe,
    locks: 0.}
proc blendPoint51node*(self: AnimationNodeBlendSpace2D): AnimationRootNode {.gcsafe,
    locks: 0.}
proc `blendPoint51node=`*(self: AnimationNodeBlendSpace2D; val: AnimationRootNode) {.
    gcsafe, locks: 0.}
proc blendPoint51pos*(self: AnimationNodeBlendSpace2D): Vector2 {.gcsafe, locks: 0.}
proc `blendPoint51pos=`*(self: AnimationNodeBlendSpace2D; val: Vector2) {.gcsafe,
    locks: 0.}
proc blendPoint52node*(self: AnimationNodeBlendSpace2D): AnimationRootNode {.gcsafe,
    locks: 0.}
proc `blendPoint52node=`*(self: AnimationNodeBlendSpace2D; val: AnimationRootNode) {.
    gcsafe, locks: 0.}
proc blendPoint52pos*(self: AnimationNodeBlendSpace2D): Vector2 {.gcsafe, locks: 0.}
proc `blendPoint52pos=`*(self: AnimationNodeBlendSpace2D; val: Vector2) {.gcsafe,
    locks: 0.}
proc blendPoint53node*(self: AnimationNodeBlendSpace2D): AnimationRootNode {.gcsafe,
    locks: 0.}
proc `blendPoint53node=`*(self: AnimationNodeBlendSpace2D; val: AnimationRootNode) {.
    gcsafe, locks: 0.}
proc blendPoint53pos*(self: AnimationNodeBlendSpace2D): Vector2 {.gcsafe, locks: 0.}
proc `blendPoint53pos=`*(self: AnimationNodeBlendSpace2D; val: Vector2) {.gcsafe,
    locks: 0.}
proc blendPoint54node*(self: AnimationNodeBlendSpace2D): AnimationRootNode {.gcsafe,
    locks: 0.}
proc `blendPoint54node=`*(self: AnimationNodeBlendSpace2D; val: AnimationRootNode) {.
    gcsafe, locks: 0.}
proc blendPoint54pos*(self: AnimationNodeBlendSpace2D): Vector2 {.gcsafe, locks: 0.}
proc `blendPoint54pos=`*(self: AnimationNodeBlendSpace2D; val: Vector2) {.gcsafe,
    locks: 0.}
proc blendPoint55node*(self: AnimationNodeBlendSpace2D): AnimationRootNode {.gcsafe,
    locks: 0.}
proc `blendPoint55node=`*(self: AnimationNodeBlendSpace2D; val: AnimationRootNode) {.
    gcsafe, locks: 0.}
proc blendPoint55pos*(self: AnimationNodeBlendSpace2D): Vector2 {.gcsafe, locks: 0.}
proc `blendPoint55pos=`*(self: AnimationNodeBlendSpace2D; val: Vector2) {.gcsafe,
    locks: 0.}
proc blendPoint56node*(self: AnimationNodeBlendSpace2D): AnimationRootNode {.gcsafe,
    locks: 0.}
proc `blendPoint56node=`*(self: AnimationNodeBlendSpace2D; val: AnimationRootNode) {.
    gcsafe, locks: 0.}
proc blendPoint56pos*(self: AnimationNodeBlendSpace2D): Vector2 {.gcsafe, locks: 0.}
proc `blendPoint56pos=`*(self: AnimationNodeBlendSpace2D; val: Vector2) {.gcsafe,
    locks: 0.}
proc blendPoint57node*(self: AnimationNodeBlendSpace2D): AnimationRootNode {.gcsafe,
    locks: 0.}
proc `blendPoint57node=`*(self: AnimationNodeBlendSpace2D; val: AnimationRootNode) {.
    gcsafe, locks: 0.}
proc blendPoint57pos*(self: AnimationNodeBlendSpace2D): Vector2 {.gcsafe, locks: 0.}
proc `blendPoint57pos=`*(self: AnimationNodeBlendSpace2D; val: Vector2) {.gcsafe,
    locks: 0.}
proc blendPoint58node*(self: AnimationNodeBlendSpace2D): AnimationRootNode {.gcsafe,
    locks: 0.}
proc `blendPoint58node=`*(self: AnimationNodeBlendSpace2D; val: AnimationRootNode) {.
    gcsafe, locks: 0.}
proc blendPoint58pos*(self: AnimationNodeBlendSpace2D): Vector2 {.gcsafe, locks: 0.}
proc `blendPoint58pos=`*(self: AnimationNodeBlendSpace2D; val: Vector2) {.gcsafe,
    locks: 0.}
proc blendPoint59node*(self: AnimationNodeBlendSpace2D): AnimationRootNode {.gcsafe,
    locks: 0.}
proc `blendPoint59node=`*(self: AnimationNodeBlendSpace2D; val: AnimationRootNode) {.
    gcsafe, locks: 0.}
proc blendPoint59pos*(self: AnimationNodeBlendSpace2D): Vector2 {.gcsafe, locks: 0.}
proc `blendPoint59pos=`*(self: AnimationNodeBlendSpace2D; val: Vector2) {.gcsafe,
    locks: 0.}
proc blendPoint6node*(self: AnimationNodeBlendSpace2D): AnimationRootNode {.gcsafe,
    locks: 0.}
proc `blendPoint6node=`*(self: AnimationNodeBlendSpace2D; val: AnimationRootNode) {.
    gcsafe, locks: 0.}
proc blendPoint6pos*(self: AnimationNodeBlendSpace2D): Vector2 {.gcsafe, locks: 0.}
proc `blendPoint6pos=`*(self: AnimationNodeBlendSpace2D; val: Vector2) {.gcsafe,
    locks: 0.}
proc blendPoint60node*(self: AnimationNodeBlendSpace2D): AnimationRootNode {.gcsafe,
    locks: 0.}
proc `blendPoint60node=`*(self: AnimationNodeBlendSpace2D; val: AnimationRootNode) {.
    gcsafe, locks: 0.}
proc blendPoint60pos*(self: AnimationNodeBlendSpace2D): Vector2 {.gcsafe, locks: 0.}
proc `blendPoint60pos=`*(self: AnimationNodeBlendSpace2D; val: Vector2) {.gcsafe,
    locks: 0.}
proc blendPoint61node*(self: AnimationNodeBlendSpace2D): AnimationRootNode {.gcsafe,
    locks: 0.}
proc `blendPoint61node=`*(self: AnimationNodeBlendSpace2D; val: AnimationRootNode) {.
    gcsafe, locks: 0.}
proc blendPoint61pos*(self: AnimationNodeBlendSpace2D): Vector2 {.gcsafe, locks: 0.}
proc `blendPoint61pos=`*(self: AnimationNodeBlendSpace2D; val: Vector2) {.gcsafe,
    locks: 0.}
proc blendPoint62node*(self: AnimationNodeBlendSpace2D): AnimationRootNode {.gcsafe,
    locks: 0.}
proc `blendPoint62node=`*(self: AnimationNodeBlendSpace2D; val: AnimationRootNode) {.
    gcsafe, locks: 0.}
proc blendPoint62pos*(self: AnimationNodeBlendSpace2D): Vector2 {.gcsafe, locks: 0.}
proc `blendPoint62pos=`*(self: AnimationNodeBlendSpace2D; val: Vector2) {.gcsafe,
    locks: 0.}
proc blendPoint63node*(self: AnimationNodeBlendSpace2D): AnimationRootNode {.gcsafe,
    locks: 0.}
proc `blendPoint63node=`*(self: AnimationNodeBlendSpace2D; val: AnimationRootNode) {.
    gcsafe, locks: 0.}
proc blendPoint63pos*(self: AnimationNodeBlendSpace2D): Vector2 {.gcsafe, locks: 0.}
proc `blendPoint63pos=`*(self: AnimationNodeBlendSpace2D; val: Vector2) {.gcsafe,
    locks: 0.}
proc blendPoint7node*(self: AnimationNodeBlendSpace2D): AnimationRootNode {.gcsafe,
    locks: 0.}
proc `blendPoint7node=`*(self: AnimationNodeBlendSpace2D; val: AnimationRootNode) {.
    gcsafe, locks: 0.}
proc blendPoint7pos*(self: AnimationNodeBlendSpace2D): Vector2 {.gcsafe, locks: 0.}
proc `blendPoint7pos=`*(self: AnimationNodeBlendSpace2D; val: Vector2) {.gcsafe,
    locks: 0.}
proc blendPoint8node*(self: AnimationNodeBlendSpace2D): AnimationRootNode {.gcsafe,
    locks: 0.}
proc `blendPoint8node=`*(self: AnimationNodeBlendSpace2D; val: AnimationRootNode) {.
    gcsafe, locks: 0.}
proc blendPoint8pos*(self: AnimationNodeBlendSpace2D): Vector2 {.gcsafe, locks: 0.}
proc `blendPoint8pos=`*(self: AnimationNodeBlendSpace2D; val: Vector2) {.gcsafe,
    locks: 0.}
proc blendPoint9node*(self: AnimationNodeBlendSpace2D): AnimationRootNode {.gcsafe,
    locks: 0.}
proc `blendPoint9node=`*(self: AnimationNodeBlendSpace2D; val: AnimationRootNode) {.
    gcsafe, locks: 0.}
proc blendPoint9pos*(self: AnimationNodeBlendSpace2D): Vector2 {.gcsafe, locks: 0.}
proc `blendPoint9pos=`*(self: AnimationNodeBlendSpace2D; val: Vector2) {.gcsafe,
    locks: 0.}
proc maxSpace*(self: AnimationNodeBlendSpace2D): Vector2 {.gcsafe, locks: 0.}
proc `maxSpace=`*(self: AnimationNodeBlendSpace2D; val: Vector2) {.gcsafe, locks: 0.}
proc minSpace*(self: AnimationNodeBlendSpace2D): Vector2 {.gcsafe, locks: 0.}
proc `minSpace=`*(self: AnimationNodeBlendSpace2D; val: Vector2) {.gcsafe, locks: 0.}
proc snap*(self: AnimationNodeBlendSpace2D): Vector2 {.gcsafe, locks: 0.}
proc `snap=`*(self: AnimationNodeBlendSpace2D; val: Vector2) {.gcsafe, locks: 0.}
proc triangles*(self: AnimationNodeBlendSpace2D): PoolIntArray {.gcsafe, locks: 0.}
proc `triangles=`*(self: AnimationNodeBlendSpace2D; val: PoolIntArray) {.gcsafe,
    locks: 0.}
proc xLabel*(self: AnimationNodeBlendSpace2D): string {.gcsafe, locks: 0.}
proc `xLabel=`*(self: AnimationNodeBlendSpace2D; val: string) {.gcsafe, locks: 0.}
proc yLabel*(self: AnimationNodeBlendSpace2D): string {.gcsafe, locks: 0.}
proc `yLabel=`*(self: AnimationNodeBlendSpace2D; val: string) {.gcsafe, locks: 0.}
method treeChanged*(self: AnimationNodeBlendSpace2D) {.gcsafe, locks: 0, base.}
method updateTriangles*(self: AnimationNodeBlendSpace2D) {.gcsafe, locks: 0, base.}
proc addBlendPointImpl*(self: AnimationNodeBlendSpace2D; node: AnimationRootNode;
                       pos: Vector2; atIndex: int64 = -1'i64) {.gcsafe, locks: 0.}
proc addTriangle*(self: AnimationNodeBlendSpace2D; x: int64; y: int64; z: int64;
                 atIndex: int64 = -1'i64) {.gcsafe, locks: 0.}
proc getBlendPointCount*(self: AnimationNodeBlendSpace2D): int64 {.gcsafe, locks: 0.}
proc getTriangleCount*(self: AnimationNodeBlendSpace2D): int64 {.gcsafe, locks: 0.}
proc getTrianglePoint*(self: AnimationNodeBlendSpace2D; triangle: int64; point: int64): int64 {.
    gcsafe, locks: 0.}
proc removeBlendPoint*(self: AnimationNodeBlendSpace2D; point: int64) {.gcsafe,
    locks: 0.}
proc removeTriangle*(self: AnimationNodeBlendSpace2D; triangle: int64) {.gcsafe,
    locks: 0.}
proc setBlendPointNode*(self: AnimationNodeBlendSpace2D; point: int64;
                       node: AnimationRootNode) {.gcsafe, locks: 0.}
var animationNodeBlendSpace2DGetAutoTrianglesMethodBind {.threadvar.}: ptr GodotMethodBind
proc autoTriangles(self: AnimationNodeBlendSpace2D): bool =
  if isNil(animationNodeBlendSpace2DGetAutoTrianglesMethodBind):
    animationNodeBlendSpace2DGetAutoTrianglesMethodBind = getMethod(
        cstring"AnimationNodeBlendSpace2D", cstring"get_auto_triangles")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animationNodeBlendSpace2DGetAutoTrianglesMethodBind.ptrCall(self.godotObject,
      nil, ptrCallRet)

var animationNodeBlendSpace2DSetAutoTrianglesMethodBind {.threadvar.}: ptr GodotMethodBind
proc `autoTriangles=`(self: AnimationNodeBlendSpace2D; val: bool) =
  if isNil(animationNodeBlendSpace2DSetAutoTrianglesMethodBind):
    animationNodeBlendSpace2DSetAutoTrianglesMethodBind = getMethod(
        cstring"AnimationNodeBlendSpace2D", cstring"set_auto_triangles")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  animationNodeBlendSpace2DSetAutoTrianglesMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var animationNodeBlendSpace2DGetBlendModeMethodBind {.threadvar.}: ptr GodotMethodBind
proc blendMode(self: AnimationNodeBlendSpace2D): int64 =
  if isNil(animationNodeBlendSpace2DGetBlendModeMethodBind):
    animationNodeBlendSpace2DGetBlendModeMethodBind = getMethod(
        cstring"AnimationNodeBlendSpace2D", cstring"get_blend_mode")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animationNodeBlendSpace2DGetBlendModeMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var animationNodeBlendSpace2DSetBlendModeMethodBind {.threadvar.}: ptr GodotMethodBind
proc `blendMode=`(self: AnimationNodeBlendSpace2D; val: int64) =
  if isNil(animationNodeBlendSpace2DSetBlendModeMethodBind):
    animationNodeBlendSpace2DSetBlendModeMethodBind = getMethod(
        cstring"AnimationNodeBlendSpace2D", cstring"set_blend_mode")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  animationNodeBlendSpace2DSetBlendModeMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var animationNodeBlendSpace2DGetBlendPointNodeMethodBind {.threadvar.}: ptr GodotMethodBind
proc blendPoint0node(self: AnimationNodeBlendSpace2D): AnimationRootNode =
  if isNil(animationNodeBlendSpace2DGetBlendPointNodeMethodBind):
    animationNodeBlendSpace2DGetBlendPointNodeMethodBind = getMethod(
        cstring"AnimationNodeBlendSpace2D", cstring"get_blend_point_node")
  var
    godotBoundArg0 = 0'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  animationNodeBlendSpace2DGetBlendPointNodeMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

var animationNodeBlendSpace2DUnderscoreaddBlendPointMethodBind {.threadvar.}: ptr GodotMethodBind
proc `blendPoint0node=`(self: AnimationNodeBlendSpace2D; val: AnimationRootNode) =
  if isNil(animationNodeBlendSpace2DUnderscoreaddBlendPointMethodBind):
    animationNodeBlendSpace2DUnderscoreaddBlendPointMethodBind = getMethod(
        cstring"AnimationNodeBlendSpace2D", cstring"_add_blend_point")
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
  animationNodeBlendSpace2DUnderscoreaddBlendPointMethodBind.ptrCall(
      self.godotObject, argsToPassToGodot, ptrCallRet)

var animationNodeBlendSpace2DGetBlendPointPositionMethodBind {.threadvar.}: ptr GodotMethodBind
proc blendPoint0pos(self: AnimationNodeBlendSpace2D): Vector2 =
  if isNil(animationNodeBlendSpace2DGetBlendPointPositionMethodBind):
    animationNodeBlendSpace2DGetBlendPointPositionMethodBind = getMethod(
        cstring"AnimationNodeBlendSpace2D", cstring"get_blend_point_position")
  var
    godotBoundArg0 = 0'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animationNodeBlendSpace2DGetBlendPointPositionMethodBind.ptrCall(
      self.godotObject, argsToPassToGodot, ptrCallRet)

var animationNodeBlendSpace2DSetBlendPointPositionMethodBind {.threadvar.}: ptr GodotMethodBind
proc `blendPoint0pos=`(self: AnimationNodeBlendSpace2D; val: Vector2) =
  if isNil(animationNodeBlendSpace2DSetBlendPointPositionMethodBind):
    animationNodeBlendSpace2DSetBlendPointPositionMethodBind = getMethod(
        cstring"AnimationNodeBlendSpace2D", cstring"set_blend_point_position")
  var
    godotBoundArg0 = 0'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  animationNodeBlendSpace2DSetBlendPointPositionMethodBind.ptrCall(
      self.godotObject, argsToPassToGodot, ptrCallRet)

proc blendPoint1node(self: AnimationNodeBlendSpace2D): AnimationRootNode =
  if isNil(animationNodeBlendSpace2DGetBlendPointNodeMethodBind):
    animationNodeBlendSpace2DGetBlendPointNodeMethodBind = getMethod(
        cstring"AnimationNodeBlendSpace2D", cstring"get_blend_point_node")
  var
    godotBoundArg0 = 1'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  animationNodeBlendSpace2DGetBlendPointNodeMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

proc `blendPoint1node=`(self: AnimationNodeBlendSpace2D; val: AnimationRootNode) =
  if isNil(animationNodeBlendSpace2DUnderscoreaddBlendPointMethodBind):
    animationNodeBlendSpace2DUnderscoreaddBlendPointMethodBind = getMethod(
        cstring"AnimationNodeBlendSpace2D", cstring"_add_blend_point")
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
  animationNodeBlendSpace2DUnderscoreaddBlendPointMethodBind.ptrCall(
      self.godotObject, argsToPassToGodot, ptrCallRet)

proc blendPoint1pos(self: AnimationNodeBlendSpace2D): Vector2 =
  if isNil(animationNodeBlendSpace2DGetBlendPointPositionMethodBind):
    animationNodeBlendSpace2DGetBlendPointPositionMethodBind = getMethod(
        cstring"AnimationNodeBlendSpace2D", cstring"get_blend_point_position")
  var
    godotBoundArg0 = 1'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animationNodeBlendSpace2DGetBlendPointPositionMethodBind.ptrCall(
      self.godotObject, argsToPassToGodot, ptrCallRet)

proc `blendPoint1pos=`(self: AnimationNodeBlendSpace2D; val: Vector2) =
  if isNil(animationNodeBlendSpace2DSetBlendPointPositionMethodBind):
    animationNodeBlendSpace2DSetBlendPointPositionMethodBind = getMethod(
        cstring"AnimationNodeBlendSpace2D", cstring"set_blend_point_position")
  var
    godotBoundArg0 = 1'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  animationNodeBlendSpace2DSetBlendPointPositionMethodBind.ptrCall(
      self.godotObject, argsToPassToGodot, ptrCallRet)

proc blendPoint10node(self: AnimationNodeBlendSpace2D): AnimationRootNode =
  if isNil(animationNodeBlendSpace2DGetBlendPointNodeMethodBind):
    animationNodeBlendSpace2DGetBlendPointNodeMethodBind = getMethod(
        cstring"AnimationNodeBlendSpace2D", cstring"get_blend_point_node")
  var
    godotBoundArg0 = 10'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  animationNodeBlendSpace2DGetBlendPointNodeMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

proc `blendPoint10node=`(self: AnimationNodeBlendSpace2D; val: AnimationRootNode) =
  if isNil(animationNodeBlendSpace2DUnderscoreaddBlendPointMethodBind):
    animationNodeBlendSpace2DUnderscoreaddBlendPointMethodBind = getMethod(
        cstring"AnimationNodeBlendSpace2D", cstring"_add_blend_point")
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
  animationNodeBlendSpace2DUnderscoreaddBlendPointMethodBind.ptrCall(
      self.godotObject, argsToPassToGodot, ptrCallRet)

proc blendPoint10pos(self: AnimationNodeBlendSpace2D): Vector2 =
  if isNil(animationNodeBlendSpace2DGetBlendPointPositionMethodBind):
    animationNodeBlendSpace2DGetBlendPointPositionMethodBind = getMethod(
        cstring"AnimationNodeBlendSpace2D", cstring"get_blend_point_position")
  var
    godotBoundArg0 = 10'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animationNodeBlendSpace2DGetBlendPointPositionMethodBind.ptrCall(
      self.godotObject, argsToPassToGodot, ptrCallRet)

proc `blendPoint10pos=`(self: AnimationNodeBlendSpace2D; val: Vector2) =
  if isNil(animationNodeBlendSpace2DSetBlendPointPositionMethodBind):
    animationNodeBlendSpace2DSetBlendPointPositionMethodBind = getMethod(
        cstring"AnimationNodeBlendSpace2D", cstring"set_blend_point_position")
  var
    godotBoundArg0 = 10'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  animationNodeBlendSpace2DSetBlendPointPositionMethodBind.ptrCall(
      self.godotObject, argsToPassToGodot, ptrCallRet)

proc blendPoint11node(self: AnimationNodeBlendSpace2D): AnimationRootNode =
  if isNil(animationNodeBlendSpace2DGetBlendPointNodeMethodBind):
    animationNodeBlendSpace2DGetBlendPointNodeMethodBind = getMethod(
        cstring"AnimationNodeBlendSpace2D", cstring"get_blend_point_node")
  var
    godotBoundArg0 = 11'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  animationNodeBlendSpace2DGetBlendPointNodeMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

proc `blendPoint11node=`(self: AnimationNodeBlendSpace2D; val: AnimationRootNode) =
  if isNil(animationNodeBlendSpace2DUnderscoreaddBlendPointMethodBind):
    animationNodeBlendSpace2DUnderscoreaddBlendPointMethodBind = getMethod(
        cstring"AnimationNodeBlendSpace2D", cstring"_add_blend_point")
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
  animationNodeBlendSpace2DUnderscoreaddBlendPointMethodBind.ptrCall(
      self.godotObject, argsToPassToGodot, ptrCallRet)

proc blendPoint11pos(self: AnimationNodeBlendSpace2D): Vector2 =
  if isNil(animationNodeBlendSpace2DGetBlendPointPositionMethodBind):
    animationNodeBlendSpace2DGetBlendPointPositionMethodBind = getMethod(
        cstring"AnimationNodeBlendSpace2D", cstring"get_blend_point_position")
  var
    godotBoundArg0 = 11'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animationNodeBlendSpace2DGetBlendPointPositionMethodBind.ptrCall(
      self.godotObject, argsToPassToGodot, ptrCallRet)

proc `blendPoint11pos=`(self: AnimationNodeBlendSpace2D; val: Vector2) =
  if isNil(animationNodeBlendSpace2DSetBlendPointPositionMethodBind):
    animationNodeBlendSpace2DSetBlendPointPositionMethodBind = getMethod(
        cstring"AnimationNodeBlendSpace2D", cstring"set_blend_point_position")
  var
    godotBoundArg0 = 11'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  animationNodeBlendSpace2DSetBlendPointPositionMethodBind.ptrCall(
      self.godotObject, argsToPassToGodot, ptrCallRet)

proc blendPoint12node(self: AnimationNodeBlendSpace2D): AnimationRootNode =
  if isNil(animationNodeBlendSpace2DGetBlendPointNodeMethodBind):
    animationNodeBlendSpace2DGetBlendPointNodeMethodBind = getMethod(
        cstring"AnimationNodeBlendSpace2D", cstring"get_blend_point_node")
  var
    godotBoundArg0 = 12'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  animationNodeBlendSpace2DGetBlendPointNodeMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

proc `blendPoint12node=`(self: AnimationNodeBlendSpace2D; val: AnimationRootNode) =
  if isNil(animationNodeBlendSpace2DUnderscoreaddBlendPointMethodBind):
    animationNodeBlendSpace2DUnderscoreaddBlendPointMethodBind = getMethod(
        cstring"AnimationNodeBlendSpace2D", cstring"_add_blend_point")
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
  animationNodeBlendSpace2DUnderscoreaddBlendPointMethodBind.ptrCall(
      self.godotObject, argsToPassToGodot, ptrCallRet)

proc blendPoint12pos(self: AnimationNodeBlendSpace2D): Vector2 =
  if isNil(animationNodeBlendSpace2DGetBlendPointPositionMethodBind):
    animationNodeBlendSpace2DGetBlendPointPositionMethodBind = getMethod(
        cstring"AnimationNodeBlendSpace2D", cstring"get_blend_point_position")
  var
    godotBoundArg0 = 12'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animationNodeBlendSpace2DGetBlendPointPositionMethodBind.ptrCall(
      self.godotObject, argsToPassToGodot, ptrCallRet)

proc `blendPoint12pos=`(self: AnimationNodeBlendSpace2D; val: Vector2) =
  if isNil(animationNodeBlendSpace2DSetBlendPointPositionMethodBind):
    animationNodeBlendSpace2DSetBlendPointPositionMethodBind = getMethod(
        cstring"AnimationNodeBlendSpace2D", cstring"set_blend_point_position")
  var
    godotBoundArg0 = 12'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  animationNodeBlendSpace2DSetBlendPointPositionMethodBind.ptrCall(
      self.godotObject, argsToPassToGodot, ptrCallRet)

proc blendPoint13node(self: AnimationNodeBlendSpace2D): AnimationRootNode =
  if isNil(animationNodeBlendSpace2DGetBlendPointNodeMethodBind):
    animationNodeBlendSpace2DGetBlendPointNodeMethodBind = getMethod(
        cstring"AnimationNodeBlendSpace2D", cstring"get_blend_point_node")
  var
    godotBoundArg0 = 13'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  animationNodeBlendSpace2DGetBlendPointNodeMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

proc `blendPoint13node=`(self: AnimationNodeBlendSpace2D; val: AnimationRootNode) =
  if isNil(animationNodeBlendSpace2DUnderscoreaddBlendPointMethodBind):
    animationNodeBlendSpace2DUnderscoreaddBlendPointMethodBind = getMethod(
        cstring"AnimationNodeBlendSpace2D", cstring"_add_blend_point")
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
  animationNodeBlendSpace2DUnderscoreaddBlendPointMethodBind.ptrCall(
      self.godotObject, argsToPassToGodot, ptrCallRet)

proc blendPoint13pos(self: AnimationNodeBlendSpace2D): Vector2 =
  if isNil(animationNodeBlendSpace2DGetBlendPointPositionMethodBind):
    animationNodeBlendSpace2DGetBlendPointPositionMethodBind = getMethod(
        cstring"AnimationNodeBlendSpace2D", cstring"get_blend_point_position")
  var
    godotBoundArg0 = 13'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animationNodeBlendSpace2DGetBlendPointPositionMethodBind.ptrCall(
      self.godotObject, argsToPassToGodot, ptrCallRet)

proc `blendPoint13pos=`(self: AnimationNodeBlendSpace2D; val: Vector2) =
  if isNil(animationNodeBlendSpace2DSetBlendPointPositionMethodBind):
    animationNodeBlendSpace2DSetBlendPointPositionMethodBind = getMethod(
        cstring"AnimationNodeBlendSpace2D", cstring"set_blend_point_position")
  var
    godotBoundArg0 = 13'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  animationNodeBlendSpace2DSetBlendPointPositionMethodBind.ptrCall(
      self.godotObject, argsToPassToGodot, ptrCallRet)

proc blendPoint14node(self: AnimationNodeBlendSpace2D): AnimationRootNode =
  if isNil(animationNodeBlendSpace2DGetBlendPointNodeMethodBind):
    animationNodeBlendSpace2DGetBlendPointNodeMethodBind = getMethod(
        cstring"AnimationNodeBlendSpace2D", cstring"get_blend_point_node")
  var
    godotBoundArg0 = 14'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  animationNodeBlendSpace2DGetBlendPointNodeMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

proc `blendPoint14node=`(self: AnimationNodeBlendSpace2D; val: AnimationRootNode) =
  if isNil(animationNodeBlendSpace2DUnderscoreaddBlendPointMethodBind):
    animationNodeBlendSpace2DUnderscoreaddBlendPointMethodBind = getMethod(
        cstring"AnimationNodeBlendSpace2D", cstring"_add_blend_point")
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
  animationNodeBlendSpace2DUnderscoreaddBlendPointMethodBind.ptrCall(
      self.godotObject, argsToPassToGodot, ptrCallRet)

proc blendPoint14pos(self: AnimationNodeBlendSpace2D): Vector2 =
  if isNil(animationNodeBlendSpace2DGetBlendPointPositionMethodBind):
    animationNodeBlendSpace2DGetBlendPointPositionMethodBind = getMethod(
        cstring"AnimationNodeBlendSpace2D", cstring"get_blend_point_position")
  var
    godotBoundArg0 = 14'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animationNodeBlendSpace2DGetBlendPointPositionMethodBind.ptrCall(
      self.godotObject, argsToPassToGodot, ptrCallRet)

proc `blendPoint14pos=`(self: AnimationNodeBlendSpace2D; val: Vector2) =
  if isNil(animationNodeBlendSpace2DSetBlendPointPositionMethodBind):
    animationNodeBlendSpace2DSetBlendPointPositionMethodBind = getMethod(
        cstring"AnimationNodeBlendSpace2D", cstring"set_blend_point_position")
  var
    godotBoundArg0 = 14'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  animationNodeBlendSpace2DSetBlendPointPositionMethodBind.ptrCall(
      self.godotObject, argsToPassToGodot, ptrCallRet)

proc blendPoint15node(self: AnimationNodeBlendSpace2D): AnimationRootNode =
  if isNil(animationNodeBlendSpace2DGetBlendPointNodeMethodBind):
    animationNodeBlendSpace2DGetBlendPointNodeMethodBind = getMethod(
        cstring"AnimationNodeBlendSpace2D", cstring"get_blend_point_node")
  var
    godotBoundArg0 = 15'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  animationNodeBlendSpace2DGetBlendPointNodeMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

proc `blendPoint15node=`(self: AnimationNodeBlendSpace2D; val: AnimationRootNode) =
  if isNil(animationNodeBlendSpace2DUnderscoreaddBlendPointMethodBind):
    animationNodeBlendSpace2DUnderscoreaddBlendPointMethodBind = getMethod(
        cstring"AnimationNodeBlendSpace2D", cstring"_add_blend_point")
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
  animationNodeBlendSpace2DUnderscoreaddBlendPointMethodBind.ptrCall(
      self.godotObject, argsToPassToGodot, ptrCallRet)

proc blendPoint15pos(self: AnimationNodeBlendSpace2D): Vector2 =
  if isNil(animationNodeBlendSpace2DGetBlendPointPositionMethodBind):
    animationNodeBlendSpace2DGetBlendPointPositionMethodBind = getMethod(
        cstring"AnimationNodeBlendSpace2D", cstring"get_blend_point_position")
  var
    godotBoundArg0 = 15'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animationNodeBlendSpace2DGetBlendPointPositionMethodBind.ptrCall(
      self.godotObject, argsToPassToGodot, ptrCallRet)

proc `blendPoint15pos=`(self: AnimationNodeBlendSpace2D; val: Vector2) =
  if isNil(animationNodeBlendSpace2DSetBlendPointPositionMethodBind):
    animationNodeBlendSpace2DSetBlendPointPositionMethodBind = getMethod(
        cstring"AnimationNodeBlendSpace2D", cstring"set_blend_point_position")
  var
    godotBoundArg0 = 15'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  animationNodeBlendSpace2DSetBlendPointPositionMethodBind.ptrCall(
      self.godotObject, argsToPassToGodot, ptrCallRet)

proc blendPoint16node(self: AnimationNodeBlendSpace2D): AnimationRootNode =
  if isNil(animationNodeBlendSpace2DGetBlendPointNodeMethodBind):
    animationNodeBlendSpace2DGetBlendPointNodeMethodBind = getMethod(
        cstring"AnimationNodeBlendSpace2D", cstring"get_blend_point_node")
  var
    godotBoundArg0 = 16'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  animationNodeBlendSpace2DGetBlendPointNodeMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

proc `blendPoint16node=`(self: AnimationNodeBlendSpace2D; val: AnimationRootNode) =
  if isNil(animationNodeBlendSpace2DUnderscoreaddBlendPointMethodBind):
    animationNodeBlendSpace2DUnderscoreaddBlendPointMethodBind = getMethod(
        cstring"AnimationNodeBlendSpace2D", cstring"_add_blend_point")
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
  animationNodeBlendSpace2DUnderscoreaddBlendPointMethodBind.ptrCall(
      self.godotObject, argsToPassToGodot, ptrCallRet)

proc blendPoint16pos(self: AnimationNodeBlendSpace2D): Vector2 =
  if isNil(animationNodeBlendSpace2DGetBlendPointPositionMethodBind):
    animationNodeBlendSpace2DGetBlendPointPositionMethodBind = getMethod(
        cstring"AnimationNodeBlendSpace2D", cstring"get_blend_point_position")
  var
    godotBoundArg0 = 16'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animationNodeBlendSpace2DGetBlendPointPositionMethodBind.ptrCall(
      self.godotObject, argsToPassToGodot, ptrCallRet)

proc `blendPoint16pos=`(self: AnimationNodeBlendSpace2D; val: Vector2) =
  if isNil(animationNodeBlendSpace2DSetBlendPointPositionMethodBind):
    animationNodeBlendSpace2DSetBlendPointPositionMethodBind = getMethod(
        cstring"AnimationNodeBlendSpace2D", cstring"set_blend_point_position")
  var
    godotBoundArg0 = 16'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  animationNodeBlendSpace2DSetBlendPointPositionMethodBind.ptrCall(
      self.godotObject, argsToPassToGodot, ptrCallRet)

proc blendPoint17node(self: AnimationNodeBlendSpace2D): AnimationRootNode =
  if isNil(animationNodeBlendSpace2DGetBlendPointNodeMethodBind):
    animationNodeBlendSpace2DGetBlendPointNodeMethodBind = getMethod(
        cstring"AnimationNodeBlendSpace2D", cstring"get_blend_point_node")
  var
    godotBoundArg0 = 17'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  animationNodeBlendSpace2DGetBlendPointNodeMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

proc `blendPoint17node=`(self: AnimationNodeBlendSpace2D; val: AnimationRootNode) =
  if isNil(animationNodeBlendSpace2DUnderscoreaddBlendPointMethodBind):
    animationNodeBlendSpace2DUnderscoreaddBlendPointMethodBind = getMethod(
        cstring"AnimationNodeBlendSpace2D", cstring"_add_blend_point")
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
  animationNodeBlendSpace2DUnderscoreaddBlendPointMethodBind.ptrCall(
      self.godotObject, argsToPassToGodot, ptrCallRet)

proc blendPoint17pos(self: AnimationNodeBlendSpace2D): Vector2 =
  if isNil(animationNodeBlendSpace2DGetBlendPointPositionMethodBind):
    animationNodeBlendSpace2DGetBlendPointPositionMethodBind = getMethod(
        cstring"AnimationNodeBlendSpace2D", cstring"get_blend_point_position")
  var
    godotBoundArg0 = 17'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animationNodeBlendSpace2DGetBlendPointPositionMethodBind.ptrCall(
      self.godotObject, argsToPassToGodot, ptrCallRet)

proc `blendPoint17pos=`(self: AnimationNodeBlendSpace2D; val: Vector2) =
  if isNil(animationNodeBlendSpace2DSetBlendPointPositionMethodBind):
    animationNodeBlendSpace2DSetBlendPointPositionMethodBind = getMethod(
        cstring"AnimationNodeBlendSpace2D", cstring"set_blend_point_position")
  var
    godotBoundArg0 = 17'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  animationNodeBlendSpace2DSetBlendPointPositionMethodBind.ptrCall(
      self.godotObject, argsToPassToGodot, ptrCallRet)

proc blendPoint18node(self: AnimationNodeBlendSpace2D): AnimationRootNode =
  if isNil(animationNodeBlendSpace2DGetBlendPointNodeMethodBind):
    animationNodeBlendSpace2DGetBlendPointNodeMethodBind = getMethod(
        cstring"AnimationNodeBlendSpace2D", cstring"get_blend_point_node")
  var
    godotBoundArg0 = 18'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  animationNodeBlendSpace2DGetBlendPointNodeMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

proc `blendPoint18node=`(self: AnimationNodeBlendSpace2D; val: AnimationRootNode) =
  if isNil(animationNodeBlendSpace2DUnderscoreaddBlendPointMethodBind):
    animationNodeBlendSpace2DUnderscoreaddBlendPointMethodBind = getMethod(
        cstring"AnimationNodeBlendSpace2D", cstring"_add_blend_point")
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
  animationNodeBlendSpace2DUnderscoreaddBlendPointMethodBind.ptrCall(
      self.godotObject, argsToPassToGodot, ptrCallRet)

proc blendPoint18pos(self: AnimationNodeBlendSpace2D): Vector2 =
  if isNil(animationNodeBlendSpace2DGetBlendPointPositionMethodBind):
    animationNodeBlendSpace2DGetBlendPointPositionMethodBind = getMethod(
        cstring"AnimationNodeBlendSpace2D", cstring"get_blend_point_position")
  var
    godotBoundArg0 = 18'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animationNodeBlendSpace2DGetBlendPointPositionMethodBind.ptrCall(
      self.godotObject, argsToPassToGodot, ptrCallRet)

proc `blendPoint18pos=`(self: AnimationNodeBlendSpace2D; val: Vector2) =
  if isNil(animationNodeBlendSpace2DSetBlendPointPositionMethodBind):
    animationNodeBlendSpace2DSetBlendPointPositionMethodBind = getMethod(
        cstring"AnimationNodeBlendSpace2D", cstring"set_blend_point_position")
  var
    godotBoundArg0 = 18'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  animationNodeBlendSpace2DSetBlendPointPositionMethodBind.ptrCall(
      self.godotObject, argsToPassToGodot, ptrCallRet)

proc blendPoint19node(self: AnimationNodeBlendSpace2D): AnimationRootNode =
  if isNil(animationNodeBlendSpace2DGetBlendPointNodeMethodBind):
    animationNodeBlendSpace2DGetBlendPointNodeMethodBind = getMethod(
        cstring"AnimationNodeBlendSpace2D", cstring"get_blend_point_node")
  var
    godotBoundArg0 = 19'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  animationNodeBlendSpace2DGetBlendPointNodeMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

proc `blendPoint19node=`(self: AnimationNodeBlendSpace2D; val: AnimationRootNode) =
  if isNil(animationNodeBlendSpace2DUnderscoreaddBlendPointMethodBind):
    animationNodeBlendSpace2DUnderscoreaddBlendPointMethodBind = getMethod(
        cstring"AnimationNodeBlendSpace2D", cstring"_add_blend_point")
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
  animationNodeBlendSpace2DUnderscoreaddBlendPointMethodBind.ptrCall(
      self.godotObject, argsToPassToGodot, ptrCallRet)

proc blendPoint19pos(self: AnimationNodeBlendSpace2D): Vector2 =
  if isNil(animationNodeBlendSpace2DGetBlendPointPositionMethodBind):
    animationNodeBlendSpace2DGetBlendPointPositionMethodBind = getMethod(
        cstring"AnimationNodeBlendSpace2D", cstring"get_blend_point_position")
  var
    godotBoundArg0 = 19'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animationNodeBlendSpace2DGetBlendPointPositionMethodBind.ptrCall(
      self.godotObject, argsToPassToGodot, ptrCallRet)

proc `blendPoint19pos=`(self: AnimationNodeBlendSpace2D; val: Vector2) =
  if isNil(animationNodeBlendSpace2DSetBlendPointPositionMethodBind):
    animationNodeBlendSpace2DSetBlendPointPositionMethodBind = getMethod(
        cstring"AnimationNodeBlendSpace2D", cstring"set_blend_point_position")
  var
    godotBoundArg0 = 19'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  animationNodeBlendSpace2DSetBlendPointPositionMethodBind.ptrCall(
      self.godotObject, argsToPassToGodot, ptrCallRet)

proc blendPoint2node(self: AnimationNodeBlendSpace2D): AnimationRootNode =
  if isNil(animationNodeBlendSpace2DGetBlendPointNodeMethodBind):
    animationNodeBlendSpace2DGetBlendPointNodeMethodBind = getMethod(
        cstring"AnimationNodeBlendSpace2D", cstring"get_blend_point_node")
  var
    godotBoundArg0 = 2'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  animationNodeBlendSpace2DGetBlendPointNodeMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

proc `blendPoint2node=`(self: AnimationNodeBlendSpace2D; val: AnimationRootNode) =
  if isNil(animationNodeBlendSpace2DUnderscoreaddBlendPointMethodBind):
    animationNodeBlendSpace2DUnderscoreaddBlendPointMethodBind = getMethod(
        cstring"AnimationNodeBlendSpace2D", cstring"_add_blend_point")
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
  animationNodeBlendSpace2DUnderscoreaddBlendPointMethodBind.ptrCall(
      self.godotObject, argsToPassToGodot, ptrCallRet)

proc blendPoint2pos(self: AnimationNodeBlendSpace2D): Vector2 =
  if isNil(animationNodeBlendSpace2DGetBlendPointPositionMethodBind):
    animationNodeBlendSpace2DGetBlendPointPositionMethodBind = getMethod(
        cstring"AnimationNodeBlendSpace2D", cstring"get_blend_point_position")
  var
    godotBoundArg0 = 2'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animationNodeBlendSpace2DGetBlendPointPositionMethodBind.ptrCall(
      self.godotObject, argsToPassToGodot, ptrCallRet)

proc `blendPoint2pos=`(self: AnimationNodeBlendSpace2D; val: Vector2) =
  if isNil(animationNodeBlendSpace2DSetBlendPointPositionMethodBind):
    animationNodeBlendSpace2DSetBlendPointPositionMethodBind = getMethod(
        cstring"AnimationNodeBlendSpace2D", cstring"set_blend_point_position")
  var
    godotBoundArg0 = 2'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  animationNodeBlendSpace2DSetBlendPointPositionMethodBind.ptrCall(
      self.godotObject, argsToPassToGodot, ptrCallRet)

proc blendPoint20node(self: AnimationNodeBlendSpace2D): AnimationRootNode =
  if isNil(animationNodeBlendSpace2DGetBlendPointNodeMethodBind):
    animationNodeBlendSpace2DGetBlendPointNodeMethodBind = getMethod(
        cstring"AnimationNodeBlendSpace2D", cstring"get_blend_point_node")
  var
    godotBoundArg0 = 20'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  animationNodeBlendSpace2DGetBlendPointNodeMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

proc `blendPoint20node=`(self: AnimationNodeBlendSpace2D; val: AnimationRootNode) =
  if isNil(animationNodeBlendSpace2DUnderscoreaddBlendPointMethodBind):
    animationNodeBlendSpace2DUnderscoreaddBlendPointMethodBind = getMethod(
        cstring"AnimationNodeBlendSpace2D", cstring"_add_blend_point")
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
  animationNodeBlendSpace2DUnderscoreaddBlendPointMethodBind.ptrCall(
      self.godotObject, argsToPassToGodot, ptrCallRet)

proc blendPoint20pos(self: AnimationNodeBlendSpace2D): Vector2 =
  if isNil(animationNodeBlendSpace2DGetBlendPointPositionMethodBind):
    animationNodeBlendSpace2DGetBlendPointPositionMethodBind = getMethod(
        cstring"AnimationNodeBlendSpace2D", cstring"get_blend_point_position")
  var
    godotBoundArg0 = 20'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animationNodeBlendSpace2DGetBlendPointPositionMethodBind.ptrCall(
      self.godotObject, argsToPassToGodot, ptrCallRet)

proc `blendPoint20pos=`(self: AnimationNodeBlendSpace2D; val: Vector2) =
  if isNil(animationNodeBlendSpace2DSetBlendPointPositionMethodBind):
    animationNodeBlendSpace2DSetBlendPointPositionMethodBind = getMethod(
        cstring"AnimationNodeBlendSpace2D", cstring"set_blend_point_position")
  var
    godotBoundArg0 = 20'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  animationNodeBlendSpace2DSetBlendPointPositionMethodBind.ptrCall(
      self.godotObject, argsToPassToGodot, ptrCallRet)

proc blendPoint21node(self: AnimationNodeBlendSpace2D): AnimationRootNode =
  if isNil(animationNodeBlendSpace2DGetBlendPointNodeMethodBind):
    animationNodeBlendSpace2DGetBlendPointNodeMethodBind = getMethod(
        cstring"AnimationNodeBlendSpace2D", cstring"get_blend_point_node")
  var
    godotBoundArg0 = 21'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  animationNodeBlendSpace2DGetBlendPointNodeMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

proc `blendPoint21node=`(self: AnimationNodeBlendSpace2D; val: AnimationRootNode) =
  if isNil(animationNodeBlendSpace2DUnderscoreaddBlendPointMethodBind):
    animationNodeBlendSpace2DUnderscoreaddBlendPointMethodBind = getMethod(
        cstring"AnimationNodeBlendSpace2D", cstring"_add_blend_point")
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
  animationNodeBlendSpace2DUnderscoreaddBlendPointMethodBind.ptrCall(
      self.godotObject, argsToPassToGodot, ptrCallRet)

proc blendPoint21pos(self: AnimationNodeBlendSpace2D): Vector2 =
  if isNil(animationNodeBlendSpace2DGetBlendPointPositionMethodBind):
    animationNodeBlendSpace2DGetBlendPointPositionMethodBind = getMethod(
        cstring"AnimationNodeBlendSpace2D", cstring"get_blend_point_position")
  var
    godotBoundArg0 = 21'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animationNodeBlendSpace2DGetBlendPointPositionMethodBind.ptrCall(
      self.godotObject, argsToPassToGodot, ptrCallRet)

proc `blendPoint21pos=`(self: AnimationNodeBlendSpace2D; val: Vector2) =
  if isNil(animationNodeBlendSpace2DSetBlendPointPositionMethodBind):
    animationNodeBlendSpace2DSetBlendPointPositionMethodBind = getMethod(
        cstring"AnimationNodeBlendSpace2D", cstring"set_blend_point_position")
  var
    godotBoundArg0 = 21'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  animationNodeBlendSpace2DSetBlendPointPositionMethodBind.ptrCall(
      self.godotObject, argsToPassToGodot, ptrCallRet)

proc blendPoint22node(self: AnimationNodeBlendSpace2D): AnimationRootNode =
  if isNil(animationNodeBlendSpace2DGetBlendPointNodeMethodBind):
    animationNodeBlendSpace2DGetBlendPointNodeMethodBind = getMethod(
        cstring"AnimationNodeBlendSpace2D", cstring"get_blend_point_node")
  var
    godotBoundArg0 = 22'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  animationNodeBlendSpace2DGetBlendPointNodeMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

proc `blendPoint22node=`(self: AnimationNodeBlendSpace2D; val: AnimationRootNode) =
  if isNil(animationNodeBlendSpace2DUnderscoreaddBlendPointMethodBind):
    animationNodeBlendSpace2DUnderscoreaddBlendPointMethodBind = getMethod(
        cstring"AnimationNodeBlendSpace2D", cstring"_add_blend_point")
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
  animationNodeBlendSpace2DUnderscoreaddBlendPointMethodBind.ptrCall(
      self.godotObject, argsToPassToGodot, ptrCallRet)

proc blendPoint22pos(self: AnimationNodeBlendSpace2D): Vector2 =
  if isNil(animationNodeBlendSpace2DGetBlendPointPositionMethodBind):
    animationNodeBlendSpace2DGetBlendPointPositionMethodBind = getMethod(
        cstring"AnimationNodeBlendSpace2D", cstring"get_blend_point_position")
  var
    godotBoundArg0 = 22'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animationNodeBlendSpace2DGetBlendPointPositionMethodBind.ptrCall(
      self.godotObject, argsToPassToGodot, ptrCallRet)

proc `blendPoint22pos=`(self: AnimationNodeBlendSpace2D; val: Vector2) =
  if isNil(animationNodeBlendSpace2DSetBlendPointPositionMethodBind):
    animationNodeBlendSpace2DSetBlendPointPositionMethodBind = getMethod(
        cstring"AnimationNodeBlendSpace2D", cstring"set_blend_point_position")
  var
    godotBoundArg0 = 22'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  animationNodeBlendSpace2DSetBlendPointPositionMethodBind.ptrCall(
      self.godotObject, argsToPassToGodot, ptrCallRet)

proc blendPoint23node(self: AnimationNodeBlendSpace2D): AnimationRootNode =
  if isNil(animationNodeBlendSpace2DGetBlendPointNodeMethodBind):
    animationNodeBlendSpace2DGetBlendPointNodeMethodBind = getMethod(
        cstring"AnimationNodeBlendSpace2D", cstring"get_blend_point_node")
  var
    godotBoundArg0 = 23'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  animationNodeBlendSpace2DGetBlendPointNodeMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

proc `blendPoint23node=`(self: AnimationNodeBlendSpace2D; val: AnimationRootNode) =
  if isNil(animationNodeBlendSpace2DUnderscoreaddBlendPointMethodBind):
    animationNodeBlendSpace2DUnderscoreaddBlendPointMethodBind = getMethod(
        cstring"AnimationNodeBlendSpace2D", cstring"_add_blend_point")
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
  animationNodeBlendSpace2DUnderscoreaddBlendPointMethodBind.ptrCall(
      self.godotObject, argsToPassToGodot, ptrCallRet)

proc blendPoint23pos(self: AnimationNodeBlendSpace2D): Vector2 =
  if isNil(animationNodeBlendSpace2DGetBlendPointPositionMethodBind):
    animationNodeBlendSpace2DGetBlendPointPositionMethodBind = getMethod(
        cstring"AnimationNodeBlendSpace2D", cstring"get_blend_point_position")
  var
    godotBoundArg0 = 23'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animationNodeBlendSpace2DGetBlendPointPositionMethodBind.ptrCall(
      self.godotObject, argsToPassToGodot, ptrCallRet)

proc `blendPoint23pos=`(self: AnimationNodeBlendSpace2D; val: Vector2) =
  if isNil(animationNodeBlendSpace2DSetBlendPointPositionMethodBind):
    animationNodeBlendSpace2DSetBlendPointPositionMethodBind = getMethod(
        cstring"AnimationNodeBlendSpace2D", cstring"set_blend_point_position")
  var
    godotBoundArg0 = 23'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  animationNodeBlendSpace2DSetBlendPointPositionMethodBind.ptrCall(
      self.godotObject, argsToPassToGodot, ptrCallRet)

proc blendPoint24node(self: AnimationNodeBlendSpace2D): AnimationRootNode =
  if isNil(animationNodeBlendSpace2DGetBlendPointNodeMethodBind):
    animationNodeBlendSpace2DGetBlendPointNodeMethodBind = getMethod(
        cstring"AnimationNodeBlendSpace2D", cstring"get_blend_point_node")
  var
    godotBoundArg0 = 24'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  animationNodeBlendSpace2DGetBlendPointNodeMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

proc `blendPoint24node=`(self: AnimationNodeBlendSpace2D; val: AnimationRootNode) =
  if isNil(animationNodeBlendSpace2DUnderscoreaddBlendPointMethodBind):
    animationNodeBlendSpace2DUnderscoreaddBlendPointMethodBind = getMethod(
        cstring"AnimationNodeBlendSpace2D", cstring"_add_blend_point")
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
  animationNodeBlendSpace2DUnderscoreaddBlendPointMethodBind.ptrCall(
      self.godotObject, argsToPassToGodot, ptrCallRet)

proc blendPoint24pos(self: AnimationNodeBlendSpace2D): Vector2 =
  if isNil(animationNodeBlendSpace2DGetBlendPointPositionMethodBind):
    animationNodeBlendSpace2DGetBlendPointPositionMethodBind = getMethod(
        cstring"AnimationNodeBlendSpace2D", cstring"get_blend_point_position")
  var
    godotBoundArg0 = 24'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animationNodeBlendSpace2DGetBlendPointPositionMethodBind.ptrCall(
      self.godotObject, argsToPassToGodot, ptrCallRet)

proc `blendPoint24pos=`(self: AnimationNodeBlendSpace2D; val: Vector2) =
  if isNil(animationNodeBlendSpace2DSetBlendPointPositionMethodBind):
    animationNodeBlendSpace2DSetBlendPointPositionMethodBind = getMethod(
        cstring"AnimationNodeBlendSpace2D", cstring"set_blend_point_position")
  var
    godotBoundArg0 = 24'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  animationNodeBlendSpace2DSetBlendPointPositionMethodBind.ptrCall(
      self.godotObject, argsToPassToGodot, ptrCallRet)

proc blendPoint25node(self: AnimationNodeBlendSpace2D): AnimationRootNode =
  if isNil(animationNodeBlendSpace2DGetBlendPointNodeMethodBind):
    animationNodeBlendSpace2DGetBlendPointNodeMethodBind = getMethod(
        cstring"AnimationNodeBlendSpace2D", cstring"get_blend_point_node")
  var
    godotBoundArg0 = 25'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  animationNodeBlendSpace2DGetBlendPointNodeMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

proc `blendPoint25node=`(self: AnimationNodeBlendSpace2D; val: AnimationRootNode) =
  if isNil(animationNodeBlendSpace2DUnderscoreaddBlendPointMethodBind):
    animationNodeBlendSpace2DUnderscoreaddBlendPointMethodBind = getMethod(
        cstring"AnimationNodeBlendSpace2D", cstring"_add_blend_point")
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
  animationNodeBlendSpace2DUnderscoreaddBlendPointMethodBind.ptrCall(
      self.godotObject, argsToPassToGodot, ptrCallRet)

proc blendPoint25pos(self: AnimationNodeBlendSpace2D): Vector2 =
  if isNil(animationNodeBlendSpace2DGetBlendPointPositionMethodBind):
    animationNodeBlendSpace2DGetBlendPointPositionMethodBind = getMethod(
        cstring"AnimationNodeBlendSpace2D", cstring"get_blend_point_position")
  var
    godotBoundArg0 = 25'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animationNodeBlendSpace2DGetBlendPointPositionMethodBind.ptrCall(
      self.godotObject, argsToPassToGodot, ptrCallRet)

proc `blendPoint25pos=`(self: AnimationNodeBlendSpace2D; val: Vector2) =
  if isNil(animationNodeBlendSpace2DSetBlendPointPositionMethodBind):
    animationNodeBlendSpace2DSetBlendPointPositionMethodBind = getMethod(
        cstring"AnimationNodeBlendSpace2D", cstring"set_blend_point_position")
  var
    godotBoundArg0 = 25'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  animationNodeBlendSpace2DSetBlendPointPositionMethodBind.ptrCall(
      self.godotObject, argsToPassToGodot, ptrCallRet)

proc blendPoint26node(self: AnimationNodeBlendSpace2D): AnimationRootNode =
  if isNil(animationNodeBlendSpace2DGetBlendPointNodeMethodBind):
    animationNodeBlendSpace2DGetBlendPointNodeMethodBind = getMethod(
        cstring"AnimationNodeBlendSpace2D", cstring"get_blend_point_node")
  var
    godotBoundArg0 = 26'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  animationNodeBlendSpace2DGetBlendPointNodeMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

proc `blendPoint26node=`(self: AnimationNodeBlendSpace2D; val: AnimationRootNode) =
  if isNil(animationNodeBlendSpace2DUnderscoreaddBlendPointMethodBind):
    animationNodeBlendSpace2DUnderscoreaddBlendPointMethodBind = getMethod(
        cstring"AnimationNodeBlendSpace2D", cstring"_add_blend_point")
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
  animationNodeBlendSpace2DUnderscoreaddBlendPointMethodBind.ptrCall(
      self.godotObject, argsToPassToGodot, ptrCallRet)

proc blendPoint26pos(self: AnimationNodeBlendSpace2D): Vector2 =
  if isNil(animationNodeBlendSpace2DGetBlendPointPositionMethodBind):
    animationNodeBlendSpace2DGetBlendPointPositionMethodBind = getMethod(
        cstring"AnimationNodeBlendSpace2D", cstring"get_blend_point_position")
  var
    godotBoundArg0 = 26'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animationNodeBlendSpace2DGetBlendPointPositionMethodBind.ptrCall(
      self.godotObject, argsToPassToGodot, ptrCallRet)

proc `blendPoint26pos=`(self: AnimationNodeBlendSpace2D; val: Vector2) =
  if isNil(animationNodeBlendSpace2DSetBlendPointPositionMethodBind):
    animationNodeBlendSpace2DSetBlendPointPositionMethodBind = getMethod(
        cstring"AnimationNodeBlendSpace2D", cstring"set_blend_point_position")
  var
    godotBoundArg0 = 26'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  animationNodeBlendSpace2DSetBlendPointPositionMethodBind.ptrCall(
      self.godotObject, argsToPassToGodot, ptrCallRet)

proc blendPoint27node(self: AnimationNodeBlendSpace2D): AnimationRootNode =
  if isNil(animationNodeBlendSpace2DGetBlendPointNodeMethodBind):
    animationNodeBlendSpace2DGetBlendPointNodeMethodBind = getMethod(
        cstring"AnimationNodeBlendSpace2D", cstring"get_blend_point_node")
  var
    godotBoundArg0 = 27'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  animationNodeBlendSpace2DGetBlendPointNodeMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

proc `blendPoint27node=`(self: AnimationNodeBlendSpace2D; val: AnimationRootNode) =
  if isNil(animationNodeBlendSpace2DUnderscoreaddBlendPointMethodBind):
    animationNodeBlendSpace2DUnderscoreaddBlendPointMethodBind = getMethod(
        cstring"AnimationNodeBlendSpace2D", cstring"_add_blend_point")
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
  animationNodeBlendSpace2DUnderscoreaddBlendPointMethodBind.ptrCall(
      self.godotObject, argsToPassToGodot, ptrCallRet)

proc blendPoint27pos(self: AnimationNodeBlendSpace2D): Vector2 =
  if isNil(animationNodeBlendSpace2DGetBlendPointPositionMethodBind):
    animationNodeBlendSpace2DGetBlendPointPositionMethodBind = getMethod(
        cstring"AnimationNodeBlendSpace2D", cstring"get_blend_point_position")
  var
    godotBoundArg0 = 27'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animationNodeBlendSpace2DGetBlendPointPositionMethodBind.ptrCall(
      self.godotObject, argsToPassToGodot, ptrCallRet)

proc `blendPoint27pos=`(self: AnimationNodeBlendSpace2D; val: Vector2) =
  if isNil(animationNodeBlendSpace2DSetBlendPointPositionMethodBind):
    animationNodeBlendSpace2DSetBlendPointPositionMethodBind = getMethod(
        cstring"AnimationNodeBlendSpace2D", cstring"set_blend_point_position")
  var
    godotBoundArg0 = 27'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  animationNodeBlendSpace2DSetBlendPointPositionMethodBind.ptrCall(
      self.godotObject, argsToPassToGodot, ptrCallRet)

proc blendPoint28node(self: AnimationNodeBlendSpace2D): AnimationRootNode =
  if isNil(animationNodeBlendSpace2DGetBlendPointNodeMethodBind):
    animationNodeBlendSpace2DGetBlendPointNodeMethodBind = getMethod(
        cstring"AnimationNodeBlendSpace2D", cstring"get_blend_point_node")
  var
    godotBoundArg0 = 28'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  animationNodeBlendSpace2DGetBlendPointNodeMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

proc `blendPoint28node=`(self: AnimationNodeBlendSpace2D; val: AnimationRootNode) =
  if isNil(animationNodeBlendSpace2DUnderscoreaddBlendPointMethodBind):
    animationNodeBlendSpace2DUnderscoreaddBlendPointMethodBind = getMethod(
        cstring"AnimationNodeBlendSpace2D", cstring"_add_blend_point")
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
  animationNodeBlendSpace2DUnderscoreaddBlendPointMethodBind.ptrCall(
      self.godotObject, argsToPassToGodot, ptrCallRet)

proc blendPoint28pos(self: AnimationNodeBlendSpace2D): Vector2 =
  if isNil(animationNodeBlendSpace2DGetBlendPointPositionMethodBind):
    animationNodeBlendSpace2DGetBlendPointPositionMethodBind = getMethod(
        cstring"AnimationNodeBlendSpace2D", cstring"get_blend_point_position")
  var
    godotBoundArg0 = 28'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animationNodeBlendSpace2DGetBlendPointPositionMethodBind.ptrCall(
      self.godotObject, argsToPassToGodot, ptrCallRet)

proc `blendPoint28pos=`(self: AnimationNodeBlendSpace2D; val: Vector2) =
  if isNil(animationNodeBlendSpace2DSetBlendPointPositionMethodBind):
    animationNodeBlendSpace2DSetBlendPointPositionMethodBind = getMethod(
        cstring"AnimationNodeBlendSpace2D", cstring"set_blend_point_position")
  var
    godotBoundArg0 = 28'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  animationNodeBlendSpace2DSetBlendPointPositionMethodBind.ptrCall(
      self.godotObject, argsToPassToGodot, ptrCallRet)

proc blendPoint29node(self: AnimationNodeBlendSpace2D): AnimationRootNode =
  if isNil(animationNodeBlendSpace2DGetBlendPointNodeMethodBind):
    animationNodeBlendSpace2DGetBlendPointNodeMethodBind = getMethod(
        cstring"AnimationNodeBlendSpace2D", cstring"get_blend_point_node")
  var
    godotBoundArg0 = 29'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  animationNodeBlendSpace2DGetBlendPointNodeMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

proc `blendPoint29node=`(self: AnimationNodeBlendSpace2D; val: AnimationRootNode) =
  if isNil(animationNodeBlendSpace2DUnderscoreaddBlendPointMethodBind):
    animationNodeBlendSpace2DUnderscoreaddBlendPointMethodBind = getMethod(
        cstring"AnimationNodeBlendSpace2D", cstring"_add_blend_point")
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
  animationNodeBlendSpace2DUnderscoreaddBlendPointMethodBind.ptrCall(
      self.godotObject, argsToPassToGodot, ptrCallRet)

proc blendPoint29pos(self: AnimationNodeBlendSpace2D): Vector2 =
  if isNil(animationNodeBlendSpace2DGetBlendPointPositionMethodBind):
    animationNodeBlendSpace2DGetBlendPointPositionMethodBind = getMethod(
        cstring"AnimationNodeBlendSpace2D", cstring"get_blend_point_position")
  var
    godotBoundArg0 = 29'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animationNodeBlendSpace2DGetBlendPointPositionMethodBind.ptrCall(
      self.godotObject, argsToPassToGodot, ptrCallRet)

proc `blendPoint29pos=`(self: AnimationNodeBlendSpace2D; val: Vector2) =
  if isNil(animationNodeBlendSpace2DSetBlendPointPositionMethodBind):
    animationNodeBlendSpace2DSetBlendPointPositionMethodBind = getMethod(
        cstring"AnimationNodeBlendSpace2D", cstring"set_blend_point_position")
  var
    godotBoundArg0 = 29'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  animationNodeBlendSpace2DSetBlendPointPositionMethodBind.ptrCall(
      self.godotObject, argsToPassToGodot, ptrCallRet)

proc blendPoint3node(self: AnimationNodeBlendSpace2D): AnimationRootNode =
  if isNil(animationNodeBlendSpace2DGetBlendPointNodeMethodBind):
    animationNodeBlendSpace2DGetBlendPointNodeMethodBind = getMethod(
        cstring"AnimationNodeBlendSpace2D", cstring"get_blend_point_node")
  var
    godotBoundArg0 = 3'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  animationNodeBlendSpace2DGetBlendPointNodeMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

proc `blendPoint3node=`(self: AnimationNodeBlendSpace2D; val: AnimationRootNode) =
  if isNil(animationNodeBlendSpace2DUnderscoreaddBlendPointMethodBind):
    animationNodeBlendSpace2DUnderscoreaddBlendPointMethodBind = getMethod(
        cstring"AnimationNodeBlendSpace2D", cstring"_add_blend_point")
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
  animationNodeBlendSpace2DUnderscoreaddBlendPointMethodBind.ptrCall(
      self.godotObject, argsToPassToGodot, ptrCallRet)

proc blendPoint3pos(self: AnimationNodeBlendSpace2D): Vector2 =
  if isNil(animationNodeBlendSpace2DGetBlendPointPositionMethodBind):
    animationNodeBlendSpace2DGetBlendPointPositionMethodBind = getMethod(
        cstring"AnimationNodeBlendSpace2D", cstring"get_blend_point_position")
  var
    godotBoundArg0 = 3'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animationNodeBlendSpace2DGetBlendPointPositionMethodBind.ptrCall(
      self.godotObject, argsToPassToGodot, ptrCallRet)

proc `blendPoint3pos=`(self: AnimationNodeBlendSpace2D; val: Vector2) =
  if isNil(animationNodeBlendSpace2DSetBlendPointPositionMethodBind):
    animationNodeBlendSpace2DSetBlendPointPositionMethodBind = getMethod(
        cstring"AnimationNodeBlendSpace2D", cstring"set_blend_point_position")
  var
    godotBoundArg0 = 3'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  animationNodeBlendSpace2DSetBlendPointPositionMethodBind.ptrCall(
      self.godotObject, argsToPassToGodot, ptrCallRet)

proc blendPoint30node(self: AnimationNodeBlendSpace2D): AnimationRootNode =
  if isNil(animationNodeBlendSpace2DGetBlendPointNodeMethodBind):
    animationNodeBlendSpace2DGetBlendPointNodeMethodBind = getMethod(
        cstring"AnimationNodeBlendSpace2D", cstring"get_blend_point_node")
  var
    godotBoundArg0 = 30'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  animationNodeBlendSpace2DGetBlendPointNodeMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

proc `blendPoint30node=`(self: AnimationNodeBlendSpace2D; val: AnimationRootNode) =
  if isNil(animationNodeBlendSpace2DUnderscoreaddBlendPointMethodBind):
    animationNodeBlendSpace2DUnderscoreaddBlendPointMethodBind = getMethod(
        cstring"AnimationNodeBlendSpace2D", cstring"_add_blend_point")
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
  animationNodeBlendSpace2DUnderscoreaddBlendPointMethodBind.ptrCall(
      self.godotObject, argsToPassToGodot, ptrCallRet)

proc blendPoint30pos(self: AnimationNodeBlendSpace2D): Vector2 =
  if isNil(animationNodeBlendSpace2DGetBlendPointPositionMethodBind):
    animationNodeBlendSpace2DGetBlendPointPositionMethodBind = getMethod(
        cstring"AnimationNodeBlendSpace2D", cstring"get_blend_point_position")
  var
    godotBoundArg0 = 30'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animationNodeBlendSpace2DGetBlendPointPositionMethodBind.ptrCall(
      self.godotObject, argsToPassToGodot, ptrCallRet)

proc `blendPoint30pos=`(self: AnimationNodeBlendSpace2D; val: Vector2) =
  if isNil(animationNodeBlendSpace2DSetBlendPointPositionMethodBind):
    animationNodeBlendSpace2DSetBlendPointPositionMethodBind = getMethod(
        cstring"AnimationNodeBlendSpace2D", cstring"set_blend_point_position")
  var
    godotBoundArg0 = 30'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  animationNodeBlendSpace2DSetBlendPointPositionMethodBind.ptrCall(
      self.godotObject, argsToPassToGodot, ptrCallRet)

proc blendPoint31node(self: AnimationNodeBlendSpace2D): AnimationRootNode =
  if isNil(animationNodeBlendSpace2DGetBlendPointNodeMethodBind):
    animationNodeBlendSpace2DGetBlendPointNodeMethodBind = getMethod(
        cstring"AnimationNodeBlendSpace2D", cstring"get_blend_point_node")
  var
    godotBoundArg0 = 31'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  animationNodeBlendSpace2DGetBlendPointNodeMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

proc `blendPoint31node=`(self: AnimationNodeBlendSpace2D; val: AnimationRootNode) =
  if isNil(animationNodeBlendSpace2DUnderscoreaddBlendPointMethodBind):
    animationNodeBlendSpace2DUnderscoreaddBlendPointMethodBind = getMethod(
        cstring"AnimationNodeBlendSpace2D", cstring"_add_blend_point")
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
  animationNodeBlendSpace2DUnderscoreaddBlendPointMethodBind.ptrCall(
      self.godotObject, argsToPassToGodot, ptrCallRet)

proc blendPoint31pos(self: AnimationNodeBlendSpace2D): Vector2 =
  if isNil(animationNodeBlendSpace2DGetBlendPointPositionMethodBind):
    animationNodeBlendSpace2DGetBlendPointPositionMethodBind = getMethod(
        cstring"AnimationNodeBlendSpace2D", cstring"get_blend_point_position")
  var
    godotBoundArg0 = 31'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animationNodeBlendSpace2DGetBlendPointPositionMethodBind.ptrCall(
      self.godotObject, argsToPassToGodot, ptrCallRet)

proc `blendPoint31pos=`(self: AnimationNodeBlendSpace2D; val: Vector2) =
  if isNil(animationNodeBlendSpace2DSetBlendPointPositionMethodBind):
    animationNodeBlendSpace2DSetBlendPointPositionMethodBind = getMethod(
        cstring"AnimationNodeBlendSpace2D", cstring"set_blend_point_position")
  var
    godotBoundArg0 = 31'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  animationNodeBlendSpace2DSetBlendPointPositionMethodBind.ptrCall(
      self.godotObject, argsToPassToGodot, ptrCallRet)

proc blendPoint32node(self: AnimationNodeBlendSpace2D): AnimationRootNode =
  if isNil(animationNodeBlendSpace2DGetBlendPointNodeMethodBind):
    animationNodeBlendSpace2DGetBlendPointNodeMethodBind = getMethod(
        cstring"AnimationNodeBlendSpace2D", cstring"get_blend_point_node")
  var
    godotBoundArg0 = 32'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  animationNodeBlendSpace2DGetBlendPointNodeMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

proc `blendPoint32node=`(self: AnimationNodeBlendSpace2D; val: AnimationRootNode) =
  if isNil(animationNodeBlendSpace2DUnderscoreaddBlendPointMethodBind):
    animationNodeBlendSpace2DUnderscoreaddBlendPointMethodBind = getMethod(
        cstring"AnimationNodeBlendSpace2D", cstring"_add_blend_point")
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
  animationNodeBlendSpace2DUnderscoreaddBlendPointMethodBind.ptrCall(
      self.godotObject, argsToPassToGodot, ptrCallRet)

proc blendPoint32pos(self: AnimationNodeBlendSpace2D): Vector2 =
  if isNil(animationNodeBlendSpace2DGetBlendPointPositionMethodBind):
    animationNodeBlendSpace2DGetBlendPointPositionMethodBind = getMethod(
        cstring"AnimationNodeBlendSpace2D", cstring"get_blend_point_position")
  var
    godotBoundArg0 = 32'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animationNodeBlendSpace2DGetBlendPointPositionMethodBind.ptrCall(
      self.godotObject, argsToPassToGodot, ptrCallRet)

proc `blendPoint32pos=`(self: AnimationNodeBlendSpace2D; val: Vector2) =
  if isNil(animationNodeBlendSpace2DSetBlendPointPositionMethodBind):
    animationNodeBlendSpace2DSetBlendPointPositionMethodBind = getMethod(
        cstring"AnimationNodeBlendSpace2D", cstring"set_blend_point_position")
  var
    godotBoundArg0 = 32'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  animationNodeBlendSpace2DSetBlendPointPositionMethodBind.ptrCall(
      self.godotObject, argsToPassToGodot, ptrCallRet)

proc blendPoint33node(self: AnimationNodeBlendSpace2D): AnimationRootNode =
  if isNil(animationNodeBlendSpace2DGetBlendPointNodeMethodBind):
    animationNodeBlendSpace2DGetBlendPointNodeMethodBind = getMethod(
        cstring"AnimationNodeBlendSpace2D", cstring"get_blend_point_node")
  var
    godotBoundArg0 = 33'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  animationNodeBlendSpace2DGetBlendPointNodeMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

proc `blendPoint33node=`(self: AnimationNodeBlendSpace2D; val: AnimationRootNode) =
  if isNil(animationNodeBlendSpace2DUnderscoreaddBlendPointMethodBind):
    animationNodeBlendSpace2DUnderscoreaddBlendPointMethodBind = getMethod(
        cstring"AnimationNodeBlendSpace2D", cstring"_add_blend_point")
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
  animationNodeBlendSpace2DUnderscoreaddBlendPointMethodBind.ptrCall(
      self.godotObject, argsToPassToGodot, ptrCallRet)

proc blendPoint33pos(self: AnimationNodeBlendSpace2D): Vector2 =
  if isNil(animationNodeBlendSpace2DGetBlendPointPositionMethodBind):
    animationNodeBlendSpace2DGetBlendPointPositionMethodBind = getMethod(
        cstring"AnimationNodeBlendSpace2D", cstring"get_blend_point_position")
  var
    godotBoundArg0 = 33'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animationNodeBlendSpace2DGetBlendPointPositionMethodBind.ptrCall(
      self.godotObject, argsToPassToGodot, ptrCallRet)

proc `blendPoint33pos=`(self: AnimationNodeBlendSpace2D; val: Vector2) =
  if isNil(animationNodeBlendSpace2DSetBlendPointPositionMethodBind):
    animationNodeBlendSpace2DSetBlendPointPositionMethodBind = getMethod(
        cstring"AnimationNodeBlendSpace2D", cstring"set_blend_point_position")
  var
    godotBoundArg0 = 33'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  animationNodeBlendSpace2DSetBlendPointPositionMethodBind.ptrCall(
      self.godotObject, argsToPassToGodot, ptrCallRet)

proc blendPoint34node(self: AnimationNodeBlendSpace2D): AnimationRootNode =
  if isNil(animationNodeBlendSpace2DGetBlendPointNodeMethodBind):
    animationNodeBlendSpace2DGetBlendPointNodeMethodBind = getMethod(
        cstring"AnimationNodeBlendSpace2D", cstring"get_blend_point_node")
  var
    godotBoundArg0 = 34'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  animationNodeBlendSpace2DGetBlendPointNodeMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

proc `blendPoint34node=`(self: AnimationNodeBlendSpace2D; val: AnimationRootNode) =
  if isNil(animationNodeBlendSpace2DUnderscoreaddBlendPointMethodBind):
    animationNodeBlendSpace2DUnderscoreaddBlendPointMethodBind = getMethod(
        cstring"AnimationNodeBlendSpace2D", cstring"_add_blend_point")
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
  animationNodeBlendSpace2DUnderscoreaddBlendPointMethodBind.ptrCall(
      self.godotObject, argsToPassToGodot, ptrCallRet)

proc blendPoint34pos(self: AnimationNodeBlendSpace2D): Vector2 =
  if isNil(animationNodeBlendSpace2DGetBlendPointPositionMethodBind):
    animationNodeBlendSpace2DGetBlendPointPositionMethodBind = getMethod(
        cstring"AnimationNodeBlendSpace2D", cstring"get_blend_point_position")
  var
    godotBoundArg0 = 34'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animationNodeBlendSpace2DGetBlendPointPositionMethodBind.ptrCall(
      self.godotObject, argsToPassToGodot, ptrCallRet)

proc `blendPoint34pos=`(self: AnimationNodeBlendSpace2D; val: Vector2) =
  if isNil(animationNodeBlendSpace2DSetBlendPointPositionMethodBind):
    animationNodeBlendSpace2DSetBlendPointPositionMethodBind = getMethod(
        cstring"AnimationNodeBlendSpace2D", cstring"set_blend_point_position")
  var
    godotBoundArg0 = 34'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  animationNodeBlendSpace2DSetBlendPointPositionMethodBind.ptrCall(
      self.godotObject, argsToPassToGodot, ptrCallRet)

proc blendPoint35node(self: AnimationNodeBlendSpace2D): AnimationRootNode =
  if isNil(animationNodeBlendSpace2DGetBlendPointNodeMethodBind):
    animationNodeBlendSpace2DGetBlendPointNodeMethodBind = getMethod(
        cstring"AnimationNodeBlendSpace2D", cstring"get_blend_point_node")
  var
    godotBoundArg0 = 35'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  animationNodeBlendSpace2DGetBlendPointNodeMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

proc `blendPoint35node=`(self: AnimationNodeBlendSpace2D; val: AnimationRootNode) =
  if isNil(animationNodeBlendSpace2DUnderscoreaddBlendPointMethodBind):
    animationNodeBlendSpace2DUnderscoreaddBlendPointMethodBind = getMethod(
        cstring"AnimationNodeBlendSpace2D", cstring"_add_blend_point")
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
  animationNodeBlendSpace2DUnderscoreaddBlendPointMethodBind.ptrCall(
      self.godotObject, argsToPassToGodot, ptrCallRet)

proc blendPoint35pos(self: AnimationNodeBlendSpace2D): Vector2 =
  if isNil(animationNodeBlendSpace2DGetBlendPointPositionMethodBind):
    animationNodeBlendSpace2DGetBlendPointPositionMethodBind = getMethod(
        cstring"AnimationNodeBlendSpace2D", cstring"get_blend_point_position")
  var
    godotBoundArg0 = 35'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animationNodeBlendSpace2DGetBlendPointPositionMethodBind.ptrCall(
      self.godotObject, argsToPassToGodot, ptrCallRet)

proc `blendPoint35pos=`(self: AnimationNodeBlendSpace2D; val: Vector2) =
  if isNil(animationNodeBlendSpace2DSetBlendPointPositionMethodBind):
    animationNodeBlendSpace2DSetBlendPointPositionMethodBind = getMethod(
        cstring"AnimationNodeBlendSpace2D", cstring"set_blend_point_position")
  var
    godotBoundArg0 = 35'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  animationNodeBlendSpace2DSetBlendPointPositionMethodBind.ptrCall(
      self.godotObject, argsToPassToGodot, ptrCallRet)

proc blendPoint36node(self: AnimationNodeBlendSpace2D): AnimationRootNode =
  if isNil(animationNodeBlendSpace2DGetBlendPointNodeMethodBind):
    animationNodeBlendSpace2DGetBlendPointNodeMethodBind = getMethod(
        cstring"AnimationNodeBlendSpace2D", cstring"get_blend_point_node")
  var
    godotBoundArg0 = 36'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  animationNodeBlendSpace2DGetBlendPointNodeMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

proc `blendPoint36node=`(self: AnimationNodeBlendSpace2D; val: AnimationRootNode) =
  if isNil(animationNodeBlendSpace2DUnderscoreaddBlendPointMethodBind):
    animationNodeBlendSpace2DUnderscoreaddBlendPointMethodBind = getMethod(
        cstring"AnimationNodeBlendSpace2D", cstring"_add_blend_point")
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
  animationNodeBlendSpace2DUnderscoreaddBlendPointMethodBind.ptrCall(
      self.godotObject, argsToPassToGodot, ptrCallRet)

proc blendPoint36pos(self: AnimationNodeBlendSpace2D): Vector2 =
  if isNil(animationNodeBlendSpace2DGetBlendPointPositionMethodBind):
    animationNodeBlendSpace2DGetBlendPointPositionMethodBind = getMethod(
        cstring"AnimationNodeBlendSpace2D", cstring"get_blend_point_position")
  var
    godotBoundArg0 = 36'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animationNodeBlendSpace2DGetBlendPointPositionMethodBind.ptrCall(
      self.godotObject, argsToPassToGodot, ptrCallRet)

proc `blendPoint36pos=`(self: AnimationNodeBlendSpace2D; val: Vector2) =
  if isNil(animationNodeBlendSpace2DSetBlendPointPositionMethodBind):
    animationNodeBlendSpace2DSetBlendPointPositionMethodBind = getMethod(
        cstring"AnimationNodeBlendSpace2D", cstring"set_blend_point_position")
  var
    godotBoundArg0 = 36'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  animationNodeBlendSpace2DSetBlendPointPositionMethodBind.ptrCall(
      self.godotObject, argsToPassToGodot, ptrCallRet)

proc blendPoint37node(self: AnimationNodeBlendSpace2D): AnimationRootNode =
  if isNil(animationNodeBlendSpace2DGetBlendPointNodeMethodBind):
    animationNodeBlendSpace2DGetBlendPointNodeMethodBind = getMethod(
        cstring"AnimationNodeBlendSpace2D", cstring"get_blend_point_node")
  var
    godotBoundArg0 = 37'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  animationNodeBlendSpace2DGetBlendPointNodeMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

proc `blendPoint37node=`(self: AnimationNodeBlendSpace2D; val: AnimationRootNode) =
  if isNil(animationNodeBlendSpace2DUnderscoreaddBlendPointMethodBind):
    animationNodeBlendSpace2DUnderscoreaddBlendPointMethodBind = getMethod(
        cstring"AnimationNodeBlendSpace2D", cstring"_add_blend_point")
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
  animationNodeBlendSpace2DUnderscoreaddBlendPointMethodBind.ptrCall(
      self.godotObject, argsToPassToGodot, ptrCallRet)

proc blendPoint37pos(self: AnimationNodeBlendSpace2D): Vector2 =
  if isNil(animationNodeBlendSpace2DGetBlendPointPositionMethodBind):
    animationNodeBlendSpace2DGetBlendPointPositionMethodBind = getMethod(
        cstring"AnimationNodeBlendSpace2D", cstring"get_blend_point_position")
  var
    godotBoundArg0 = 37'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animationNodeBlendSpace2DGetBlendPointPositionMethodBind.ptrCall(
      self.godotObject, argsToPassToGodot, ptrCallRet)

proc `blendPoint37pos=`(self: AnimationNodeBlendSpace2D; val: Vector2) =
  if isNil(animationNodeBlendSpace2DSetBlendPointPositionMethodBind):
    animationNodeBlendSpace2DSetBlendPointPositionMethodBind = getMethod(
        cstring"AnimationNodeBlendSpace2D", cstring"set_blend_point_position")
  var
    godotBoundArg0 = 37'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  animationNodeBlendSpace2DSetBlendPointPositionMethodBind.ptrCall(
      self.godotObject, argsToPassToGodot, ptrCallRet)

proc blendPoint38node(self: AnimationNodeBlendSpace2D): AnimationRootNode =
  if isNil(animationNodeBlendSpace2DGetBlendPointNodeMethodBind):
    animationNodeBlendSpace2DGetBlendPointNodeMethodBind = getMethod(
        cstring"AnimationNodeBlendSpace2D", cstring"get_blend_point_node")
  var
    godotBoundArg0 = 38'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  animationNodeBlendSpace2DGetBlendPointNodeMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

proc `blendPoint38node=`(self: AnimationNodeBlendSpace2D; val: AnimationRootNode) =
  if isNil(animationNodeBlendSpace2DUnderscoreaddBlendPointMethodBind):
    animationNodeBlendSpace2DUnderscoreaddBlendPointMethodBind = getMethod(
        cstring"AnimationNodeBlendSpace2D", cstring"_add_blend_point")
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
  animationNodeBlendSpace2DUnderscoreaddBlendPointMethodBind.ptrCall(
      self.godotObject, argsToPassToGodot, ptrCallRet)

proc blendPoint38pos(self: AnimationNodeBlendSpace2D): Vector2 =
  if isNil(animationNodeBlendSpace2DGetBlendPointPositionMethodBind):
    animationNodeBlendSpace2DGetBlendPointPositionMethodBind = getMethod(
        cstring"AnimationNodeBlendSpace2D", cstring"get_blend_point_position")
  var
    godotBoundArg0 = 38'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animationNodeBlendSpace2DGetBlendPointPositionMethodBind.ptrCall(
      self.godotObject, argsToPassToGodot, ptrCallRet)

proc `blendPoint38pos=`(self: AnimationNodeBlendSpace2D; val: Vector2) =
  if isNil(animationNodeBlendSpace2DSetBlendPointPositionMethodBind):
    animationNodeBlendSpace2DSetBlendPointPositionMethodBind = getMethod(
        cstring"AnimationNodeBlendSpace2D", cstring"set_blend_point_position")
  var
    godotBoundArg0 = 38'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  animationNodeBlendSpace2DSetBlendPointPositionMethodBind.ptrCall(
      self.godotObject, argsToPassToGodot, ptrCallRet)

proc blendPoint39node(self: AnimationNodeBlendSpace2D): AnimationRootNode =
  if isNil(animationNodeBlendSpace2DGetBlendPointNodeMethodBind):
    animationNodeBlendSpace2DGetBlendPointNodeMethodBind = getMethod(
        cstring"AnimationNodeBlendSpace2D", cstring"get_blend_point_node")
  var
    godotBoundArg0 = 39'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  animationNodeBlendSpace2DGetBlendPointNodeMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

proc `blendPoint39node=`(self: AnimationNodeBlendSpace2D; val: AnimationRootNode) =
  if isNil(animationNodeBlendSpace2DUnderscoreaddBlendPointMethodBind):
    animationNodeBlendSpace2DUnderscoreaddBlendPointMethodBind = getMethod(
        cstring"AnimationNodeBlendSpace2D", cstring"_add_blend_point")
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
  animationNodeBlendSpace2DUnderscoreaddBlendPointMethodBind.ptrCall(
      self.godotObject, argsToPassToGodot, ptrCallRet)

proc blendPoint39pos(self: AnimationNodeBlendSpace2D): Vector2 =
  if isNil(animationNodeBlendSpace2DGetBlendPointPositionMethodBind):
    animationNodeBlendSpace2DGetBlendPointPositionMethodBind = getMethod(
        cstring"AnimationNodeBlendSpace2D", cstring"get_blend_point_position")
  var
    godotBoundArg0 = 39'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animationNodeBlendSpace2DGetBlendPointPositionMethodBind.ptrCall(
      self.godotObject, argsToPassToGodot, ptrCallRet)

proc `blendPoint39pos=`(self: AnimationNodeBlendSpace2D; val: Vector2) =
  if isNil(animationNodeBlendSpace2DSetBlendPointPositionMethodBind):
    animationNodeBlendSpace2DSetBlendPointPositionMethodBind = getMethod(
        cstring"AnimationNodeBlendSpace2D", cstring"set_blend_point_position")
  var
    godotBoundArg0 = 39'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  animationNodeBlendSpace2DSetBlendPointPositionMethodBind.ptrCall(
      self.godotObject, argsToPassToGodot, ptrCallRet)

proc blendPoint4node(self: AnimationNodeBlendSpace2D): AnimationRootNode =
  if isNil(animationNodeBlendSpace2DGetBlendPointNodeMethodBind):
    animationNodeBlendSpace2DGetBlendPointNodeMethodBind = getMethod(
        cstring"AnimationNodeBlendSpace2D", cstring"get_blend_point_node")
  var
    godotBoundArg0 = 4'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  animationNodeBlendSpace2DGetBlendPointNodeMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

proc `blendPoint4node=`(self: AnimationNodeBlendSpace2D; val: AnimationRootNode) =
  if isNil(animationNodeBlendSpace2DUnderscoreaddBlendPointMethodBind):
    animationNodeBlendSpace2DUnderscoreaddBlendPointMethodBind = getMethod(
        cstring"AnimationNodeBlendSpace2D", cstring"_add_blend_point")
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
  animationNodeBlendSpace2DUnderscoreaddBlendPointMethodBind.ptrCall(
      self.godotObject, argsToPassToGodot, ptrCallRet)

proc blendPoint4pos(self: AnimationNodeBlendSpace2D): Vector2 =
  if isNil(animationNodeBlendSpace2DGetBlendPointPositionMethodBind):
    animationNodeBlendSpace2DGetBlendPointPositionMethodBind = getMethod(
        cstring"AnimationNodeBlendSpace2D", cstring"get_blend_point_position")
  var
    godotBoundArg0 = 4'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animationNodeBlendSpace2DGetBlendPointPositionMethodBind.ptrCall(
      self.godotObject, argsToPassToGodot, ptrCallRet)

proc `blendPoint4pos=`(self: AnimationNodeBlendSpace2D; val: Vector2) =
  if isNil(animationNodeBlendSpace2DSetBlendPointPositionMethodBind):
    animationNodeBlendSpace2DSetBlendPointPositionMethodBind = getMethod(
        cstring"AnimationNodeBlendSpace2D", cstring"set_blend_point_position")
  var
    godotBoundArg0 = 4'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  animationNodeBlendSpace2DSetBlendPointPositionMethodBind.ptrCall(
      self.godotObject, argsToPassToGodot, ptrCallRet)

proc blendPoint40node(self: AnimationNodeBlendSpace2D): AnimationRootNode =
  if isNil(animationNodeBlendSpace2DGetBlendPointNodeMethodBind):
    animationNodeBlendSpace2DGetBlendPointNodeMethodBind = getMethod(
        cstring"AnimationNodeBlendSpace2D", cstring"get_blend_point_node")
  var
    godotBoundArg0 = 40'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  animationNodeBlendSpace2DGetBlendPointNodeMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

proc `blendPoint40node=`(self: AnimationNodeBlendSpace2D; val: AnimationRootNode) =
  if isNil(animationNodeBlendSpace2DUnderscoreaddBlendPointMethodBind):
    animationNodeBlendSpace2DUnderscoreaddBlendPointMethodBind = getMethod(
        cstring"AnimationNodeBlendSpace2D", cstring"_add_blend_point")
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
  animationNodeBlendSpace2DUnderscoreaddBlendPointMethodBind.ptrCall(
      self.godotObject, argsToPassToGodot, ptrCallRet)

proc blendPoint40pos(self: AnimationNodeBlendSpace2D): Vector2 =
  if isNil(animationNodeBlendSpace2DGetBlendPointPositionMethodBind):
    animationNodeBlendSpace2DGetBlendPointPositionMethodBind = getMethod(
        cstring"AnimationNodeBlendSpace2D", cstring"get_blend_point_position")
  var
    godotBoundArg0 = 40'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animationNodeBlendSpace2DGetBlendPointPositionMethodBind.ptrCall(
      self.godotObject, argsToPassToGodot, ptrCallRet)

proc `blendPoint40pos=`(self: AnimationNodeBlendSpace2D; val: Vector2) =
  if isNil(animationNodeBlendSpace2DSetBlendPointPositionMethodBind):
    animationNodeBlendSpace2DSetBlendPointPositionMethodBind = getMethod(
        cstring"AnimationNodeBlendSpace2D", cstring"set_blend_point_position")
  var
    godotBoundArg0 = 40'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  animationNodeBlendSpace2DSetBlendPointPositionMethodBind.ptrCall(
      self.godotObject, argsToPassToGodot, ptrCallRet)

proc blendPoint41node(self: AnimationNodeBlendSpace2D): AnimationRootNode =
  if isNil(animationNodeBlendSpace2DGetBlendPointNodeMethodBind):
    animationNodeBlendSpace2DGetBlendPointNodeMethodBind = getMethod(
        cstring"AnimationNodeBlendSpace2D", cstring"get_blend_point_node")
  var
    godotBoundArg0 = 41'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  animationNodeBlendSpace2DGetBlendPointNodeMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

proc `blendPoint41node=`(self: AnimationNodeBlendSpace2D; val: AnimationRootNode) =
  if isNil(animationNodeBlendSpace2DUnderscoreaddBlendPointMethodBind):
    animationNodeBlendSpace2DUnderscoreaddBlendPointMethodBind = getMethod(
        cstring"AnimationNodeBlendSpace2D", cstring"_add_blend_point")
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
  animationNodeBlendSpace2DUnderscoreaddBlendPointMethodBind.ptrCall(
      self.godotObject, argsToPassToGodot, ptrCallRet)

proc blendPoint41pos(self: AnimationNodeBlendSpace2D): Vector2 =
  if isNil(animationNodeBlendSpace2DGetBlendPointPositionMethodBind):
    animationNodeBlendSpace2DGetBlendPointPositionMethodBind = getMethod(
        cstring"AnimationNodeBlendSpace2D", cstring"get_blend_point_position")
  var
    godotBoundArg0 = 41'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animationNodeBlendSpace2DGetBlendPointPositionMethodBind.ptrCall(
      self.godotObject, argsToPassToGodot, ptrCallRet)

proc `blendPoint41pos=`(self: AnimationNodeBlendSpace2D; val: Vector2) =
  if isNil(animationNodeBlendSpace2DSetBlendPointPositionMethodBind):
    animationNodeBlendSpace2DSetBlendPointPositionMethodBind = getMethod(
        cstring"AnimationNodeBlendSpace2D", cstring"set_blend_point_position")
  var
    godotBoundArg0 = 41'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  animationNodeBlendSpace2DSetBlendPointPositionMethodBind.ptrCall(
      self.godotObject, argsToPassToGodot, ptrCallRet)

proc blendPoint42node(self: AnimationNodeBlendSpace2D): AnimationRootNode =
  if isNil(animationNodeBlendSpace2DGetBlendPointNodeMethodBind):
    animationNodeBlendSpace2DGetBlendPointNodeMethodBind = getMethod(
        cstring"AnimationNodeBlendSpace2D", cstring"get_blend_point_node")
  var
    godotBoundArg0 = 42'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  animationNodeBlendSpace2DGetBlendPointNodeMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

proc `blendPoint42node=`(self: AnimationNodeBlendSpace2D; val: AnimationRootNode) =
  if isNil(animationNodeBlendSpace2DUnderscoreaddBlendPointMethodBind):
    animationNodeBlendSpace2DUnderscoreaddBlendPointMethodBind = getMethod(
        cstring"AnimationNodeBlendSpace2D", cstring"_add_blend_point")
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
  animationNodeBlendSpace2DUnderscoreaddBlendPointMethodBind.ptrCall(
      self.godotObject, argsToPassToGodot, ptrCallRet)

proc blendPoint42pos(self: AnimationNodeBlendSpace2D): Vector2 =
  if isNil(animationNodeBlendSpace2DGetBlendPointPositionMethodBind):
    animationNodeBlendSpace2DGetBlendPointPositionMethodBind = getMethod(
        cstring"AnimationNodeBlendSpace2D", cstring"get_blend_point_position")
  var
    godotBoundArg0 = 42'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animationNodeBlendSpace2DGetBlendPointPositionMethodBind.ptrCall(
      self.godotObject, argsToPassToGodot, ptrCallRet)

proc `blendPoint42pos=`(self: AnimationNodeBlendSpace2D; val: Vector2) =
  if isNil(animationNodeBlendSpace2DSetBlendPointPositionMethodBind):
    animationNodeBlendSpace2DSetBlendPointPositionMethodBind = getMethod(
        cstring"AnimationNodeBlendSpace2D", cstring"set_blend_point_position")
  var
    godotBoundArg0 = 42'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  animationNodeBlendSpace2DSetBlendPointPositionMethodBind.ptrCall(
      self.godotObject, argsToPassToGodot, ptrCallRet)

proc blendPoint43node(self: AnimationNodeBlendSpace2D): AnimationRootNode =
  if isNil(animationNodeBlendSpace2DGetBlendPointNodeMethodBind):
    animationNodeBlendSpace2DGetBlendPointNodeMethodBind = getMethod(
        cstring"AnimationNodeBlendSpace2D", cstring"get_blend_point_node")
  var
    godotBoundArg0 = 43'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  animationNodeBlendSpace2DGetBlendPointNodeMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

proc `blendPoint43node=`(self: AnimationNodeBlendSpace2D; val: AnimationRootNode) =
  if isNil(animationNodeBlendSpace2DUnderscoreaddBlendPointMethodBind):
    animationNodeBlendSpace2DUnderscoreaddBlendPointMethodBind = getMethod(
        cstring"AnimationNodeBlendSpace2D", cstring"_add_blend_point")
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
  animationNodeBlendSpace2DUnderscoreaddBlendPointMethodBind.ptrCall(
      self.godotObject, argsToPassToGodot, ptrCallRet)

proc blendPoint43pos(self: AnimationNodeBlendSpace2D): Vector2 =
  if isNil(animationNodeBlendSpace2DGetBlendPointPositionMethodBind):
    animationNodeBlendSpace2DGetBlendPointPositionMethodBind = getMethod(
        cstring"AnimationNodeBlendSpace2D", cstring"get_blend_point_position")
  var
    godotBoundArg0 = 43'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animationNodeBlendSpace2DGetBlendPointPositionMethodBind.ptrCall(
      self.godotObject, argsToPassToGodot, ptrCallRet)

proc `blendPoint43pos=`(self: AnimationNodeBlendSpace2D; val: Vector2) =
  if isNil(animationNodeBlendSpace2DSetBlendPointPositionMethodBind):
    animationNodeBlendSpace2DSetBlendPointPositionMethodBind = getMethod(
        cstring"AnimationNodeBlendSpace2D", cstring"set_blend_point_position")
  var
    godotBoundArg0 = 43'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  animationNodeBlendSpace2DSetBlendPointPositionMethodBind.ptrCall(
      self.godotObject, argsToPassToGodot, ptrCallRet)

proc blendPoint44node(self: AnimationNodeBlendSpace2D): AnimationRootNode =
  if isNil(animationNodeBlendSpace2DGetBlendPointNodeMethodBind):
    animationNodeBlendSpace2DGetBlendPointNodeMethodBind = getMethod(
        cstring"AnimationNodeBlendSpace2D", cstring"get_blend_point_node")
  var
    godotBoundArg0 = 44'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  animationNodeBlendSpace2DGetBlendPointNodeMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

proc `blendPoint44node=`(self: AnimationNodeBlendSpace2D; val: AnimationRootNode) =
  if isNil(animationNodeBlendSpace2DUnderscoreaddBlendPointMethodBind):
    animationNodeBlendSpace2DUnderscoreaddBlendPointMethodBind = getMethod(
        cstring"AnimationNodeBlendSpace2D", cstring"_add_blend_point")
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
  animationNodeBlendSpace2DUnderscoreaddBlendPointMethodBind.ptrCall(
      self.godotObject, argsToPassToGodot, ptrCallRet)

proc blendPoint44pos(self: AnimationNodeBlendSpace2D): Vector2 =
  if isNil(animationNodeBlendSpace2DGetBlendPointPositionMethodBind):
    animationNodeBlendSpace2DGetBlendPointPositionMethodBind = getMethod(
        cstring"AnimationNodeBlendSpace2D", cstring"get_blend_point_position")
  var
    godotBoundArg0 = 44'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animationNodeBlendSpace2DGetBlendPointPositionMethodBind.ptrCall(
      self.godotObject, argsToPassToGodot, ptrCallRet)

proc `blendPoint44pos=`(self: AnimationNodeBlendSpace2D; val: Vector2) =
  if isNil(animationNodeBlendSpace2DSetBlendPointPositionMethodBind):
    animationNodeBlendSpace2DSetBlendPointPositionMethodBind = getMethod(
        cstring"AnimationNodeBlendSpace2D", cstring"set_blend_point_position")
  var
    godotBoundArg0 = 44'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  animationNodeBlendSpace2DSetBlendPointPositionMethodBind.ptrCall(
      self.godotObject, argsToPassToGodot, ptrCallRet)

proc blendPoint45node(self: AnimationNodeBlendSpace2D): AnimationRootNode =
  if isNil(animationNodeBlendSpace2DGetBlendPointNodeMethodBind):
    animationNodeBlendSpace2DGetBlendPointNodeMethodBind = getMethod(
        cstring"AnimationNodeBlendSpace2D", cstring"get_blend_point_node")
  var
    godotBoundArg0 = 45'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  animationNodeBlendSpace2DGetBlendPointNodeMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

proc `blendPoint45node=`(self: AnimationNodeBlendSpace2D; val: AnimationRootNode) =
  if isNil(animationNodeBlendSpace2DUnderscoreaddBlendPointMethodBind):
    animationNodeBlendSpace2DUnderscoreaddBlendPointMethodBind = getMethod(
        cstring"AnimationNodeBlendSpace2D", cstring"_add_blend_point")
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
  animationNodeBlendSpace2DUnderscoreaddBlendPointMethodBind.ptrCall(
      self.godotObject, argsToPassToGodot, ptrCallRet)

proc blendPoint45pos(self: AnimationNodeBlendSpace2D): Vector2 =
  if isNil(animationNodeBlendSpace2DGetBlendPointPositionMethodBind):
    animationNodeBlendSpace2DGetBlendPointPositionMethodBind = getMethod(
        cstring"AnimationNodeBlendSpace2D", cstring"get_blend_point_position")
  var
    godotBoundArg0 = 45'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animationNodeBlendSpace2DGetBlendPointPositionMethodBind.ptrCall(
      self.godotObject, argsToPassToGodot, ptrCallRet)

proc `blendPoint45pos=`(self: AnimationNodeBlendSpace2D; val: Vector2) =
  if isNil(animationNodeBlendSpace2DSetBlendPointPositionMethodBind):
    animationNodeBlendSpace2DSetBlendPointPositionMethodBind = getMethod(
        cstring"AnimationNodeBlendSpace2D", cstring"set_blend_point_position")
  var
    godotBoundArg0 = 45'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  animationNodeBlendSpace2DSetBlendPointPositionMethodBind.ptrCall(
      self.godotObject, argsToPassToGodot, ptrCallRet)

proc blendPoint46node(self: AnimationNodeBlendSpace2D): AnimationRootNode =
  if isNil(animationNodeBlendSpace2DGetBlendPointNodeMethodBind):
    animationNodeBlendSpace2DGetBlendPointNodeMethodBind = getMethod(
        cstring"AnimationNodeBlendSpace2D", cstring"get_blend_point_node")
  var
    godotBoundArg0 = 46'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  animationNodeBlendSpace2DGetBlendPointNodeMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

proc `blendPoint46node=`(self: AnimationNodeBlendSpace2D; val: AnimationRootNode) =
  if isNil(animationNodeBlendSpace2DUnderscoreaddBlendPointMethodBind):
    animationNodeBlendSpace2DUnderscoreaddBlendPointMethodBind = getMethod(
        cstring"AnimationNodeBlendSpace2D", cstring"_add_blend_point")
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
  animationNodeBlendSpace2DUnderscoreaddBlendPointMethodBind.ptrCall(
      self.godotObject, argsToPassToGodot, ptrCallRet)

proc blendPoint46pos(self: AnimationNodeBlendSpace2D): Vector2 =
  if isNil(animationNodeBlendSpace2DGetBlendPointPositionMethodBind):
    animationNodeBlendSpace2DGetBlendPointPositionMethodBind = getMethod(
        cstring"AnimationNodeBlendSpace2D", cstring"get_blend_point_position")
  var
    godotBoundArg0 = 46'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animationNodeBlendSpace2DGetBlendPointPositionMethodBind.ptrCall(
      self.godotObject, argsToPassToGodot, ptrCallRet)

proc `blendPoint46pos=`(self: AnimationNodeBlendSpace2D; val: Vector2) =
  if isNil(animationNodeBlendSpace2DSetBlendPointPositionMethodBind):
    animationNodeBlendSpace2DSetBlendPointPositionMethodBind = getMethod(
        cstring"AnimationNodeBlendSpace2D", cstring"set_blend_point_position")
  var
    godotBoundArg0 = 46'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  animationNodeBlendSpace2DSetBlendPointPositionMethodBind.ptrCall(
      self.godotObject, argsToPassToGodot, ptrCallRet)

proc blendPoint47node(self: AnimationNodeBlendSpace2D): AnimationRootNode =
  if isNil(animationNodeBlendSpace2DGetBlendPointNodeMethodBind):
    animationNodeBlendSpace2DGetBlendPointNodeMethodBind = getMethod(
        cstring"AnimationNodeBlendSpace2D", cstring"get_blend_point_node")
  var
    godotBoundArg0 = 47'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  animationNodeBlendSpace2DGetBlendPointNodeMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

proc `blendPoint47node=`(self: AnimationNodeBlendSpace2D; val: AnimationRootNode) =
  if isNil(animationNodeBlendSpace2DUnderscoreaddBlendPointMethodBind):
    animationNodeBlendSpace2DUnderscoreaddBlendPointMethodBind = getMethod(
        cstring"AnimationNodeBlendSpace2D", cstring"_add_blend_point")
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
  animationNodeBlendSpace2DUnderscoreaddBlendPointMethodBind.ptrCall(
      self.godotObject, argsToPassToGodot, ptrCallRet)

proc blendPoint47pos(self: AnimationNodeBlendSpace2D): Vector2 =
  if isNil(animationNodeBlendSpace2DGetBlendPointPositionMethodBind):
    animationNodeBlendSpace2DGetBlendPointPositionMethodBind = getMethod(
        cstring"AnimationNodeBlendSpace2D", cstring"get_blend_point_position")
  var
    godotBoundArg0 = 47'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animationNodeBlendSpace2DGetBlendPointPositionMethodBind.ptrCall(
      self.godotObject, argsToPassToGodot, ptrCallRet)

proc `blendPoint47pos=`(self: AnimationNodeBlendSpace2D; val: Vector2) =
  if isNil(animationNodeBlendSpace2DSetBlendPointPositionMethodBind):
    animationNodeBlendSpace2DSetBlendPointPositionMethodBind = getMethod(
        cstring"AnimationNodeBlendSpace2D", cstring"set_blend_point_position")
  var
    godotBoundArg0 = 47'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  animationNodeBlendSpace2DSetBlendPointPositionMethodBind.ptrCall(
      self.godotObject, argsToPassToGodot, ptrCallRet)

proc blendPoint48node(self: AnimationNodeBlendSpace2D): AnimationRootNode =
  if isNil(animationNodeBlendSpace2DGetBlendPointNodeMethodBind):
    animationNodeBlendSpace2DGetBlendPointNodeMethodBind = getMethod(
        cstring"AnimationNodeBlendSpace2D", cstring"get_blend_point_node")
  var
    godotBoundArg0 = 48'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  animationNodeBlendSpace2DGetBlendPointNodeMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

proc `blendPoint48node=`(self: AnimationNodeBlendSpace2D; val: AnimationRootNode) =
  if isNil(animationNodeBlendSpace2DUnderscoreaddBlendPointMethodBind):
    animationNodeBlendSpace2DUnderscoreaddBlendPointMethodBind = getMethod(
        cstring"AnimationNodeBlendSpace2D", cstring"_add_blend_point")
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
  animationNodeBlendSpace2DUnderscoreaddBlendPointMethodBind.ptrCall(
      self.godotObject, argsToPassToGodot, ptrCallRet)

proc blendPoint48pos(self: AnimationNodeBlendSpace2D): Vector2 =
  if isNil(animationNodeBlendSpace2DGetBlendPointPositionMethodBind):
    animationNodeBlendSpace2DGetBlendPointPositionMethodBind = getMethod(
        cstring"AnimationNodeBlendSpace2D", cstring"get_blend_point_position")
  var
    godotBoundArg0 = 48'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animationNodeBlendSpace2DGetBlendPointPositionMethodBind.ptrCall(
      self.godotObject, argsToPassToGodot, ptrCallRet)

proc `blendPoint48pos=`(self: AnimationNodeBlendSpace2D; val: Vector2) =
  if isNil(animationNodeBlendSpace2DSetBlendPointPositionMethodBind):
    animationNodeBlendSpace2DSetBlendPointPositionMethodBind = getMethod(
        cstring"AnimationNodeBlendSpace2D", cstring"set_blend_point_position")
  var
    godotBoundArg0 = 48'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  animationNodeBlendSpace2DSetBlendPointPositionMethodBind.ptrCall(
      self.godotObject, argsToPassToGodot, ptrCallRet)

proc blendPoint49node(self: AnimationNodeBlendSpace2D): AnimationRootNode =
  if isNil(animationNodeBlendSpace2DGetBlendPointNodeMethodBind):
    animationNodeBlendSpace2DGetBlendPointNodeMethodBind = getMethod(
        cstring"AnimationNodeBlendSpace2D", cstring"get_blend_point_node")
  var
    godotBoundArg0 = 49'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  animationNodeBlendSpace2DGetBlendPointNodeMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

proc `blendPoint49node=`(self: AnimationNodeBlendSpace2D; val: AnimationRootNode) =
  if isNil(animationNodeBlendSpace2DUnderscoreaddBlendPointMethodBind):
    animationNodeBlendSpace2DUnderscoreaddBlendPointMethodBind = getMethod(
        cstring"AnimationNodeBlendSpace2D", cstring"_add_blend_point")
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
  animationNodeBlendSpace2DUnderscoreaddBlendPointMethodBind.ptrCall(
      self.godotObject, argsToPassToGodot, ptrCallRet)

proc blendPoint49pos(self: AnimationNodeBlendSpace2D): Vector2 =
  if isNil(animationNodeBlendSpace2DGetBlendPointPositionMethodBind):
    animationNodeBlendSpace2DGetBlendPointPositionMethodBind = getMethod(
        cstring"AnimationNodeBlendSpace2D", cstring"get_blend_point_position")
  var
    godotBoundArg0 = 49'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animationNodeBlendSpace2DGetBlendPointPositionMethodBind.ptrCall(
      self.godotObject, argsToPassToGodot, ptrCallRet)

proc `blendPoint49pos=`(self: AnimationNodeBlendSpace2D; val: Vector2) =
  if isNil(animationNodeBlendSpace2DSetBlendPointPositionMethodBind):
    animationNodeBlendSpace2DSetBlendPointPositionMethodBind = getMethod(
        cstring"AnimationNodeBlendSpace2D", cstring"set_blend_point_position")
  var
    godotBoundArg0 = 49'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  animationNodeBlendSpace2DSetBlendPointPositionMethodBind.ptrCall(
      self.godotObject, argsToPassToGodot, ptrCallRet)

proc blendPoint5node(self: AnimationNodeBlendSpace2D): AnimationRootNode =
  if isNil(animationNodeBlendSpace2DGetBlendPointNodeMethodBind):
    animationNodeBlendSpace2DGetBlendPointNodeMethodBind = getMethod(
        cstring"AnimationNodeBlendSpace2D", cstring"get_blend_point_node")
  var
    godotBoundArg0 = 5'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  animationNodeBlendSpace2DGetBlendPointNodeMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

proc `blendPoint5node=`(self: AnimationNodeBlendSpace2D; val: AnimationRootNode) =
  if isNil(animationNodeBlendSpace2DUnderscoreaddBlendPointMethodBind):
    animationNodeBlendSpace2DUnderscoreaddBlendPointMethodBind = getMethod(
        cstring"AnimationNodeBlendSpace2D", cstring"_add_blend_point")
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
  animationNodeBlendSpace2DUnderscoreaddBlendPointMethodBind.ptrCall(
      self.godotObject, argsToPassToGodot, ptrCallRet)

proc blendPoint5pos(self: AnimationNodeBlendSpace2D): Vector2 =
  if isNil(animationNodeBlendSpace2DGetBlendPointPositionMethodBind):
    animationNodeBlendSpace2DGetBlendPointPositionMethodBind = getMethod(
        cstring"AnimationNodeBlendSpace2D", cstring"get_blend_point_position")
  var
    godotBoundArg0 = 5'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animationNodeBlendSpace2DGetBlendPointPositionMethodBind.ptrCall(
      self.godotObject, argsToPassToGodot, ptrCallRet)

proc `blendPoint5pos=`(self: AnimationNodeBlendSpace2D; val: Vector2) =
  if isNil(animationNodeBlendSpace2DSetBlendPointPositionMethodBind):
    animationNodeBlendSpace2DSetBlendPointPositionMethodBind = getMethod(
        cstring"AnimationNodeBlendSpace2D", cstring"set_blend_point_position")
  var
    godotBoundArg0 = 5'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  animationNodeBlendSpace2DSetBlendPointPositionMethodBind.ptrCall(
      self.godotObject, argsToPassToGodot, ptrCallRet)

proc blendPoint50node(self: AnimationNodeBlendSpace2D): AnimationRootNode =
  if isNil(animationNodeBlendSpace2DGetBlendPointNodeMethodBind):
    animationNodeBlendSpace2DGetBlendPointNodeMethodBind = getMethod(
        cstring"AnimationNodeBlendSpace2D", cstring"get_blend_point_node")
  var
    godotBoundArg0 = 50'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  animationNodeBlendSpace2DGetBlendPointNodeMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

proc `blendPoint50node=`(self: AnimationNodeBlendSpace2D; val: AnimationRootNode) =
  if isNil(animationNodeBlendSpace2DUnderscoreaddBlendPointMethodBind):
    animationNodeBlendSpace2DUnderscoreaddBlendPointMethodBind = getMethod(
        cstring"AnimationNodeBlendSpace2D", cstring"_add_blend_point")
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
  animationNodeBlendSpace2DUnderscoreaddBlendPointMethodBind.ptrCall(
      self.godotObject, argsToPassToGodot, ptrCallRet)

proc blendPoint50pos(self: AnimationNodeBlendSpace2D): Vector2 =
  if isNil(animationNodeBlendSpace2DGetBlendPointPositionMethodBind):
    animationNodeBlendSpace2DGetBlendPointPositionMethodBind = getMethod(
        cstring"AnimationNodeBlendSpace2D", cstring"get_blend_point_position")
  var
    godotBoundArg0 = 50'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animationNodeBlendSpace2DGetBlendPointPositionMethodBind.ptrCall(
      self.godotObject, argsToPassToGodot, ptrCallRet)

proc `blendPoint50pos=`(self: AnimationNodeBlendSpace2D; val: Vector2) =
  if isNil(animationNodeBlendSpace2DSetBlendPointPositionMethodBind):
    animationNodeBlendSpace2DSetBlendPointPositionMethodBind = getMethod(
        cstring"AnimationNodeBlendSpace2D", cstring"set_blend_point_position")
  var
    godotBoundArg0 = 50'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  animationNodeBlendSpace2DSetBlendPointPositionMethodBind.ptrCall(
      self.godotObject, argsToPassToGodot, ptrCallRet)

proc blendPoint51node(self: AnimationNodeBlendSpace2D): AnimationRootNode =
  if isNil(animationNodeBlendSpace2DGetBlendPointNodeMethodBind):
    animationNodeBlendSpace2DGetBlendPointNodeMethodBind = getMethod(
        cstring"AnimationNodeBlendSpace2D", cstring"get_blend_point_node")
  var
    godotBoundArg0 = 51'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  animationNodeBlendSpace2DGetBlendPointNodeMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

proc `blendPoint51node=`(self: AnimationNodeBlendSpace2D; val: AnimationRootNode) =
  if isNil(animationNodeBlendSpace2DUnderscoreaddBlendPointMethodBind):
    animationNodeBlendSpace2DUnderscoreaddBlendPointMethodBind = getMethod(
        cstring"AnimationNodeBlendSpace2D", cstring"_add_blend_point")
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
  animationNodeBlendSpace2DUnderscoreaddBlendPointMethodBind.ptrCall(
      self.godotObject, argsToPassToGodot, ptrCallRet)

proc blendPoint51pos(self: AnimationNodeBlendSpace2D): Vector2 =
  if isNil(animationNodeBlendSpace2DGetBlendPointPositionMethodBind):
    animationNodeBlendSpace2DGetBlendPointPositionMethodBind = getMethod(
        cstring"AnimationNodeBlendSpace2D", cstring"get_blend_point_position")
  var
    godotBoundArg0 = 51'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animationNodeBlendSpace2DGetBlendPointPositionMethodBind.ptrCall(
      self.godotObject, argsToPassToGodot, ptrCallRet)

proc `blendPoint51pos=`(self: AnimationNodeBlendSpace2D; val: Vector2) =
  if isNil(animationNodeBlendSpace2DSetBlendPointPositionMethodBind):
    animationNodeBlendSpace2DSetBlendPointPositionMethodBind = getMethod(
        cstring"AnimationNodeBlendSpace2D", cstring"set_blend_point_position")
  var
    godotBoundArg0 = 51'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  animationNodeBlendSpace2DSetBlendPointPositionMethodBind.ptrCall(
      self.godotObject, argsToPassToGodot, ptrCallRet)

proc blendPoint52node(self: AnimationNodeBlendSpace2D): AnimationRootNode =
  if isNil(animationNodeBlendSpace2DGetBlendPointNodeMethodBind):
    animationNodeBlendSpace2DGetBlendPointNodeMethodBind = getMethod(
        cstring"AnimationNodeBlendSpace2D", cstring"get_blend_point_node")
  var
    godotBoundArg0 = 52'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  animationNodeBlendSpace2DGetBlendPointNodeMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

proc `blendPoint52node=`(self: AnimationNodeBlendSpace2D; val: AnimationRootNode) =
  if isNil(animationNodeBlendSpace2DUnderscoreaddBlendPointMethodBind):
    animationNodeBlendSpace2DUnderscoreaddBlendPointMethodBind = getMethod(
        cstring"AnimationNodeBlendSpace2D", cstring"_add_blend_point")
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
  animationNodeBlendSpace2DUnderscoreaddBlendPointMethodBind.ptrCall(
      self.godotObject, argsToPassToGodot, ptrCallRet)

proc blendPoint52pos(self: AnimationNodeBlendSpace2D): Vector2 =
  if isNil(animationNodeBlendSpace2DGetBlendPointPositionMethodBind):
    animationNodeBlendSpace2DGetBlendPointPositionMethodBind = getMethod(
        cstring"AnimationNodeBlendSpace2D", cstring"get_blend_point_position")
  var
    godotBoundArg0 = 52'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animationNodeBlendSpace2DGetBlendPointPositionMethodBind.ptrCall(
      self.godotObject, argsToPassToGodot, ptrCallRet)

proc `blendPoint52pos=`(self: AnimationNodeBlendSpace2D; val: Vector2) =
  if isNil(animationNodeBlendSpace2DSetBlendPointPositionMethodBind):
    animationNodeBlendSpace2DSetBlendPointPositionMethodBind = getMethod(
        cstring"AnimationNodeBlendSpace2D", cstring"set_blend_point_position")
  var
    godotBoundArg0 = 52'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  animationNodeBlendSpace2DSetBlendPointPositionMethodBind.ptrCall(
      self.godotObject, argsToPassToGodot, ptrCallRet)

proc blendPoint53node(self: AnimationNodeBlendSpace2D): AnimationRootNode =
  if isNil(animationNodeBlendSpace2DGetBlendPointNodeMethodBind):
    animationNodeBlendSpace2DGetBlendPointNodeMethodBind = getMethod(
        cstring"AnimationNodeBlendSpace2D", cstring"get_blend_point_node")
  var
    godotBoundArg0 = 53'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  animationNodeBlendSpace2DGetBlendPointNodeMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

proc `blendPoint53node=`(self: AnimationNodeBlendSpace2D; val: AnimationRootNode) =
  if isNil(animationNodeBlendSpace2DUnderscoreaddBlendPointMethodBind):
    animationNodeBlendSpace2DUnderscoreaddBlendPointMethodBind = getMethod(
        cstring"AnimationNodeBlendSpace2D", cstring"_add_blend_point")
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
  animationNodeBlendSpace2DUnderscoreaddBlendPointMethodBind.ptrCall(
      self.godotObject, argsToPassToGodot, ptrCallRet)

proc blendPoint53pos(self: AnimationNodeBlendSpace2D): Vector2 =
  if isNil(animationNodeBlendSpace2DGetBlendPointPositionMethodBind):
    animationNodeBlendSpace2DGetBlendPointPositionMethodBind = getMethod(
        cstring"AnimationNodeBlendSpace2D", cstring"get_blend_point_position")
  var
    godotBoundArg0 = 53'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animationNodeBlendSpace2DGetBlendPointPositionMethodBind.ptrCall(
      self.godotObject, argsToPassToGodot, ptrCallRet)

proc `blendPoint53pos=`(self: AnimationNodeBlendSpace2D; val: Vector2) =
  if isNil(animationNodeBlendSpace2DSetBlendPointPositionMethodBind):
    animationNodeBlendSpace2DSetBlendPointPositionMethodBind = getMethod(
        cstring"AnimationNodeBlendSpace2D", cstring"set_blend_point_position")
  var
    godotBoundArg0 = 53'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  animationNodeBlendSpace2DSetBlendPointPositionMethodBind.ptrCall(
      self.godotObject, argsToPassToGodot, ptrCallRet)

proc blendPoint54node(self: AnimationNodeBlendSpace2D): AnimationRootNode =
  if isNil(animationNodeBlendSpace2DGetBlendPointNodeMethodBind):
    animationNodeBlendSpace2DGetBlendPointNodeMethodBind = getMethod(
        cstring"AnimationNodeBlendSpace2D", cstring"get_blend_point_node")
  var
    godotBoundArg0 = 54'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  animationNodeBlendSpace2DGetBlendPointNodeMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

proc `blendPoint54node=`(self: AnimationNodeBlendSpace2D; val: AnimationRootNode) =
  if isNil(animationNodeBlendSpace2DUnderscoreaddBlendPointMethodBind):
    animationNodeBlendSpace2DUnderscoreaddBlendPointMethodBind = getMethod(
        cstring"AnimationNodeBlendSpace2D", cstring"_add_blend_point")
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
  animationNodeBlendSpace2DUnderscoreaddBlendPointMethodBind.ptrCall(
      self.godotObject, argsToPassToGodot, ptrCallRet)

proc blendPoint54pos(self: AnimationNodeBlendSpace2D): Vector2 =
  if isNil(animationNodeBlendSpace2DGetBlendPointPositionMethodBind):
    animationNodeBlendSpace2DGetBlendPointPositionMethodBind = getMethod(
        cstring"AnimationNodeBlendSpace2D", cstring"get_blend_point_position")
  var
    godotBoundArg0 = 54'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animationNodeBlendSpace2DGetBlendPointPositionMethodBind.ptrCall(
      self.godotObject, argsToPassToGodot, ptrCallRet)

proc `blendPoint54pos=`(self: AnimationNodeBlendSpace2D; val: Vector2) =
  if isNil(animationNodeBlendSpace2DSetBlendPointPositionMethodBind):
    animationNodeBlendSpace2DSetBlendPointPositionMethodBind = getMethod(
        cstring"AnimationNodeBlendSpace2D", cstring"set_blend_point_position")
  var
    godotBoundArg0 = 54'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  animationNodeBlendSpace2DSetBlendPointPositionMethodBind.ptrCall(
      self.godotObject, argsToPassToGodot, ptrCallRet)

proc blendPoint55node(self: AnimationNodeBlendSpace2D): AnimationRootNode =
  if isNil(animationNodeBlendSpace2DGetBlendPointNodeMethodBind):
    animationNodeBlendSpace2DGetBlendPointNodeMethodBind = getMethod(
        cstring"AnimationNodeBlendSpace2D", cstring"get_blend_point_node")
  var
    godotBoundArg0 = 55'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  animationNodeBlendSpace2DGetBlendPointNodeMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

proc `blendPoint55node=`(self: AnimationNodeBlendSpace2D; val: AnimationRootNode) =
  if isNil(animationNodeBlendSpace2DUnderscoreaddBlendPointMethodBind):
    animationNodeBlendSpace2DUnderscoreaddBlendPointMethodBind = getMethod(
        cstring"AnimationNodeBlendSpace2D", cstring"_add_blend_point")
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
  animationNodeBlendSpace2DUnderscoreaddBlendPointMethodBind.ptrCall(
      self.godotObject, argsToPassToGodot, ptrCallRet)

proc blendPoint55pos(self: AnimationNodeBlendSpace2D): Vector2 =
  if isNil(animationNodeBlendSpace2DGetBlendPointPositionMethodBind):
    animationNodeBlendSpace2DGetBlendPointPositionMethodBind = getMethod(
        cstring"AnimationNodeBlendSpace2D", cstring"get_blend_point_position")
  var
    godotBoundArg0 = 55'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animationNodeBlendSpace2DGetBlendPointPositionMethodBind.ptrCall(
      self.godotObject, argsToPassToGodot, ptrCallRet)

proc `blendPoint55pos=`(self: AnimationNodeBlendSpace2D; val: Vector2) =
  if isNil(animationNodeBlendSpace2DSetBlendPointPositionMethodBind):
    animationNodeBlendSpace2DSetBlendPointPositionMethodBind = getMethod(
        cstring"AnimationNodeBlendSpace2D", cstring"set_blend_point_position")
  var
    godotBoundArg0 = 55'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  animationNodeBlendSpace2DSetBlendPointPositionMethodBind.ptrCall(
      self.godotObject, argsToPassToGodot, ptrCallRet)

proc blendPoint56node(self: AnimationNodeBlendSpace2D): AnimationRootNode =
  if isNil(animationNodeBlendSpace2DGetBlendPointNodeMethodBind):
    animationNodeBlendSpace2DGetBlendPointNodeMethodBind = getMethod(
        cstring"AnimationNodeBlendSpace2D", cstring"get_blend_point_node")
  var
    godotBoundArg0 = 56'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  animationNodeBlendSpace2DGetBlendPointNodeMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

proc `blendPoint56node=`(self: AnimationNodeBlendSpace2D; val: AnimationRootNode) =
  if isNil(animationNodeBlendSpace2DUnderscoreaddBlendPointMethodBind):
    animationNodeBlendSpace2DUnderscoreaddBlendPointMethodBind = getMethod(
        cstring"AnimationNodeBlendSpace2D", cstring"_add_blend_point")
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
  animationNodeBlendSpace2DUnderscoreaddBlendPointMethodBind.ptrCall(
      self.godotObject, argsToPassToGodot, ptrCallRet)

proc blendPoint56pos(self: AnimationNodeBlendSpace2D): Vector2 =
  if isNil(animationNodeBlendSpace2DGetBlendPointPositionMethodBind):
    animationNodeBlendSpace2DGetBlendPointPositionMethodBind = getMethod(
        cstring"AnimationNodeBlendSpace2D", cstring"get_blend_point_position")
  var
    godotBoundArg0 = 56'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animationNodeBlendSpace2DGetBlendPointPositionMethodBind.ptrCall(
      self.godotObject, argsToPassToGodot, ptrCallRet)

proc `blendPoint56pos=`(self: AnimationNodeBlendSpace2D; val: Vector2) =
  if isNil(animationNodeBlendSpace2DSetBlendPointPositionMethodBind):
    animationNodeBlendSpace2DSetBlendPointPositionMethodBind = getMethod(
        cstring"AnimationNodeBlendSpace2D", cstring"set_blend_point_position")
  var
    godotBoundArg0 = 56'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  animationNodeBlendSpace2DSetBlendPointPositionMethodBind.ptrCall(
      self.godotObject, argsToPassToGodot, ptrCallRet)

proc blendPoint57node(self: AnimationNodeBlendSpace2D): AnimationRootNode =
  if isNil(animationNodeBlendSpace2DGetBlendPointNodeMethodBind):
    animationNodeBlendSpace2DGetBlendPointNodeMethodBind = getMethod(
        cstring"AnimationNodeBlendSpace2D", cstring"get_blend_point_node")
  var
    godotBoundArg0 = 57'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  animationNodeBlendSpace2DGetBlendPointNodeMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

proc `blendPoint57node=`(self: AnimationNodeBlendSpace2D; val: AnimationRootNode) =
  if isNil(animationNodeBlendSpace2DUnderscoreaddBlendPointMethodBind):
    animationNodeBlendSpace2DUnderscoreaddBlendPointMethodBind = getMethod(
        cstring"AnimationNodeBlendSpace2D", cstring"_add_blend_point")
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
  animationNodeBlendSpace2DUnderscoreaddBlendPointMethodBind.ptrCall(
      self.godotObject, argsToPassToGodot, ptrCallRet)

proc blendPoint57pos(self: AnimationNodeBlendSpace2D): Vector2 =
  if isNil(animationNodeBlendSpace2DGetBlendPointPositionMethodBind):
    animationNodeBlendSpace2DGetBlendPointPositionMethodBind = getMethod(
        cstring"AnimationNodeBlendSpace2D", cstring"get_blend_point_position")
  var
    godotBoundArg0 = 57'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animationNodeBlendSpace2DGetBlendPointPositionMethodBind.ptrCall(
      self.godotObject, argsToPassToGodot, ptrCallRet)

proc `blendPoint57pos=`(self: AnimationNodeBlendSpace2D; val: Vector2) =
  if isNil(animationNodeBlendSpace2DSetBlendPointPositionMethodBind):
    animationNodeBlendSpace2DSetBlendPointPositionMethodBind = getMethod(
        cstring"AnimationNodeBlendSpace2D", cstring"set_blend_point_position")
  var
    godotBoundArg0 = 57'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  animationNodeBlendSpace2DSetBlendPointPositionMethodBind.ptrCall(
      self.godotObject, argsToPassToGodot, ptrCallRet)

proc blendPoint58node(self: AnimationNodeBlendSpace2D): AnimationRootNode =
  if isNil(animationNodeBlendSpace2DGetBlendPointNodeMethodBind):
    animationNodeBlendSpace2DGetBlendPointNodeMethodBind = getMethod(
        cstring"AnimationNodeBlendSpace2D", cstring"get_blend_point_node")
  var
    godotBoundArg0 = 58'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  animationNodeBlendSpace2DGetBlendPointNodeMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

proc `blendPoint58node=`(self: AnimationNodeBlendSpace2D; val: AnimationRootNode) =
  if isNil(animationNodeBlendSpace2DUnderscoreaddBlendPointMethodBind):
    animationNodeBlendSpace2DUnderscoreaddBlendPointMethodBind = getMethod(
        cstring"AnimationNodeBlendSpace2D", cstring"_add_blend_point")
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
  animationNodeBlendSpace2DUnderscoreaddBlendPointMethodBind.ptrCall(
      self.godotObject, argsToPassToGodot, ptrCallRet)

proc blendPoint58pos(self: AnimationNodeBlendSpace2D): Vector2 =
  if isNil(animationNodeBlendSpace2DGetBlendPointPositionMethodBind):
    animationNodeBlendSpace2DGetBlendPointPositionMethodBind = getMethod(
        cstring"AnimationNodeBlendSpace2D", cstring"get_blend_point_position")
  var
    godotBoundArg0 = 58'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animationNodeBlendSpace2DGetBlendPointPositionMethodBind.ptrCall(
      self.godotObject, argsToPassToGodot, ptrCallRet)

proc `blendPoint58pos=`(self: AnimationNodeBlendSpace2D; val: Vector2) =
  if isNil(animationNodeBlendSpace2DSetBlendPointPositionMethodBind):
    animationNodeBlendSpace2DSetBlendPointPositionMethodBind = getMethod(
        cstring"AnimationNodeBlendSpace2D", cstring"set_blend_point_position")
  var
    godotBoundArg0 = 58'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  animationNodeBlendSpace2DSetBlendPointPositionMethodBind.ptrCall(
      self.godotObject, argsToPassToGodot, ptrCallRet)

proc blendPoint59node(self: AnimationNodeBlendSpace2D): AnimationRootNode =
  if isNil(animationNodeBlendSpace2DGetBlendPointNodeMethodBind):
    animationNodeBlendSpace2DGetBlendPointNodeMethodBind = getMethod(
        cstring"AnimationNodeBlendSpace2D", cstring"get_blend_point_node")
  var
    godotBoundArg0 = 59'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  animationNodeBlendSpace2DGetBlendPointNodeMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

proc `blendPoint59node=`(self: AnimationNodeBlendSpace2D; val: AnimationRootNode) =
  if isNil(animationNodeBlendSpace2DUnderscoreaddBlendPointMethodBind):
    animationNodeBlendSpace2DUnderscoreaddBlendPointMethodBind = getMethod(
        cstring"AnimationNodeBlendSpace2D", cstring"_add_blend_point")
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
  animationNodeBlendSpace2DUnderscoreaddBlendPointMethodBind.ptrCall(
      self.godotObject, argsToPassToGodot, ptrCallRet)

proc blendPoint59pos(self: AnimationNodeBlendSpace2D): Vector2 =
  if isNil(animationNodeBlendSpace2DGetBlendPointPositionMethodBind):
    animationNodeBlendSpace2DGetBlendPointPositionMethodBind = getMethod(
        cstring"AnimationNodeBlendSpace2D", cstring"get_blend_point_position")
  var
    godotBoundArg0 = 59'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animationNodeBlendSpace2DGetBlendPointPositionMethodBind.ptrCall(
      self.godotObject, argsToPassToGodot, ptrCallRet)

proc `blendPoint59pos=`(self: AnimationNodeBlendSpace2D; val: Vector2) =
  if isNil(animationNodeBlendSpace2DSetBlendPointPositionMethodBind):
    animationNodeBlendSpace2DSetBlendPointPositionMethodBind = getMethod(
        cstring"AnimationNodeBlendSpace2D", cstring"set_blend_point_position")
  var
    godotBoundArg0 = 59'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  animationNodeBlendSpace2DSetBlendPointPositionMethodBind.ptrCall(
      self.godotObject, argsToPassToGodot, ptrCallRet)

proc blendPoint6node(self: AnimationNodeBlendSpace2D): AnimationRootNode =
  if isNil(animationNodeBlendSpace2DGetBlendPointNodeMethodBind):
    animationNodeBlendSpace2DGetBlendPointNodeMethodBind = getMethod(
        cstring"AnimationNodeBlendSpace2D", cstring"get_blend_point_node")
  var
    godotBoundArg0 = 6'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  animationNodeBlendSpace2DGetBlendPointNodeMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

proc `blendPoint6node=`(self: AnimationNodeBlendSpace2D; val: AnimationRootNode) =
  if isNil(animationNodeBlendSpace2DUnderscoreaddBlendPointMethodBind):
    animationNodeBlendSpace2DUnderscoreaddBlendPointMethodBind = getMethod(
        cstring"AnimationNodeBlendSpace2D", cstring"_add_blend_point")
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
  animationNodeBlendSpace2DUnderscoreaddBlendPointMethodBind.ptrCall(
      self.godotObject, argsToPassToGodot, ptrCallRet)

proc blendPoint6pos(self: AnimationNodeBlendSpace2D): Vector2 =
  if isNil(animationNodeBlendSpace2DGetBlendPointPositionMethodBind):
    animationNodeBlendSpace2DGetBlendPointPositionMethodBind = getMethod(
        cstring"AnimationNodeBlendSpace2D", cstring"get_blend_point_position")
  var
    godotBoundArg0 = 6'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animationNodeBlendSpace2DGetBlendPointPositionMethodBind.ptrCall(
      self.godotObject, argsToPassToGodot, ptrCallRet)

proc `blendPoint6pos=`(self: AnimationNodeBlendSpace2D; val: Vector2) =
  if isNil(animationNodeBlendSpace2DSetBlendPointPositionMethodBind):
    animationNodeBlendSpace2DSetBlendPointPositionMethodBind = getMethod(
        cstring"AnimationNodeBlendSpace2D", cstring"set_blend_point_position")
  var
    godotBoundArg0 = 6'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  animationNodeBlendSpace2DSetBlendPointPositionMethodBind.ptrCall(
      self.godotObject, argsToPassToGodot, ptrCallRet)

proc blendPoint60node(self: AnimationNodeBlendSpace2D): AnimationRootNode =
  if isNil(animationNodeBlendSpace2DGetBlendPointNodeMethodBind):
    animationNodeBlendSpace2DGetBlendPointNodeMethodBind = getMethod(
        cstring"AnimationNodeBlendSpace2D", cstring"get_blend_point_node")
  var
    godotBoundArg0 = 60'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  animationNodeBlendSpace2DGetBlendPointNodeMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

proc `blendPoint60node=`(self: AnimationNodeBlendSpace2D; val: AnimationRootNode) =
  if isNil(animationNodeBlendSpace2DUnderscoreaddBlendPointMethodBind):
    animationNodeBlendSpace2DUnderscoreaddBlendPointMethodBind = getMethod(
        cstring"AnimationNodeBlendSpace2D", cstring"_add_blend_point")
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
  animationNodeBlendSpace2DUnderscoreaddBlendPointMethodBind.ptrCall(
      self.godotObject, argsToPassToGodot, ptrCallRet)

proc blendPoint60pos(self: AnimationNodeBlendSpace2D): Vector2 =
  if isNil(animationNodeBlendSpace2DGetBlendPointPositionMethodBind):
    animationNodeBlendSpace2DGetBlendPointPositionMethodBind = getMethod(
        cstring"AnimationNodeBlendSpace2D", cstring"get_blend_point_position")
  var
    godotBoundArg0 = 60'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animationNodeBlendSpace2DGetBlendPointPositionMethodBind.ptrCall(
      self.godotObject, argsToPassToGodot, ptrCallRet)

proc `blendPoint60pos=`(self: AnimationNodeBlendSpace2D; val: Vector2) =
  if isNil(animationNodeBlendSpace2DSetBlendPointPositionMethodBind):
    animationNodeBlendSpace2DSetBlendPointPositionMethodBind = getMethod(
        cstring"AnimationNodeBlendSpace2D", cstring"set_blend_point_position")
  var
    godotBoundArg0 = 60'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  animationNodeBlendSpace2DSetBlendPointPositionMethodBind.ptrCall(
      self.godotObject, argsToPassToGodot, ptrCallRet)

proc blendPoint61node(self: AnimationNodeBlendSpace2D): AnimationRootNode =
  if isNil(animationNodeBlendSpace2DGetBlendPointNodeMethodBind):
    animationNodeBlendSpace2DGetBlendPointNodeMethodBind = getMethod(
        cstring"AnimationNodeBlendSpace2D", cstring"get_blend_point_node")
  var
    godotBoundArg0 = 61'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  animationNodeBlendSpace2DGetBlendPointNodeMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

proc `blendPoint61node=`(self: AnimationNodeBlendSpace2D; val: AnimationRootNode) =
  if isNil(animationNodeBlendSpace2DUnderscoreaddBlendPointMethodBind):
    animationNodeBlendSpace2DUnderscoreaddBlendPointMethodBind = getMethod(
        cstring"AnimationNodeBlendSpace2D", cstring"_add_blend_point")
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
  animationNodeBlendSpace2DUnderscoreaddBlendPointMethodBind.ptrCall(
      self.godotObject, argsToPassToGodot, ptrCallRet)

proc blendPoint61pos(self: AnimationNodeBlendSpace2D): Vector2 =
  if isNil(animationNodeBlendSpace2DGetBlendPointPositionMethodBind):
    animationNodeBlendSpace2DGetBlendPointPositionMethodBind = getMethod(
        cstring"AnimationNodeBlendSpace2D", cstring"get_blend_point_position")
  var
    godotBoundArg0 = 61'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animationNodeBlendSpace2DGetBlendPointPositionMethodBind.ptrCall(
      self.godotObject, argsToPassToGodot, ptrCallRet)

proc `blendPoint61pos=`(self: AnimationNodeBlendSpace2D; val: Vector2) =
  if isNil(animationNodeBlendSpace2DSetBlendPointPositionMethodBind):
    animationNodeBlendSpace2DSetBlendPointPositionMethodBind = getMethod(
        cstring"AnimationNodeBlendSpace2D", cstring"set_blend_point_position")
  var
    godotBoundArg0 = 61'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  animationNodeBlendSpace2DSetBlendPointPositionMethodBind.ptrCall(
      self.godotObject, argsToPassToGodot, ptrCallRet)

proc blendPoint62node(self: AnimationNodeBlendSpace2D): AnimationRootNode =
  if isNil(animationNodeBlendSpace2DGetBlendPointNodeMethodBind):
    animationNodeBlendSpace2DGetBlendPointNodeMethodBind = getMethod(
        cstring"AnimationNodeBlendSpace2D", cstring"get_blend_point_node")
  var
    godotBoundArg0 = 62'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  animationNodeBlendSpace2DGetBlendPointNodeMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

proc `blendPoint62node=`(self: AnimationNodeBlendSpace2D; val: AnimationRootNode) =
  if isNil(animationNodeBlendSpace2DUnderscoreaddBlendPointMethodBind):
    animationNodeBlendSpace2DUnderscoreaddBlendPointMethodBind = getMethod(
        cstring"AnimationNodeBlendSpace2D", cstring"_add_blend_point")
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
  animationNodeBlendSpace2DUnderscoreaddBlendPointMethodBind.ptrCall(
      self.godotObject, argsToPassToGodot, ptrCallRet)

proc blendPoint62pos(self: AnimationNodeBlendSpace2D): Vector2 =
  if isNil(animationNodeBlendSpace2DGetBlendPointPositionMethodBind):
    animationNodeBlendSpace2DGetBlendPointPositionMethodBind = getMethod(
        cstring"AnimationNodeBlendSpace2D", cstring"get_blend_point_position")
  var
    godotBoundArg0 = 62'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animationNodeBlendSpace2DGetBlendPointPositionMethodBind.ptrCall(
      self.godotObject, argsToPassToGodot, ptrCallRet)

proc `blendPoint62pos=`(self: AnimationNodeBlendSpace2D; val: Vector2) =
  if isNil(animationNodeBlendSpace2DSetBlendPointPositionMethodBind):
    animationNodeBlendSpace2DSetBlendPointPositionMethodBind = getMethod(
        cstring"AnimationNodeBlendSpace2D", cstring"set_blend_point_position")
  var
    godotBoundArg0 = 62'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  animationNodeBlendSpace2DSetBlendPointPositionMethodBind.ptrCall(
      self.godotObject, argsToPassToGodot, ptrCallRet)

proc blendPoint63node(self: AnimationNodeBlendSpace2D): AnimationRootNode =
  if isNil(animationNodeBlendSpace2DGetBlendPointNodeMethodBind):
    animationNodeBlendSpace2DGetBlendPointNodeMethodBind = getMethod(
        cstring"AnimationNodeBlendSpace2D", cstring"get_blend_point_node")
  var
    godotBoundArg0 = 63'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  animationNodeBlendSpace2DGetBlendPointNodeMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

proc `blendPoint63node=`(self: AnimationNodeBlendSpace2D; val: AnimationRootNode) =
  if isNil(animationNodeBlendSpace2DUnderscoreaddBlendPointMethodBind):
    animationNodeBlendSpace2DUnderscoreaddBlendPointMethodBind = getMethod(
        cstring"AnimationNodeBlendSpace2D", cstring"_add_blend_point")
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
  animationNodeBlendSpace2DUnderscoreaddBlendPointMethodBind.ptrCall(
      self.godotObject, argsToPassToGodot, ptrCallRet)

proc blendPoint63pos(self: AnimationNodeBlendSpace2D): Vector2 =
  if isNil(animationNodeBlendSpace2DGetBlendPointPositionMethodBind):
    animationNodeBlendSpace2DGetBlendPointPositionMethodBind = getMethod(
        cstring"AnimationNodeBlendSpace2D", cstring"get_blend_point_position")
  var
    godotBoundArg0 = 63'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animationNodeBlendSpace2DGetBlendPointPositionMethodBind.ptrCall(
      self.godotObject, argsToPassToGodot, ptrCallRet)

proc `blendPoint63pos=`(self: AnimationNodeBlendSpace2D; val: Vector2) =
  if isNil(animationNodeBlendSpace2DSetBlendPointPositionMethodBind):
    animationNodeBlendSpace2DSetBlendPointPositionMethodBind = getMethod(
        cstring"AnimationNodeBlendSpace2D", cstring"set_blend_point_position")
  var
    godotBoundArg0 = 63'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  animationNodeBlendSpace2DSetBlendPointPositionMethodBind.ptrCall(
      self.godotObject, argsToPassToGodot, ptrCallRet)

proc blendPoint7node(self: AnimationNodeBlendSpace2D): AnimationRootNode =
  if isNil(animationNodeBlendSpace2DGetBlendPointNodeMethodBind):
    animationNodeBlendSpace2DGetBlendPointNodeMethodBind = getMethod(
        cstring"AnimationNodeBlendSpace2D", cstring"get_blend_point_node")
  var
    godotBoundArg0 = 7'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  animationNodeBlendSpace2DGetBlendPointNodeMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

proc `blendPoint7node=`(self: AnimationNodeBlendSpace2D; val: AnimationRootNode) =
  if isNil(animationNodeBlendSpace2DUnderscoreaddBlendPointMethodBind):
    animationNodeBlendSpace2DUnderscoreaddBlendPointMethodBind = getMethod(
        cstring"AnimationNodeBlendSpace2D", cstring"_add_blend_point")
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
  animationNodeBlendSpace2DUnderscoreaddBlendPointMethodBind.ptrCall(
      self.godotObject, argsToPassToGodot, ptrCallRet)

proc blendPoint7pos(self: AnimationNodeBlendSpace2D): Vector2 =
  if isNil(animationNodeBlendSpace2DGetBlendPointPositionMethodBind):
    animationNodeBlendSpace2DGetBlendPointPositionMethodBind = getMethod(
        cstring"AnimationNodeBlendSpace2D", cstring"get_blend_point_position")
  var
    godotBoundArg0 = 7'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animationNodeBlendSpace2DGetBlendPointPositionMethodBind.ptrCall(
      self.godotObject, argsToPassToGodot, ptrCallRet)

proc `blendPoint7pos=`(self: AnimationNodeBlendSpace2D; val: Vector2) =
  if isNil(animationNodeBlendSpace2DSetBlendPointPositionMethodBind):
    animationNodeBlendSpace2DSetBlendPointPositionMethodBind = getMethod(
        cstring"AnimationNodeBlendSpace2D", cstring"set_blend_point_position")
  var
    godotBoundArg0 = 7'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  animationNodeBlendSpace2DSetBlendPointPositionMethodBind.ptrCall(
      self.godotObject, argsToPassToGodot, ptrCallRet)

proc blendPoint8node(self: AnimationNodeBlendSpace2D): AnimationRootNode =
  if isNil(animationNodeBlendSpace2DGetBlendPointNodeMethodBind):
    animationNodeBlendSpace2DGetBlendPointNodeMethodBind = getMethod(
        cstring"AnimationNodeBlendSpace2D", cstring"get_blend_point_node")
  var
    godotBoundArg0 = 8'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  animationNodeBlendSpace2DGetBlendPointNodeMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

proc `blendPoint8node=`(self: AnimationNodeBlendSpace2D; val: AnimationRootNode) =
  if isNil(animationNodeBlendSpace2DUnderscoreaddBlendPointMethodBind):
    animationNodeBlendSpace2DUnderscoreaddBlendPointMethodBind = getMethod(
        cstring"AnimationNodeBlendSpace2D", cstring"_add_blend_point")
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
  animationNodeBlendSpace2DUnderscoreaddBlendPointMethodBind.ptrCall(
      self.godotObject, argsToPassToGodot, ptrCallRet)

proc blendPoint8pos(self: AnimationNodeBlendSpace2D): Vector2 =
  if isNil(animationNodeBlendSpace2DGetBlendPointPositionMethodBind):
    animationNodeBlendSpace2DGetBlendPointPositionMethodBind = getMethod(
        cstring"AnimationNodeBlendSpace2D", cstring"get_blend_point_position")
  var
    godotBoundArg0 = 8'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animationNodeBlendSpace2DGetBlendPointPositionMethodBind.ptrCall(
      self.godotObject, argsToPassToGodot, ptrCallRet)

proc `blendPoint8pos=`(self: AnimationNodeBlendSpace2D; val: Vector2) =
  if isNil(animationNodeBlendSpace2DSetBlendPointPositionMethodBind):
    animationNodeBlendSpace2DSetBlendPointPositionMethodBind = getMethod(
        cstring"AnimationNodeBlendSpace2D", cstring"set_blend_point_position")
  var
    godotBoundArg0 = 8'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  animationNodeBlendSpace2DSetBlendPointPositionMethodBind.ptrCall(
      self.godotObject, argsToPassToGodot, ptrCallRet)

proc blendPoint9node(self: AnimationNodeBlendSpace2D): AnimationRootNode =
  if isNil(animationNodeBlendSpace2DGetBlendPointNodeMethodBind):
    animationNodeBlendSpace2DGetBlendPointNodeMethodBind = getMethod(
        cstring"AnimationNodeBlendSpace2D", cstring"get_blend_point_node")
  var
    godotBoundArg0 = 9'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  animationNodeBlendSpace2DGetBlendPointNodeMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

proc `blendPoint9node=`(self: AnimationNodeBlendSpace2D; val: AnimationRootNode) =
  if isNil(animationNodeBlendSpace2DUnderscoreaddBlendPointMethodBind):
    animationNodeBlendSpace2DUnderscoreaddBlendPointMethodBind = getMethod(
        cstring"AnimationNodeBlendSpace2D", cstring"_add_blend_point")
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
  animationNodeBlendSpace2DUnderscoreaddBlendPointMethodBind.ptrCall(
      self.godotObject, argsToPassToGodot, ptrCallRet)

proc blendPoint9pos(self: AnimationNodeBlendSpace2D): Vector2 =
  if isNil(animationNodeBlendSpace2DGetBlendPointPositionMethodBind):
    animationNodeBlendSpace2DGetBlendPointPositionMethodBind = getMethod(
        cstring"AnimationNodeBlendSpace2D", cstring"get_blend_point_position")
  var
    godotBoundArg0 = 9'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animationNodeBlendSpace2DGetBlendPointPositionMethodBind.ptrCall(
      self.godotObject, argsToPassToGodot, ptrCallRet)

proc `blendPoint9pos=`(self: AnimationNodeBlendSpace2D; val: Vector2) =
  if isNil(animationNodeBlendSpace2DSetBlendPointPositionMethodBind):
    animationNodeBlendSpace2DSetBlendPointPositionMethodBind = getMethod(
        cstring"AnimationNodeBlendSpace2D", cstring"set_blend_point_position")
  var
    godotBoundArg0 = 9'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  animationNodeBlendSpace2DSetBlendPointPositionMethodBind.ptrCall(
      self.godotObject, argsToPassToGodot, ptrCallRet)

var animationNodeBlendSpace2DGetMaxSpaceMethodBind {.threadvar.}: ptr GodotMethodBind
proc maxSpace(self: AnimationNodeBlendSpace2D): Vector2 =
  if isNil(animationNodeBlendSpace2DGetMaxSpaceMethodBind):
    animationNodeBlendSpace2DGetMaxSpaceMethodBind = getMethod(
        cstring"AnimationNodeBlendSpace2D", cstring"get_max_space")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animationNodeBlendSpace2DGetMaxSpaceMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var animationNodeBlendSpace2DSetMaxSpaceMethodBind {.threadvar.}: ptr GodotMethodBind
proc `maxSpace=`(self: AnimationNodeBlendSpace2D; val: Vector2) =
  if isNil(animationNodeBlendSpace2DSetMaxSpaceMethodBind):
    animationNodeBlendSpace2DSetMaxSpaceMethodBind = getMethod(
        cstring"AnimationNodeBlendSpace2D", cstring"set_max_space")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  animationNodeBlendSpace2DSetMaxSpaceMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var animationNodeBlendSpace2DGetMinSpaceMethodBind {.threadvar.}: ptr GodotMethodBind
proc minSpace(self: AnimationNodeBlendSpace2D): Vector2 =
  if isNil(animationNodeBlendSpace2DGetMinSpaceMethodBind):
    animationNodeBlendSpace2DGetMinSpaceMethodBind = getMethod(
        cstring"AnimationNodeBlendSpace2D", cstring"get_min_space")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animationNodeBlendSpace2DGetMinSpaceMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var animationNodeBlendSpace2DSetMinSpaceMethodBind {.threadvar.}: ptr GodotMethodBind
proc `minSpace=`(self: AnimationNodeBlendSpace2D; val: Vector2) =
  if isNil(animationNodeBlendSpace2DSetMinSpaceMethodBind):
    animationNodeBlendSpace2DSetMinSpaceMethodBind = getMethod(
        cstring"AnimationNodeBlendSpace2D", cstring"set_min_space")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  animationNodeBlendSpace2DSetMinSpaceMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var animationNodeBlendSpace2DGetSnapMethodBind {.threadvar.}: ptr GodotMethodBind
proc snap(self: AnimationNodeBlendSpace2D): Vector2 =
  if isNil(animationNodeBlendSpace2DGetSnapMethodBind):
    animationNodeBlendSpace2DGetSnapMethodBind = getMethod(
        cstring"AnimationNodeBlendSpace2D", cstring"get_snap")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animationNodeBlendSpace2DGetSnapMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var animationNodeBlendSpace2DSetSnapMethodBind {.threadvar.}: ptr GodotMethodBind
proc `snap=`(self: AnimationNodeBlendSpace2D; val: Vector2) =
  if isNil(animationNodeBlendSpace2DSetSnapMethodBind):
    animationNodeBlendSpace2DSetSnapMethodBind = getMethod(
        cstring"AnimationNodeBlendSpace2D", cstring"set_snap")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  animationNodeBlendSpace2DSetSnapMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var animationNodeBlendSpace2DUnderscoregetTrianglesMethodBind {.threadvar.}: ptr GodotMethodBind
proc triangles(self: AnimationNodeBlendSpace2D): PoolIntArray =
  if isNil(animationNodeBlendSpace2DUnderscoregetTrianglesMethodBind):
    animationNodeBlendSpace2DUnderscoregetTrianglesMethodBind = getMethod(
        cstring"AnimationNodeBlendSpace2D", cstring"_get_triangles")
  var ptrCallRet: pointer
  var ptrCallVal: GodotPoolIntArray
  ptrCallRet = addr(ptrCallVal)
  animationNodeBlendSpace2DUnderscoregetTrianglesMethodBind.ptrCall(
      self.godotObject, nil, ptrCallRet)
  result = newPoolIntArray(ptrCallVal)

var animationNodeBlendSpace2DUnderscoresetTrianglesMethodBind {.threadvar.}: ptr GodotMethodBind
proc `triangles=`(self: AnimationNodeBlendSpace2D; val: PoolIntArray) =
  if isNil(animationNodeBlendSpace2DUnderscoresetTrianglesMethodBind):
    animationNodeBlendSpace2DUnderscoresetTrianglesMethodBind = getMethod(
        cstring"AnimationNodeBlendSpace2D", cstring"_set_triangles")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = val.godotPoolIntArray
  var ptrCallRet: pointer
  animationNodeBlendSpace2DUnderscoresetTrianglesMethodBind.ptrCall(
      self.godotObject, argsToPassToGodot, ptrCallRet)

var animationNodeBlendSpace2DGetXLabelMethodBind {.threadvar.}: ptr GodotMethodBind
proc xLabel(self: AnimationNodeBlendSpace2D): string =
  if isNil(animationNodeBlendSpace2DGetXLabelMethodBind):
    animationNodeBlendSpace2DGetXLabelMethodBind = getMethod(
        cstring"AnimationNodeBlendSpace2D", cstring"get_x_label")
  var ptrCallRet: pointer
  var ptrCallVal: GodotString
  ptrCallRet = addr(ptrCallVal)
  animationNodeBlendSpace2DGetXLabelMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)
  result = $ptrCallVal
  deinit(ptrCallVal)

var animationNodeBlendSpace2DSetXLabelMethodBind {.threadvar.}: ptr GodotMethodBind
proc `xLabel=`(self: AnimationNodeBlendSpace2D; val: string) =
  if isNil(animationNodeBlendSpace2DSetXLabelMethodBind):
    animationNodeBlendSpace2DSetXLabelMethodBind = getMethod(
        cstring"AnimationNodeBlendSpace2D", cstring"set_x_label")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(val)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  animationNodeBlendSpace2DSetXLabelMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)

var animationNodeBlendSpace2DGetYLabelMethodBind {.threadvar.}: ptr GodotMethodBind
proc yLabel(self: AnimationNodeBlendSpace2D): string =
  if isNil(animationNodeBlendSpace2DGetYLabelMethodBind):
    animationNodeBlendSpace2DGetYLabelMethodBind = getMethod(
        cstring"AnimationNodeBlendSpace2D", cstring"get_y_label")
  var ptrCallRet: pointer
  var ptrCallVal: GodotString
  ptrCallRet = addr(ptrCallVal)
  animationNodeBlendSpace2DGetYLabelMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)
  result = $ptrCallVal
  deinit(ptrCallVal)

var animationNodeBlendSpace2DSetYLabelMethodBind {.threadvar.}: ptr GodotMethodBind
proc `yLabel=`(self: AnimationNodeBlendSpace2D; val: string) =
  if isNil(animationNodeBlendSpace2DSetYLabelMethodBind):
    animationNodeBlendSpace2DSetYLabelMethodBind = getMethod(
        cstring"AnimationNodeBlendSpace2D", cstring"set_y_label")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(val)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  animationNodeBlendSpace2DSetYLabelMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)

var animationNodeBlendSpace2DUnderscoretreeChangedMethodBind {.threadvar.}: ptr GodotMethodBind
method treeChanged(self: AnimationNodeBlendSpace2D) =
  if isNil(animationNodeBlendSpace2DUnderscoretreeChangedMethodBind):
    animationNodeBlendSpace2DUnderscoretreeChangedMethodBind = getMethod(
        cstring"AnimationNodeBlendSpace2D", cstring"_tree_changed")
  var ptrCallRet: pointer
  animationNodeBlendSpace2DUnderscoretreeChangedMethodBind.ptrCall(
      self.godotObject, nil, ptrCallRet)

var animationNodeBlendSpace2DUnderscoreupdateTrianglesMethodBind {.threadvar.}: ptr GodotMethodBind
method updateTriangles(self: AnimationNodeBlendSpace2D) =
  if isNil(animationNodeBlendSpace2DUnderscoreupdateTrianglesMethodBind):
    animationNodeBlendSpace2DUnderscoreupdateTrianglesMethodBind = getMethod(
        cstring"AnimationNodeBlendSpace2D", cstring"_update_triangles")
  var ptrCallRet: pointer
  animationNodeBlendSpace2DUnderscoreupdateTrianglesMethodBind.ptrCall(
      self.godotObject, nil, ptrCallRet)

var animationNodeBlendSpace2DAddBlendPointMethodBind {.threadvar.}: ptr GodotMethodBind
proc addBlendPointImpl(self: AnimationNodeBlendSpace2D; node: AnimationRootNode;
                      pos: Vector2; atIndex: int64 = -1'i64) =
  if isNil(animationNodeBlendSpace2DAddBlendPointMethodBind):
    animationNodeBlendSpace2DAddBlendPointMethodBind = getMethod(
        cstring"AnimationNodeBlendSpace2D", cstring"add_blend_point")
  var
    argsStatic: array[3, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not node.isNil:
    node.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  argsToPassToGodot[][1] = unsafeAddr(pos)
  argsToPassToGodot[][2] = unsafeAddr(atIndex)
  var ptrCallRet: pointer
  animationNodeBlendSpace2DAddBlendPointMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var animationNodeBlendSpace2DAddTriangleMethodBind {.threadvar.}: ptr GodotMethodBind
proc addTriangle(self: AnimationNodeBlendSpace2D; x: int64; y: int64; z: int64;
                atIndex: int64 = -1'i64) =
  if isNil(animationNodeBlendSpace2DAddTriangleMethodBind):
    animationNodeBlendSpace2DAddTriangleMethodBind = getMethod(
        cstring"AnimationNodeBlendSpace2D", cstring"add_triangle")
  var
    argsStatic: array[4, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(x)
  argsToPassToGodot[][1] = unsafeAddr(y)
  argsToPassToGodot[][2] = unsafeAddr(z)
  argsToPassToGodot[][3] = unsafeAddr(atIndex)
  var ptrCallRet: pointer
  animationNodeBlendSpace2DAddTriangleMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var animationNodeBlendSpace2DGetBlendPointCountMethodBind {.threadvar.}: ptr GodotMethodBind
proc getBlendPointCount(self: AnimationNodeBlendSpace2D): int64 =
  if isNil(animationNodeBlendSpace2DGetBlendPointCountMethodBind):
    animationNodeBlendSpace2DGetBlendPointCountMethodBind = getMethod(
        cstring"AnimationNodeBlendSpace2D", cstring"get_blend_point_count")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animationNodeBlendSpace2DGetBlendPointCountMethodBind.ptrCall(
      self.godotObject, nil, ptrCallRet)

var animationNodeBlendSpace2DGetTriangleCountMethodBind {.threadvar.}: ptr GodotMethodBind
proc getTriangleCount(self: AnimationNodeBlendSpace2D): int64 =
  if isNil(animationNodeBlendSpace2DGetTriangleCountMethodBind):
    animationNodeBlendSpace2DGetTriangleCountMethodBind = getMethod(
        cstring"AnimationNodeBlendSpace2D", cstring"get_triangle_count")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animationNodeBlendSpace2DGetTriangleCountMethodBind.ptrCall(self.godotObject,
      nil, ptrCallRet)

var animationNodeBlendSpace2DGetTrianglePointMethodBind {.threadvar.}: ptr GodotMethodBind
proc getTrianglePoint(self: AnimationNodeBlendSpace2D; triangle: int64; point: int64): int64 =
  if isNil(animationNodeBlendSpace2DGetTrianglePointMethodBind):
    animationNodeBlendSpace2DGetTrianglePointMethodBind = getMethod(
        cstring"AnimationNodeBlendSpace2D", cstring"get_triangle_point")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(triangle)
  argsToPassToGodot[][1] = unsafeAddr(point)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animationNodeBlendSpace2DGetTrianglePointMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var animationNodeBlendSpace2DRemoveBlendPointMethodBind {.threadvar.}: ptr GodotMethodBind
proc removeBlendPoint(self: AnimationNodeBlendSpace2D; point: int64) =
  if isNil(animationNodeBlendSpace2DRemoveBlendPointMethodBind):
    animationNodeBlendSpace2DRemoveBlendPointMethodBind = getMethod(
        cstring"AnimationNodeBlendSpace2D", cstring"remove_blend_point")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(point)
  var ptrCallRet: pointer
  animationNodeBlendSpace2DRemoveBlendPointMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var animationNodeBlendSpace2DRemoveTriangleMethodBind {.threadvar.}: ptr GodotMethodBind
proc removeTriangle(self: AnimationNodeBlendSpace2D; triangle: int64) =
  if isNil(animationNodeBlendSpace2DRemoveTriangleMethodBind):
    animationNodeBlendSpace2DRemoveTriangleMethodBind = getMethod(
        cstring"AnimationNodeBlendSpace2D", cstring"remove_triangle")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(triangle)
  var ptrCallRet: pointer
  animationNodeBlendSpace2DRemoveTriangleMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var animationNodeBlendSpace2DSetBlendPointNodeMethodBind {.threadvar.}: ptr GodotMethodBind
proc setBlendPointNode(self: AnimationNodeBlendSpace2D; point: int64;
                      node: AnimationRootNode) =
  if isNil(animationNodeBlendSpace2DSetBlendPointNodeMethodBind):
    animationNodeBlendSpace2DSetBlendPointNodeMethodBind = getMethod(
        cstring"AnimationNodeBlendSpace2D", cstring"set_blend_point_node")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(point)
  let argToPassToGodot1 = if not node.isNil:
    node.godotObject
  else:
    nil
  argsToPassToGodot[][1] = argToPassToGodot1
  var ptrCallRet: pointer
  animationNodeBlendSpace2DSetBlendPointNodeMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
