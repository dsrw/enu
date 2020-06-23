
import
  godot

type
  Object* = ref object of NimGodotObject
    ## singleton: false
    ## instanciable: true
    ## is_reference: false
  
  Reference* = ref object of Object
    ## singleton: false
    ## instanciable: true
    ## is_reference: false
  
  Resource* = ref object of Reference
    ## singleton: false
    ## instanciable: true
    ## is_reference: true
  
  Node* = ref object of Object
    ## singleton: false
    ## instanciable: true
    ## is_reference: false
  
  CanvasItem* = ref object of Node
    ## singleton: false
    ## instanciable: false
    ## is_reference: false
  
  Spatial* = ref object of Node
    ## singleton: false
    ## instanciable: true
    ## is_reference: false
  
  Control* = ref object of CanvasItem
    ## singleton: false
    ## instanciable: true
    ## is_reference: false
  
  VisualShaderNode* = ref object of Resource
    ## singleton: false
    ## instanciable: false
    ## is_reference: true
  
  VisualScriptNode* = ref object of Resource
    ## singleton: false
    ## instanciable: false
    ## is_reference: true
  
  Node2D* = ref object of CanvasItem
    ## singleton: false
    ## instanciable: true
    ## is_reference: false
  
  VisualInstance* = ref object of Spatial
    ## singleton: false
    ## instanciable: false
    ## is_reference: false
  
  AudioEffect* = ref object of Resource
    ## singleton: false
    ## instanciable: false
    ## is_reference: true
  
  Container* = ref object of Control
    ## singleton: false
    ## instanciable: true
    ## is_reference: false
  
  GeometryInstance* = ref object of VisualInstance
    ## singleton: false
    ## instanciable: false
    ## is_reference: false
  
  AnimationNode* = ref object of Resource
    ## singleton: false
    ## instanciable: true
    ## is_reference: true
  
  InputEvent* = ref object of Resource
    ## singleton: false
    ## instanciable: false
    ## is_reference: true
  
  PacketPeer* = ref object of Reference
    ## singleton: false
    ## instanciable: false
    ## is_reference: true
  
  Texture* = ref object of Resource
    ## singleton: false
    ## instanciable: false
    ## is_reference: true
  
  Mesh* = ref object of Resource
    ## singleton: false
    ## instanciable: false
    ## is_reference: true
  
  Range* = ref object of Control
    ## singleton: false
    ## instanciable: false
    ## is_reference: false
  
  BaseButton* = ref object of Control
    ## singleton: false
    ## instanciable: false
    ## is_reference: false
  
  Popup* = ref object of Control
    ## singleton: false
    ## instanciable: true
    ## is_reference: false
  
  Shape* = ref object of Resource
    ## singleton: false
    ## instanciable: false
    ## is_reference: true
  
  Shape2D* = ref object of Resource
    ## singleton: false
    ## instanciable: false
    ## is_reference: true
  
  CSGShape* = ref object of GeometryInstance
    ## singleton: false
    ## instanciable: false
    ## is_reference: false
  
  PrimitiveMesh* = ref object of Mesh
    ## singleton: false
    ## instanciable: false
    ## is_reference: true
  
  VisualShaderNodeUniform* = ref object of VisualShaderNode
    ## singleton: false
    ## instanciable: false
    ## is_reference: true
  
  InputEventWithModifiers* = ref object of InputEvent
    ## singleton: false
    ## instanciable: false
    ## is_reference: true
  
  CollisionObject* = ref object of Spatial
    ## singleton: false
    ## instanciable: false
    ## is_reference: false
  
  AudioEffectFilter* = ref object of AudioEffect
    ## singleton: false
    ## instanciable: true
    ## is_reference: true
  
  NetworkedMultiplayerPeer* = ref object of PacketPeer
    ## singleton: false
    ## instanciable: false
    ## is_reference: true
  
  Button* = ref object of BaseButton
    ## singleton: false
    ## instanciable: true
    ## is_reference: false
  
  CSGPrimitive* = ref object of CSGShape
    ## singleton: false
    ## instanciable: false
    ## is_reference: false
  
  AudioStream* = ref object of Resource
    ## singleton: false
    ## instanciable: false
    ## is_reference: true
  
  CollisionObject2D* = ref object of Node2D
    ## singleton: false
    ## instanciable: false
    ## is_reference: false
  
  PhysicsBody* = ref object of CollisionObject
    ## singleton: false
    ## instanciable: false
    ## is_reference: false
  
  AnimationRootNode* = ref object of AnimationNode
    ## singleton: false
    ## instanciable: true
    ## is_reference: true
  
  Joint* = ref object of Spatial
    ## singleton: false
    ## instanciable: false
    ## is_reference: false
  
  WindowDialog* = ref object of Popup
    ## singleton: false
    ## instanciable: true
    ## is_reference: false
  
  StreamPeer* = ref object of Reference
    ## singleton: false
    ## instanciable: false
    ## is_reference: true
  
  Material* = ref object of Resource
    ## singleton: false
    ## instanciable: false
    ## is_reference: true
  
  StyleBox* = ref object of Resource
    ## singleton: false
    ## instanciable: false
    ## is_reference: true
  
  AcceptDialog* = ref object of WindowDialog
    ## singleton: false
    ## instanciable: true
    ## is_reference: false
  
  Script* = ref object of Resource
    ## singleton: false
    ## instanciable: false
    ## is_reference: true
  
  BoxContainer* = ref object of Container
    ## singleton: false
    ## instanciable: false
    ## is_reference: false
  
  VideoStream* = ref object of Resource
    ## singleton: false
    ## instanciable: false
    ## is_reference: true
  
  AudioEffectEQ* = ref object of AudioEffect
    ## singleton: false
    ## instanciable: true
    ## is_reference: true
  
  ConfirmationDialog* = ref object of AcceptDialog
    ## singleton: false
    ## instanciable: true
    ## is_reference: false
  
  PhysicsBody2D* = ref object of CollisionObject2D
    ## singleton: false
    ## instanciable: false
    ## is_reference: false
  
  Camera* = ref object of Spatial
    ## singleton: false
    ## instanciable: true
    ## is_reference: false
  
  Joint2D* = ref object of Node2D
    ## singleton: false
    ## instanciable: false
    ## is_reference: false
  
  Light* = ref object of VisualInstance
    ## singleton: false
    ## instanciable: false
    ## is_reference: false
  
  InputEventGesture* = ref object of InputEventWithModifiers
    ## singleton: false
    ## instanciable: false
    ## is_reference: true
  
  Font* = ref object of Resource
    ## singleton: false
    ## instanciable: false
    ## is_reference: true
  
  Sky* = ref object of Resource
    ## singleton: false
    ## instanciable: false
    ## is_reference: true
  
  ARVRInterface* = ref object of Reference
    ## singleton: false
    ## instanciable: false
    ## is_reference: true
  
  TextureLayered* = ref object of Resource
    ## singleton: false
    ## instanciable: false
    ## is_reference: true
  
  Separator* = ref object of Control
    ## singleton: false
    ## instanciable: false
    ## is_reference: false
  
  VisualShaderNodeTextureUniform* = ref object of VisualShaderNodeUniform
    ## singleton: false
    ## instanciable: true
    ## is_reference: true
  
  AudioStreamPlayback* = ref object of Reference
    ## singleton: false
    ## instanciable: false
    ## is_reference: true
  
  WebSocketMultiplayerPeer* = ref object of NetworkedMultiplayerPeer
    ## singleton: false
    ## instanciable: false
    ## is_reference: true
  
  ScrollBar* = ref object of Range
    ## singleton: false
    ## instanciable: false
    ## is_reference: false
  
  SpriteBase3D* = ref object of GeometryInstance
    ## singleton: false
    ## instanciable: false
    ## is_reference: false
  
  SplitContainer* = ref object of Container
    ## singleton: false
    ## instanciable: false
    ## is_reference: false
  
  VisualShaderNodeGroupBase* = ref object of VisualShaderNode
    ## singleton: false
    ## instanciable: true
    ## is_reference: true
  
  Slider* = ref object of Range
    ## singleton: false
    ## instanciable: false
    ## is_reference: false
  
  InputEventMouse* = ref object of InputEventWithModifiers
    ## singleton: false
    ## instanciable: false
    ## is_reference: true
  
  RigidBody* = ref object of PhysicsBody
    ## singleton: false
    ## instanciable: true
    ## is_reference: false
  
  ScrollContainer* = ref object of Container
    ## singleton: false
    ## instanciable: true
    ## is_reference: false
  
  Physics2DDirectBodyState* = ref object of Object
    ## singleton: false
    ## instanciable: false
    ## is_reference: false
  
  VBoxContainer* = ref object of BoxContainer
    ## singleton: false
    ## instanciable: true
    ## is_reference: false
  
  VisualScriptLists* = ref object of VisualScriptNode
    ## singleton: false
    ## instanciable: false
    ## is_reference: true
  
  VisualShaderNodeSwitch* = ref object of VisualShaderNode
    ## singleton: false
    ## instanciable: true
    ## is_reference: true
  
  AudioEffectInstance* = ref object of Reference
    ## singleton: false
    ## instanciable: false
    ## is_reference: true
  
  Shader* = ref object of Resource
    ## singleton: false
    ## instanciable: true
    ## is_reference: true
  
  EditorSceneImporter* = ref object of Reference
    ## singleton: false
    ## instanciable: false
    ## is_reference: true
  
  CanvasLayer* = ref object of Node
    ## singleton: false
    ## instanciable: true
    ## is_reference: false
  
  MeshInstance* = ref object of GeometryInstance
    ## singleton: false
    ## instanciable: true
    ## is_reference: false
  
  ResourceImporter* = ref object of Reference
    ## singleton: false
    ## instanciable: false
    ## is_reference: true
  
  VisualShaderNodeExpression* = ref object of VisualShaderNodeGroupBase
    ## singleton: false
    ## instanciable: true
    ## is_reference: true
  
  SpatialGizmo* = ref object of Reference
    ## singleton: false
    ## instanciable: false
    ## is_reference: true
  
  WebRTCPeerConnection* = ref object of Reference
    ## singleton: false
    ## instanciable: true
    ## is_reference: true
  
  PhysicsDirectBodyState* = ref object of Object
    ## singleton: false
    ## instanciable: false
    ## is_reference: false
  
  VisibilityNotifier* = ref object of Spatial
    ## singleton: false
    ## instanciable: true
    ## is_reference: false
  
  VisibilityNotifier2D* = ref object of Node2D
    ## singleton: false
    ## instanciable: true
    ## is_reference: false
  
  PanelContainer* = ref object of Container
    ## singleton: false
    ## instanciable: true
    ## is_reference: false
  
  Translation* = ref object of Resource
    ## singleton: false
    ## instanciable: true
    ## is_reference: true
  
  MainLoop* = ref object of Object
    ## singleton: false
    ## instanciable: true
    ## is_reference: false
  
  WebRTCDataChannel* = ref object of PacketPeer
    ## singleton: false
    ## instanciable: false
    ## is_reference: true
  
  AudioStreamPlaybackResampled* = ref object of AudioStreamPlayback
    ## singleton: false
    ## instanciable: false
    ## is_reference: true
  
  VisualShaderNodeTransformCompose* = ref object of VisualShaderNode
    ## singleton: false
    ## instanciable: true
    ## is_reference: true
  
  VisualShaderNodeScalarClamp* = ref object of VisualShaderNode
    ## singleton: false
    ## instanciable: true
    ## is_reference: true
  
  HTTPClient* = ref object of Reference
    ## singleton: false
    ## instanciable: true
    ## is_reference: true
  
  StaticBody* = ref object of PhysicsBody
    ## singleton: false
    ## instanciable: true
    ## is_reference: false
  
  WeakRef* = ref object of Reference
    ## singleton: false
    ## instanciable: true
    ## is_reference: true
  
  BakedLightmap* = ref object of VisualInstance
    ## singleton: false
    ## instanciable: true
    ## is_reference: false
  
  PluginScript* = ref object of Script
    ## singleton: false
    ## instanciable: true
    ## is_reference: true
  
  Viewport* = ref object of Node
    ## singleton: false
    ## instanciable: true
    ## is_reference: false
  
  CylinderMesh* = ref object of PrimitiveMesh
    ## singleton: false
    ## instanciable: true
    ## is_reference: true
  
  VisualScriptConstructor* = ref object of VisualScriptNode
    ## singleton: false
    ## instanciable: true
    ## is_reference: true
  
  GrooveJoint2D* = ref object of Joint2D
    ## singleton: false
    ## instanciable: true
    ## is_reference: false
  
  GDNativeLibrary* = ref object of Resource
    ## singleton: false
    ## instanciable: true
    ## is_reference: true
  
  AudioEffectEQ10* = ref object of AudioEffectEQ
    ## singleton: false
    ## instanciable: true
    ## is_reference: true
  
  StreamPeerTCP* = ref object of StreamPeer
    ## singleton: false
    ## instanciable: true
    ## is_reference: true
  
  PhysicsShapeQueryParameters* = ref object of Reference
    ## singleton: false
    ## instanciable: true
    ## is_reference: true
  
  VisualScriptBasicTypeConstant* = ref object of VisualScriptNode
    ## singleton: false
    ## instanciable: true
    ## is_reference: true
  
  AnimationNodeOutput* = ref object of AnimationNode
    ## singleton: false
    ## instanciable: true
    ## is_reference: true
  
  StreamTexture* = ref object of Texture
    ## singleton: false
    ## instanciable: true
    ## is_reference: true
  
  InterpolatedCamera* = ref object of Camera
    ## singleton: false
    ## instanciable: true
    ## is_reference: false
  
  ARVRController* = ref object of Spatial
    ## singleton: false
    ## instanciable: true
    ## is_reference: false
  
  AudioEffectAmplify* = ref object of AudioEffect
    ## singleton: false
    ## instanciable: true
    ## is_reference: true
  
  InputEventKey* = ref object of InputEventWithModifiers
    ## singleton: false
    ## instanciable: true
    ## is_reference: true
  
  OccluderPolygon2D* = ref object of Resource
    ## singleton: false
    ## instanciable: true
    ## is_reference: true
  
  EditorResourceConversionPlugin* = ref object of Reference
    ## singleton: false
    ## instanciable: false
    ## is_reference: true
  
  PacketPeerUDP* = ref object of PacketPeer
    ## singleton: false
    ## instanciable: true
    ## is_reference: true
  
  DynamicFont* = ref object of Font
    ## singleton: false
    ## instanciable: true
    ## is_reference: true
  
  RandomNumberGenerator* = ref object of Reference
    ## singleton: false
    ## instanciable: true
    ## is_reference: true
  
  RayShape2D* = ref object of Shape2D
    ## singleton: false
    ## instanciable: true
    ## is_reference: true
  
  EditorFeatureProfile* = ref object of Reference
    ## singleton: false
    ## instanciable: false
    ## is_reference: true
  
  MultiMesh* = ref object of Resource
    ## singleton: false
    ## instanciable: true
    ## is_reference: true
  
  AudioStreamSample* = ref object of AudioStream
    ## singleton: false
    ## instanciable: true
    ## is_reference: true
  
  Tween* = ref object of Node
    ## singleton: false
    ## instanciable: true
    ## is_reference: false
  
  Area2D* = ref object of CollisionObject2D
    ## singleton: false
    ## instanciable: true
    ## is_reference: false
  
  MultiplayerPeerGDNative* = ref object of NetworkedMultiplayerPeer
    ## singleton: false
    ## instanciable: true
    ## is_reference: true
  
  GIProbe* = ref object of VisualInstance
    ## singleton: false
    ## instanciable: true
    ## is_reference: false
  
  AnimationNodeOneShot* = ref object of AnimationNode
    ## singleton: false
    ## instanciable: true
    ## is_reference: true
  
  VSlider* = ref object of Slider
    ## singleton: false
    ## instanciable: true
    ## is_reference: false
  
  NativeScript* = ref object of Script
    ## singleton: false
    ## instanciable: true
    ## is_reference: true
  
  PlaneMesh* = ref object of PrimitiveMesh
    ## singleton: false
    ## instanciable: true
    ## is_reference: true
  
  ResourceFormatSaver* = ref object of Reference
    ## singleton: false
    ## instanciable: true
    ## is_reference: true
  
  ConeTwistJoint* = ref object of Joint
    ## singleton: false
    ## instanciable: true
    ## is_reference: false
  
  VisualScriptFunctionCall* = ref object of VisualScriptNode
    ## singleton: false
    ## instanciable: true
    ## is_reference: true
  
  VisualShaderNodeScalarOp* = ref object of VisualShaderNode
    ## singleton: false
    ## instanciable: true
    ## is_reference: true
  
  VisualShader* = ref object of Shader
    ## singleton: false
    ## instanciable: true
    ## is_reference: true
  
  TextureArray* = ref object of TextureLayered
    ## singleton: false
    ## instanciable: true
    ## is_reference: true
  
  EditorImportPlugin* = ref object of ResourceImporter
    ## singleton: false
    ## instanciable: false
    ## is_reference: true
  
  AudioEffectPhaser* = ref object of AudioEffect
    ## singleton: false
    ## instanciable: true
    ## is_reference: true
  
  VideoStreamWebm* = ref object of VideoStream
    ## singleton: false
    ## instanciable: true
    ## is_reference: true
  
  Skeleton* = ref object of Spatial
    ## singleton: false
    ## instanciable: true
    ## is_reference: false
  
  CylinderShape* = ref object of Shape
    ## singleton: false
    ## instanciable: true
    ## is_reference: true
  
  InputEventMouseMotion* = ref object of InputEventMouse
    ## singleton: false
    ## instanciable: true
    ## is_reference: true
  
  PackedDataContainer* = ref object of Resource
    ## singleton: false
    ## instanciable: true
    ## is_reference: true
  
  AnimationPlayer* = ref object of Node
    ## singleton: false
    ## instanciable: true
    ## is_reference: false
  
  VisualScriptPreload* = ref object of VisualScriptNode
    ## singleton: false
    ## instanciable: true
    ## is_reference: true
  
  EditorSceneImporterAssimp* = ref object of EditorSceneImporter
    ## singleton: false
    ## instanciable: false
    ## is_reference: true
  
  VisualScript* = ref object of Script
    ## singleton: false
    ## instanciable: true
    ## is_reference: true
  
  RichTextLabel* = ref object of Control
    ## singleton: false
    ## instanciable: true
    ## is_reference: false
  
  VisualScriptCustomNode* = ref object of VisualScriptNode
    ## singleton: false
    ## instanciable: true
    ## is_reference: true
  
  MeshTexture* = ref object of Texture
    ## singleton: false
    ## instanciable: true
    ## is_reference: true
  
  UDPServer* = ref object of Reference
    ## singleton: false
    ## instanciable: true
    ## is_reference: true
  
  ResourceFormatLoader* = ref object of Reference
    ## singleton: false
    ## instanciable: true
    ## is_reference: true
  
  VisualScriptInputAction* = ref object of VisualScriptNode
    ## singleton: false
    ## instanciable: true
    ## is_reference: true
  
  VisualScriptExpression* = ref object of VisualScriptNode
    ## singleton: false
    ## instanciable: true
    ## is_reference: true
  
  InputEventJoypadButton* = ref object of InputEvent
    ## singleton: false
    ## instanciable: true
    ## is_reference: true
  
  MeshDataTool* = ref object of Reference
    ## singleton: false
    ## instanciable: true
    ## is_reference: true
  
  VisualScriptEmitSignal* = ref object of VisualScriptNode
    ## singleton: false
    ## instanciable: true
    ## is_reference: true
  
  HBoxContainer* = ref object of BoxContainer
    ## singleton: false
    ## instanciable: true
    ## is_reference: false
  
  Physics2DDirectBodyStateSW* = ref object of Physics2DDirectBodyState
    ## singleton: false
    ## instanciable: false
    ## is_reference: false
  
  RayCast* = ref object of Spatial
    ## singleton: false
    ## instanciable: true
    ## is_reference: false
  
  Semaphore* = ref object of Reference
    ## singleton: false
    ## instanciable: true
    ## is_reference: true
  
  AnimationNodeBlendSpace2D* = ref object of AnimationRootNode
    ## singleton: false
    ## instanciable: true
    ## is_reference: true
  
  ConvexPolygonShape2D* = ref object of Shape2D
    ## singleton: false
    ## instanciable: true
    ## is_reference: true
  
  Timer* = ref object of Node
    ## singleton: false
    ## instanciable: true
    ## is_reference: false
  
  WebSocketPeer* = ref object of PacketPeer
    ## singleton: false
    ## instanciable: true
    ## is_reference: true
  
  AudioBusLayout* = ref object of Resource
    ## singleton: false
    ## instanciable: true
    ## is_reference: true
  
  LargeTexture* = ref object of Texture
    ## singleton: false
    ## instanciable: true
    ## is_reference: true
  
  AnimationNodeBlendTree* = ref object of AnimationRootNode
    ## singleton: false
    ## instanciable: true
    ## is_reference: true
  
  AudioEffectPanner* = ref object of AudioEffect
    ## singleton: false
    ## instanciable: true
    ## is_reference: true
  
  CSGBox* = ref object of CSGPrimitive
    ## singleton: false
    ## instanciable: true
    ## is_reference: false
  
  ImageTexture* = ref object of Texture
    ## singleton: false
    ## instanciable: true
    ## is_reference: true
  
  LightOccluder2D* = ref object of Node2D
    ## singleton: false
    ## instanciable: true
    ## is_reference: false
  
  OptionButton* = ref object of Button
    ## singleton: false
    ## instanciable: true
    ## is_reference: false
  
  OpenSimplexNoise* = ref object of Resource
    ## singleton: false
    ## instanciable: true
    ## is_reference: true
  
  Listener* = ref object of Spatial
    ## singleton: false
    ## instanciable: true
    ## is_reference: false
  
  PhysicsMaterial* = ref object of Resource
    ## singleton: false
    ## instanciable: true
    ## is_reference: true
  
  SphereShape* = ref object of Shape
    ## singleton: false
    ## instanciable: true
    ## is_reference: true
  
  StyleBoxFlat* = ref object of StyleBox
    ## singleton: false
    ## instanciable: true
    ## is_reference: true
  
  VisualScriptSelf* = ref object of VisualScriptNode
    ## singleton: false
    ## instanciable: true
    ## is_reference: true
  
  EditorFileSystem* = ref object of Node
    ## singleton: false
    ## instanciable: false
    ## is_reference: false
  
  RayCast2D* = ref object of Node2D
    ## singleton: false
    ## instanciable: true
    ## is_reference: false
  
  CPUParticles* = ref object of GeometryInstance
    ## singleton: false
    ## instanciable: true
    ## is_reference: false
  
  VisualShaderNodeScalarSmoothStep* = ref object of VisualShaderNode
    ## singleton: false
    ## instanciable: true
    ## is_reference: true
  
  VisualShaderNodeVectorDecompose* = ref object of VisualShaderNode
    ## singleton: false
    ## instanciable: true
    ## is_reference: true
  
  DampedSpringJoint2D* = ref object of Joint2D
    ## singleton: false
    ## instanciable: true
    ## is_reference: false
  
  PCKPacker* = ref object of Reference
    ## singleton: false
    ## instanciable: true
    ## is_reference: true
  
  World* = ref object of Resource
    ## singleton: false
    ## instanciable: true
    ## is_reference: true
  
  Environment* = ref object of Resource
    ## singleton: false
    ## instanciable: true
    ## is_reference: true
  
  SkinReference* = ref object of Reference
    ## singleton: false
    ## instanciable: false
    ## is_reference: true
  
  VSeparator* = ref object of Separator
    ## singleton: false
    ## instanciable: true
    ## is_reference: false
  
  VisualScriptWhile* = ref object of VisualScriptNode
    ## singleton: false
    ## instanciable: true
    ## is_reference: true
  
  Image* = ref object of Resource
    ## singleton: false
    ## instanciable: true
    ## is_reference: true
  
  PacketPeerStream* = ref object of PacketPeer
    ## singleton: false
    ## instanciable: true
    ## is_reference: true
  
  FileDialog* = ref object of ConfirmationDialog
    ## singleton: false
    ## instanciable: true
    ## is_reference: false
  
  AnimatedSprite* = ref object of Node2D
    ## singleton: false
    ## instanciable: true
    ## is_reference: false
  
  World2D* = ref object of Resource
    ## singleton: false
    ## instanciable: true
    ## is_reference: true
  
  InputEventMIDI* = ref object of InputEvent
    ## singleton: false
    ## instanciable: true
    ## is_reference: true
  
  InputEventMouseButton* = ref object of InputEventMouse
    ## singleton: false
    ## instanciable: true
    ## is_reference: true
  
  Position3D* = ref object of Spatial
    ## singleton: false
    ## instanciable: true
    ## is_reference: false
  
  AudioEffectSpectrumAnalyzerInstance* = ref object of AudioEffectInstance
    ## singleton: false
    ## instanciable: false
    ## is_reference: true
  
  SpotLight* = ref object of Light
    ## singleton: false
    ## instanciable: true
    ## is_reference: false
  
  EditorSettings* = ref object of Resource
    ## singleton: false
    ## instanciable: false
    ## is_reference: true
  
  VisualShaderNodeColorFunc* = ref object of VisualShaderNode
    ## singleton: false
    ## instanciable: true
    ## is_reference: true
  
  VisualShaderNodeCompare* = ref object of VisualShaderNode
    ## singleton: false
    ## instanciable: true
    ## is_reference: true
  
  Position2D* = ref object of Node2D
    ## singleton: false
    ## instanciable: true
    ## is_reference: false
  
  HSlider* = ref object of Slider
    ## singleton: false
    ## instanciable: true
    ## is_reference: false
  
  InputEventScreenTouch* = ref object of InputEvent
    ## singleton: false
    ## instanciable: true
    ## is_reference: true
  
  TextureProgress* = ref object of Range
    ## singleton: false
    ## instanciable: true
    ## is_reference: false
  
  TileSet* = ref object of Resource
    ## singleton: false
    ## instanciable: true
    ## is_reference: true
  
  VisualShaderNodeScalarDerivativeFunc* = ref object of VisualShaderNode
    ## singleton: false
    ## instanciable: true
    ## is_reference: true
  
  CurveTexture* = ref object of Texture
    ## singleton: false
    ## instanciable: true
    ## is_reference: true
  
  LineEdit* = ref object of Control
    ## singleton: false
    ## instanciable: true
    ## is_reference: false
  
  RegEx* = ref object of Reference
    ## singleton: false
    ## instanciable: true
    ## is_reference: true
  
  XMLParser* = ref object of Reference
    ## singleton: false
    ## instanciable: true
    ## is_reference: true
  
  FileSystemDock* = ref object of VBoxContainer
    ## singleton: false
    ## instanciable: false
    ## is_reference: false
  
  AudioEffectPitchShift* = ref object of AudioEffect
    ## singleton: false
    ## instanciable: true
    ## is_reference: true
  
  CameraTexture* = ref object of Texture
    ## singleton: false
    ## instanciable: true
    ## is_reference: true
  
  ARVROrigin* = ref object of Spatial
    ## singleton: false
    ## instanciable: true
    ## is_reference: false
  
  GIProbeData* = ref object of Resource
    ## singleton: false
    ## instanciable: true
    ## is_reference: true
  
  Path2D* = ref object of Node2D
    ## singleton: false
    ## instanciable: true
    ## is_reference: false
  
  VScrollBar* = ref object of ScrollBar
    ## singleton: false
    ## instanciable: true
    ## is_reference: false
  
  AudioEffectDistortion* = ref object of AudioEffect
    ## singleton: false
    ## instanciable: true
    ## is_reference: true
  
  Panel* = ref object of Control
    ## singleton: false
    ## instanciable: true
    ## is_reference: false
  
  VisualScriptDeconstruct* = ref object of VisualScriptNode
    ## singleton: false
    ## instanciable: true
    ## is_reference: true
  
  Curve* = ref object of Resource
    ## singleton: false
    ## instanciable: true
    ## is_reference: true
  
  CSGSphere* = ref object of CSGPrimitive
    ## singleton: false
    ## instanciable: true
    ## is_reference: false
  
  VisualShaderNodeScalarConstant* = ref object of VisualShaderNode
    ## singleton: false
    ## instanciable: true
    ## is_reference: true
  
  VisualShaderNodeVectorScalarSmoothStep* = ref object of VisualShaderNode
    ## singleton: false
    ## instanciable: true
    ## is_reference: true
  
  HashingContext* = ref object of Reference
    ## singleton: false
    ## instanciable: true
    ## is_reference: true
  
  AudioEffectSpectrumAnalyzer* = ref object of AudioEffect
    ## singleton: false
    ## instanciable: true
    ## is_reference: true
  
  PathFollow2D* = ref object of Node2D
    ## singleton: false
    ## instanciable: true
    ## is_reference: false
  
  HTTPRequest* = ref object of Node
    ## singleton: false
    ## instanciable: true
    ## is_reference: false
  
  VisualShaderNodeVectorOp* = ref object of VisualShaderNode
    ## singleton: false
    ## instanciable: true
    ## is_reference: true
  
  CollisionShape2D* = ref object of Node2D
    ## singleton: false
    ## instanciable: true
    ## is_reference: false
  
  AudioEffectDelay* = ref object of AudioEffect
    ## singleton: false
    ## instanciable: true
    ## is_reference: true
  
  VisualShaderNodeVectorRefract* = ref object of VisualShaderNode
    ## singleton: false
    ## instanciable: true
    ## is_reference: true
  
  EditorResourcePreviewGenerator* = ref object of Reference
    ## singleton: false
    ## instanciable: false
    ## is_reference: true
  
  CameraFeed* = ref object of Reference
    ## singleton: false
    ## instanciable: true
    ## is_reference: true
  
  EditorInterface* = ref object of Node
    ## singleton: false
    ## instanciable: false
    ## is_reference: false
  
  DynamicFontData* = ref object of Resource
    ## singleton: false
    ## instanciable: true
    ## is_reference: true
  
  CSGCombiner* = ref object of CSGShape
    ## singleton: false
    ## instanciable: true
    ## is_reference: false
  
  ARVRCamera* = ref object of Camera
    ## singleton: false
    ## instanciable: true
    ## is_reference: false
  
  EncodedObjectAsID* = ref object of Reference
    ## singleton: false
    ## instanciable: true
    ## is_reference: true
  
  ProximityGroup* = ref object of Spatial
    ## singleton: false
    ## instanciable: true
    ## is_reference: false
  
  ARVRAnchor* = ref object of Spatial
    ## singleton: false
    ## instanciable: true
    ## is_reference: false
  
  StyleBoxTexture* = ref object of StyleBox
    ## singleton: false
    ## instanciable: true
    ## is_reference: true
  
  Curve2D* = ref object of Resource
    ## singleton: false
    ## instanciable: true
    ## is_reference: true
  
  VisualShaderNodeOutput* = ref object of VisualShaderNode
    ## singleton: false
    ## instanciable: false
    ## is_reference: true
  
  SpringArm* = ref object of Spatial
    ## singleton: false
    ## instanciable: true
    ## is_reference: false
  
  Mutex* = ref object of Reference
    ## singleton: false
    ## instanciable: true
    ## is_reference: true
  
  SoftBody* = ref object of MeshInstance
    ## singleton: false
    ## instanciable: true
    ## is_reference: false
  
  KinematicCollision* = ref object of Reference
    ## singleton: false
    ## instanciable: true
    ## is_reference: true
  
  BackBufferCopy* = ref object of Node2D
    ## singleton: false
    ## instanciable: true
    ## is_reference: false
  
  ReflectionProbe* = ref object of VisualInstance
    ## singleton: false
    ## instanciable: true
    ## is_reference: false
  
  CPUParticles2D* = ref object of Node2D
    ## singleton: false
    ## instanciable: true
    ## is_reference: false
  
  RayShape* = ref object of Shape
    ## singleton: false
    ## instanciable: true
    ## is_reference: true
  
  Navigation* = ref object of Spatial
    ## singleton: false
    ## instanciable: true
    ## is_reference: false
  
  BulletPhysicsDirectBodyState* = ref object of PhysicsDirectBodyState
    ## singleton: false
    ## instanciable: false
    ## is_reference: false
  
  VisualScriptConstant* = ref object of VisualScriptNode
    ## singleton: false
    ## instanciable: true
    ## is_reference: true
  
  PhysicsDirectSpaceState* = ref object of Object
    ## singleton: false
    ## instanciable: false
    ## is_reference: false
  
  Skin* = ref object of Resource
    ## singleton: false
    ## instanciable: true
    ## is_reference: true
  
  SpinBox* = ref object of Range
    ## singleton: false
    ## instanciable: true
    ## is_reference: false
  
  TextureRect* = ref object of Control
    ## singleton: false
    ## instanciable: true
    ## is_reference: false
  
  VisualScriptSceneTree* = ref object of VisualScriptNode
    ## singleton: false
    ## instanciable: true
    ## is_reference: true
  
  AudioStreamRandomPitch* = ref object of AudioStream
    ## singleton: false
    ## instanciable: true
    ## is_reference: true
  
  VisualShaderNodeFaceForward* = ref object of VisualShaderNode
    ## singleton: false
    ## instanciable: true
    ## is_reference: true
  
  VisualShaderNodeVec3Uniform* = ref object of VisualShaderNodeUniform
    ## singleton: false
    ## instanciable: true
    ## is_reference: true
  
  VisualShaderNodeScalarSwitch* = ref object of VisualShaderNodeSwitch
    ## singleton: false
    ## instanciable: true
    ## is_reference: true
  
  VisualScriptBuiltinFunc* = ref object of VisualScriptNode
    ## singleton: false
    ## instanciable: true
    ## is_reference: true
  
  VisualShaderNodeTransformMult* = ref object of VisualShaderNode
    ## singleton: false
    ## instanciable: true
    ## is_reference: true
  
  WebRTCPeerConnectionGDNative* = ref object of WebRTCPeerConnection
    ## singleton: false
    ## instanciable: true
    ## is_reference: true
  
  EditorVCSInterface* = ref object of Object
    ## singleton: false
    ## instanciable: false
    ## is_reference: false
  
  StreamPeerSSL* = ref object of StreamPeer
    ## singleton: false
    ## instanciable: true
    ## is_reference: true
  
  VisualShaderNodeTransformFunc* = ref object of VisualShaderNode
    ## singleton: false
    ## instanciable: true
    ## is_reference: true
  
  CanvasModulate* = ref object of Node2D
    ## singleton: false
    ## instanciable: true
    ## is_reference: false
  
  VisualScriptOperator* = ref object of VisualScriptNode
    ## singleton: false
    ## instanciable: true
    ## is_reference: true
  
  VisualShaderNodeIf* = ref object of VisualShaderNode
    ## singleton: false
    ## instanciable: true
    ## is_reference: true
  
  PointMesh* = ref object of PrimitiveMesh
    ## singleton: false
    ## instanciable: true
    ## is_reference: true
  
  AudioEffectHighPassFilter* = ref object of AudioEffectFilter
    ## singleton: false
    ## instanciable: true
    ## is_reference: true
  
  Sprite* = ref object of Node2D
    ## singleton: false
    ## instanciable: true
    ## is_reference: false
  
  Theme* = ref object of Resource
    ## singleton: false
    ## instanciable: true
    ## is_reference: true
  
  VisualScriptSwitch* = ref object of VisualScriptNode
    ## singleton: false
    ## instanciable: true
    ## is_reference: true
  
  Tree* = ref object of Control
    ## singleton: false
    ## instanciable: true
    ## is_reference: false
  
  VideoStreamTheora* = ref object of VideoStream
    ## singleton: false
    ## instanciable: true
    ## is_reference: true
  
  ConcavePolygonShape2D* = ref object of Shape2D
    ## singleton: false
    ## instanciable: true
    ## is_reference: true
  
  PolygonPathFinder* = ref object of Resource
    ## singleton: false
    ## instanciable: true
    ## is_reference: true
  
  NinePatchRect* = ref object of Control
    ## singleton: false
    ## instanciable: true
    ## is_reference: false
  
  EditorProperty* = ref object of Container
    ## singleton: false
    ## instanciable: false
    ## is_reference: false
  
  GraphNode* = ref object of Container
    ## singleton: false
    ## instanciable: true
    ## is_reference: false
  
  AnimationNodeTimeSeek* = ref object of AnimationNode
    ## singleton: false
    ## instanciable: true
    ## is_reference: true
  
  VisualShaderNodeBooleanConstant* = ref object of VisualShaderNode
    ## singleton: false
    ## instanciable: true
    ## is_reference: true
  
  VisualShaderNodeFresnel* = ref object of VisualShaderNode
    ## singleton: false
    ## instanciable: true
    ## is_reference: true
  
  AStar2D* = ref object of Reference
    ## singleton: false
    ## instanciable: true
    ## is_reference: true
  
  TreeItem* = ref object of Object
    ## singleton: false
    ## instanciable: false
    ## is_reference: false
  
  EditorScript* = ref object of Reference
    ## singleton: false
    ## instanciable: false
    ## is_reference: true
  
  VisualShaderNodeTransformDecompose* = ref object of VisualShaderNode
    ## singleton: false
    ## instanciable: true
    ## is_reference: true
  
  GridMap* = ref object of Spatial
    ## singleton: false
    ## instanciable: true
    ## is_reference: false
  
  VisualShaderNodeCustom* = ref object of VisualShaderNode
    ## singleton: false
    ## instanciable: true
    ## is_reference: true
  
  CharFXTransform* = ref object of Reference
    ## singleton: false
    ## instanciable: true
    ## is_reference: true
  
  SceneTree* = ref object of MainLoop
    ## singleton: false
    ## instanciable: true
    ## is_reference: false
  
  VisualScriptIndexSet* = ref object of VisualScriptNode
    ## singleton: false
    ## instanciable: true
    ## is_reference: true
  
  VisualShaderNodeVectorScalarMix* = ref object of VisualShaderNode
    ## singleton: false
    ## instanciable: true
    ## is_reference: true
  
  Navigation2D* = ref object of Node2D
    ## singleton: false
    ## instanciable: true
    ## is_reference: false
  
  VisualShaderNodeTransformConstant* = ref object of VisualShaderNode
    ## singleton: false
    ## instanciable: true
    ## is_reference: true
  
  ProxyTexture* = ref object of Texture
    ## singleton: false
    ## instanciable: true
    ## is_reference: true
  
  MeshInstance2D* = ref object of Node2D
    ## singleton: false
    ## instanciable: true
    ## is_reference: false
  
  UPNPDevice* = ref object of Reference
    ## singleton: false
    ## instanciable: true
    ## is_reference: true
  
  Directory* = ref object of Reference
    ## singleton: false
    ## instanciable: true
    ## is_reference: true
  
  InstancePlaceholder* = ref object of Node
    ## singleton: false
    ## instanciable: false
    ## is_reference: false
  
  AudioEffectLowShelfFilter* = ref object of AudioEffectFilter
    ## singleton: false
    ## instanciable: true
    ## is_reference: true
  
  HScrollBar* = ref object of ScrollBar
    ## singleton: false
    ## instanciable: true
    ## is_reference: false
  
  ShortCut* = ref object of Resource
    ## singleton: false
    ## instanciable: true
    ## is_reference: true
  
  CSGTorus* = ref object of CSGPrimitive
    ## singleton: false
    ## instanciable: true
    ## is_reference: false
  
  StyleBoxLine* = ref object of StyleBox
    ## singleton: false
    ## instanciable: true
    ## is_reference: true
  
  VisualShaderNodeScalarFunc* = ref object of VisualShaderNode
    ## singleton: false
    ## instanciable: true
    ## is_reference: true
  
  HingeJoint* = ref object of Joint
    ## singleton: false
    ## instanciable: true
    ## is_reference: false
  
  Path* = ref object of Spatial
    ## singleton: false
    ## instanciable: true
    ## is_reference: false
  
  OmniLight* = ref object of Light
    ## singleton: false
    ## instanciable: true
    ## is_reference: false
  
  AudioStreamPlayer* = ref object of Node
    ## singleton: false
    ## instanciable: true
    ## is_reference: false
  
  BitMap* = ref object of Resource
    ## singleton: false
    ## instanciable: true
    ## is_reference: true
  
  StyleBoxEmpty* = ref object of StyleBox
    ## singleton: false
    ## instanciable: true
    ## is_reference: true
  
  EditorSpatialGizmoPlugin* = ref object of Resource
    ## singleton: false
    ## instanciable: false
    ## is_reference: true
  
  CubeMap* = ref object of Resource
    ## singleton: false
    ## instanciable: true
    ## is_reference: true
  
  CollisionPolygon2D* = ref object of Node2D
    ## singleton: false
    ## instanciable: true
    ## is_reference: false
  
  AnimationNodeStateMachineTransition* = ref object of Resource
    ## singleton: false
    ## instanciable: true
    ## is_reference: true
  
  RemoteTransform2D* = ref object of Node2D
    ## singleton: false
    ## instanciable: true
    ## is_reference: false
  
  CollisionShape* = ref object of Spatial
    ## singleton: false
    ## instanciable: true
    ## is_reference: false
  
  RegExMatch* = ref object of Reference
    ## singleton: false
    ## instanciable: true
    ## is_reference: true
  
  TCPServer* = ref object of Reference
    ## singleton: false
    ## instanciable: true
    ## is_reference: true
  
  MenuButton* = ref object of Button
    ## singleton: false
    ## instanciable: true
    ## is_reference: false
  
  VisualShaderNodeVectorInterp* = ref object of VisualShaderNode
    ## singleton: false
    ## instanciable: true
    ## is_reference: true
  
  AnimatedSprite3D* = ref object of SpriteBase3D
    ## singleton: false
    ## instanciable: true
    ## is_reference: false
  
  ToolButton* = ref object of Button
    ## singleton: false
    ## instanciable: true
    ## is_reference: false
  
  AudioEffectLimiter* = ref object of AudioEffect
    ## singleton: false
    ## instanciable: true
    ## is_reference: true
  
  VisualScriptCondition* = ref object of VisualScriptNode
    ## singleton: false
    ## instanciable: true
    ## is_reference: true
  
  AStar* = ref object of Reference
    ## singleton: false
    ## instanciable: true
    ## is_reference: true
  
  MultiplayerAPI* = ref object of Reference
    ## singleton: false
    ## instanciable: true
    ## is_reference: true
  
  DirectionalLight* = ref object of Light
    ## singleton: false
    ## instanciable: true
    ## is_reference: false
  
  CSGMesh* = ref object of CSGPrimitive
    ## singleton: false
    ## instanciable: true
    ## is_reference: false
  
  CapsuleMesh* = ref object of PrimitiveMesh
    ## singleton: false
    ## instanciable: true
    ## is_reference: true
  
  VisualScriptLocalVarSet* = ref object of VisualScriptNode
    ## singleton: false
    ## instanciable: true
    ## is_reference: true
  
  VehicleBody* = ref object of RigidBody
    ## singleton: false
    ## instanciable: true
    ## is_reference: false
  
  VisualScriptMathConstant* = ref object of VisualScriptNode
    ## singleton: false
    ## instanciable: true
    ## is_reference: true
  
  AnimationNodeBlend3* = ref object of AnimationNode
    ## singleton: false
    ## instanciable: true
    ## is_reference: true
  
  VisualShaderNodeOuterProduct* = ref object of VisualShaderNode
    ## singleton: false
    ## instanciable: true
    ## is_reference: true
  
  WebRTCMultiplayer* = ref object of NetworkedMultiplayerPeer
    ## singleton: false
    ## instanciable: true
    ## is_reference: true
  
  WorldEnvironment* = ref object of Node
    ## singleton: false
    ## instanciable: true
    ## is_reference: false
  
  Particles2D* = ref object of Node2D
    ## singleton: false
    ## instanciable: true
    ## is_reference: false
  
  AnimationTrackEditPlugin* = ref object of Reference
    ## singleton: false
    ## instanciable: false
    ## is_reference: true
  
  ConcavePolygonShape* = ref object of Shape
    ## singleton: false
    ## instanciable: true
    ## is_reference: true
  
  PhysicsShapeQueryResult* = ref object of Reference
    ## singleton: false
    ## instanciable: false
    ## is_reference: true
  
  VisibilityEnabler* = ref object of VisibilityNotifier
    ## singleton: false
    ## instanciable: true
    ## is_reference: false
  
  VisualShaderNodeIs* = ref object of VisualShaderNode
    ## singleton: false
    ## instanciable: true
    ## is_reference: true
  
  EditorExportPlugin* = ref object of Reference
    ## singleton: false
    ## instanciable: false
    ## is_reference: true
  
  VisualShaderNodeCubeMapUniform* = ref object of VisualShaderNodeTextureUniform
    ## singleton: false
    ## instanciable: true
    ## is_reference: true
  
  SceneState* = ref object of Reference
    ## singleton: false
    ## instanciable: false
    ## is_reference: true
  
  VideoPlayer* = ref object of Control
    ## singleton: false
    ## instanciable: true
    ## is_reference: false
  
  EditorFileDialog* = ref object of ConfirmationDialog
    ## singleton: false
    ## instanciable: false
    ## is_reference: false
  
  VisualScriptSceneNode* = ref object of VisualScriptNode
    ## singleton: false
    ## instanciable: true
    ## is_reference: true
  
  VisualScriptYield* = ref object of VisualScriptNode
    ## singleton: false
    ## instanciable: true
    ## is_reference: true
  
  FuncRef* = ref object of Reference
    ## singleton: false
    ## instanciable: true
    ## is_reference: true
  
  ViewportTexture* = ref object of Texture
    ## singleton: false
    ## instanciable: true
    ## is_reference: true
  
  PacketPeerGDNative* = ref object of PacketPeer
    ## singleton: false
    ## instanciable: true
    ## is_reference: true
  
  HSplitContainer* = ref object of SplitContainer
    ## singleton: false
    ## instanciable: true
    ## is_reference: false
  
  VisualShaderNodeDotProduct* = ref object of VisualShaderNode
    ## singleton: false
    ## instanciable: true
    ## is_reference: true
  
  VisualScriptPropertyGet* = ref object of VisualScriptNode
    ## singleton: false
    ## instanciable: true
    ## is_reference: true
  
  AudioStreamPlayer3D* = ref object of Spatial
    ## singleton: false
    ## instanciable: true
    ## is_reference: false
  
  BakedLightmapData* = ref object of Resource
    ## singleton: false
    ## instanciable: true
    ## is_reference: true
  
  MultiMeshInstance2D* = ref object of Node2D
    ## singleton: false
    ## instanciable: true
    ## is_reference: false
  
  NavigationMeshInstance* = ref object of Spatial
    ## singleton: false
    ## instanciable: true
    ## is_reference: false
  
  Physics2DShapeQueryResult* = ref object of Reference
    ## singleton: false
    ## instanciable: false
    ## is_reference: true
  
  RichTextEffect* = ref object of Resource
    ## singleton: false
    ## instanciable: true
    ## is_reference: true
  
  KinematicBody* = ref object of PhysicsBody
    ## singleton: false
    ## instanciable: true
    ## is_reference: false
  
  NetworkedMultiplayerENet* = ref object of NetworkedMultiplayerPeer
    ## singleton: false
    ## instanciable: true
    ## is_reference: true
  
  PackedScene* = ref object of Resource
    ## singleton: false
    ## instanciable: true
    ## is_reference: true
  
  SceneTreeTimer* = ref object of Reference
    ## singleton: false
    ## instanciable: false
    ## is_reference: true
  
  TouchScreenButton* = ref object of Node2D
    ## singleton: false
    ## instanciable: true
    ## is_reference: false
  
  PopupPanel* = ref object of Popup
    ## singleton: false
    ## instanciable: true
    ## is_reference: false
  
  Texture3D* = ref object of TextureLayered
    ## singleton: false
    ## instanciable: true
    ## is_reference: true
  
  AtlasTexture* = ref object of Texture
    ## singleton: false
    ## instanciable: true
    ## is_reference: true
  
  UndoRedo* = ref object of Object
    ## singleton: false
    ## instanciable: true
    ## is_reference: false
  
  TextEdit* = ref object of Control
    ## singleton: false
    ## instanciable: true
    ## is_reference: false
  
  Label* = ref object of Control
    ## singleton: false
    ## instanciable: true
    ## is_reference: false
  
  GridContainer* = ref object of Container
    ## singleton: false
    ## instanciable: true
    ## is_reference: false
  
  SpatialMaterial* = ref object of Material
    ## singleton: false
    ## instanciable: true
    ## is_reference: true
  
  VideoStreamGDNative* = ref object of VideoStream
    ## singleton: false
    ## instanciable: true
    ## is_reference: true
  
  VisualShaderNodeTexture* = ref object of VisualShaderNode
    ## singleton: false
    ## instanciable: true
    ## is_reference: true
  
  VisualScriptSelect* = ref object of VisualScriptNode
    ## singleton: false
    ## instanciable: true
    ## is_reference: true
  
  VehicleWheel* = ref object of Spatial
    ## singleton: false
    ## instanciable: true
    ## is_reference: false
  
  AnimationTree* = ref object of Node
    ## singleton: false
    ## instanciable: true
    ## is_reference: false
  
  Light2D* = ref object of Node2D
    ## singleton: false
    ## instanciable: true
    ## is_reference: false
  
  VisualShaderNodeVec3Constant* = ref object of VisualShaderNode
    ## singleton: false
    ## instanciable: true
    ## is_reference: true
  
  PHashTranslation* = ref object of Translation
    ## singleton: false
    ## instanciable: true
    ## is_reference: true
  
  SkeletonIK* = ref object of Node
    ## singleton: false
    ## instanciable: true
    ## is_reference: false
  
  PanoramaSky* = ref object of Sky
    ## singleton: false
    ## instanciable: true
    ## is_reference: true
  
  VisualScriptIndexGet* = ref object of VisualScriptNode
    ## singleton: false
    ## instanciable: true
    ## is_reference: true
  
  VisualShaderNodeVectorClamp* = ref object of VisualShaderNode
    ## singleton: false
    ## instanciable: true
    ## is_reference: true
  
  VisualShaderNodeTransformVecMult* = ref object of VisualShaderNode
    ## singleton: false
    ## instanciable: true
    ## is_reference: true
  
  AudioStreamPlayer2D* = ref object of Node2D
    ## singleton: false
    ## instanciable: true
    ## is_reference: false
  
  CheckButton* = ref object of Button
    ## singleton: false
    ## instanciable: true
    ## is_reference: false
  
  VisualShaderNodeVectorDistance* = ref object of VisualShaderNode
    ## singleton: false
    ## instanciable: true
    ## is_reference: true
  
  SpatialVelocityTracker* = ref object of Reference
    ## singleton: false
    ## instanciable: true
    ## is_reference: true
  
  CenterContainer* = ref object of Container
    ## singleton: false
    ## instanciable: true
    ## is_reference: false
  
  AudioStreamGeneratorPlayback* = ref object of AudioStreamPlaybackResampled
    ## singleton: false
    ## instanciable: false
    ## is_reference: true
  
  Animation* = ref object of Resource
    ## singleton: false
    ## instanciable: true
    ## is_reference: true
  
  PopupMenu* = ref object of Popup
    ## singleton: false
    ## instanciable: true
    ## is_reference: false
  
  SurfaceTool* = ref object of Reference
    ## singleton: false
    ## instanciable: true
    ## is_reference: true
  
  PinJoint* = ref object of Joint
    ## singleton: false
    ## instanciable: true
    ## is_reference: false
  
  VisualScriptFunction* = ref object of VisualScriptNode
    ## singleton: false
    ## instanciable: true
    ## is_reference: true
  
  VisualShaderNodeVectorSmoothStep* = ref object of VisualShaderNode
    ## singleton: false
    ## instanciable: true
    ## is_reference: true
  
  WebSocketClient* = ref object of WebSocketMultiplayerPeer
    ## singleton: false
    ## instanciable: true
    ## is_reference: true
  
  AnimationNodeBlendSpace1D* = ref object of AnimationRootNode
    ## singleton: false
    ## instanciable: true
    ## is_reference: true
  
  YSort* = ref object of Node2D
    ## singleton: false
    ## instanciable: true
    ## is_reference: false
  
  VisualShaderNodeTextureUniformTriplanar* = ref object of VisualShaderNodeTextureUniform
    ## singleton: false
    ## instanciable: true
    ## is_reference: true
  
  BitmapFont* = ref object of Font
    ## singleton: false
    ## instanciable: true
    ## is_reference: true
  
  CubeMesh* = ref object of PrimitiveMesh
    ## singleton: false
    ## instanciable: true
    ## is_reference: true
  
  VisualScriptSequence* = ref object of VisualScriptNode
    ## singleton: false
    ## instanciable: true
    ## is_reference: true
  
  AnimationNodeTimeScale* = ref object of AnimationNode
    ## singleton: false
    ## instanciable: true
    ## is_reference: true
  
  ResourcePreloader* = ref object of Node
    ## singleton: false
    ## instanciable: true
    ## is_reference: false
  
  TextFile* = ref object of Resource
    ## singleton: false
    ## instanciable: true
    ## is_reference: true
  
  AudioEffectChorus* = ref object of AudioEffect
    ## singleton: false
    ## instanciable: true
    ## is_reference: true
  
  AudioEffectNotchFilter* = ref object of AudioEffectFilter
    ## singleton: false
    ## instanciable: true
    ## is_reference: true
  
  ConvexPolygonShape* = ref object of Shape
    ## singleton: false
    ## instanciable: true
    ## is_reference: true
  
  TextureButton* = ref object of BaseButton
    ## singleton: false
    ## instanciable: true
    ## is_reference: false
  
  AnimationNodeAdd2* = ref object of AnimationNode
    ## singleton: false
    ## instanciable: true
    ## is_reference: true
  
  UPNP* = ref object of Reference
    ## singleton: false
    ## instanciable: true
    ## is_reference: true
  
  VisualShaderNodeTransformUniform* = ref object of VisualShaderNodeUniform
    ## singleton: false
    ## instanciable: true
    ## is_reference: true
  
  PacketPeerDTLS* = ref object of PacketPeer
    ## singleton: false
    ## instanciable: true
    ## is_reference: true
  
  ViewportContainer* = ref object of Container
    ## singleton: false
    ## instanciable: true
    ## is_reference: false
  
  AnimationNodeStateMachine* = ref object of AnimationRootNode
    ## singleton: false
    ## instanciable: true
    ## is_reference: true
  
  ShaderMaterial* = ref object of Material
    ## singleton: false
    ## instanciable: true
    ## is_reference: true
  
  SliderJoint* = ref object of Joint
    ## singleton: false
    ## instanciable: true
    ## is_reference: false
  
  JavaClass* = ref object of Reference
    ## singleton: false
    ## instanciable: true
    ## is_reference: true
  
  VisualScriptComment* = ref object of VisualScriptNode
    ## singleton: false
    ## instanciable: true
    ## is_reference: true
  
  VisualScriptGlobalConstant* = ref object of VisualScriptNode
    ## singleton: false
    ## instanciable: true
    ## is_reference: true
  
  Bone2D* = ref object of Node2D
    ## singleton: false
    ## instanciable: true
    ## is_reference: false
  
  AudioEffectBandLimitFilter* = ref object of AudioEffectFilter
    ## singleton: false
    ## instanciable: true
    ## is_reference: true
  
  ColorPickerButton* = ref object of Button
    ## singleton: false
    ## instanciable: true
    ## is_reference: false
  
  GDScript* = ref object of Script
    ## singleton: false
    ## instanciable: true
    ## is_reference: true
  
  AnimationNodeAdd3* = ref object of AnimationNode
    ## singleton: false
    ## instanciable: true
    ## is_reference: true
  
  HeightMapShape* = ref object of Shape
    ## singleton: false
    ## instanciable: true
    ## is_reference: true
  
  CollisionPolygon* = ref object of Spatial
    ## singleton: false
    ## instanciable: true
    ## is_reference: false
  
  RemoteTransform* = ref object of Spatial
    ## singleton: false
    ## instanciable: true
    ## is_reference: false
  
  ScriptEditor* = ref object of PanelContainer
    ## singleton: false
    ## instanciable: false
    ## is_reference: false
  
  ProceduralSky* = ref object of Sky
    ## singleton: false
    ## instanciable: true
    ## is_reference: true
  
  StreamPeerBuffer* = ref object of StreamPeer
    ## singleton: false
    ## instanciable: true
    ## is_reference: true
  
  EditorScenePostImport* = ref object of Reference
    ## singleton: false
    ## instanciable: false
    ## is_reference: true
  
  Gradient* = ref object of Resource
    ## singleton: false
    ## instanciable: true
    ## is_reference: true
  
  SegmentShape2D* = ref object of Shape2D
    ## singleton: false
    ## instanciable: true
    ## is_reference: true
  
  VisualShaderNodeVectorScalarStep* = ref object of VisualShaderNode
    ## singleton: false
    ## instanciable: true
    ## is_reference: true
  
  Camera2D* = ref object of Node2D
    ## singleton: false
    ## instanciable: true
    ## is_reference: false
  
  QuadMesh* = ref object of PrimitiveMesh
    ## singleton: false
    ## instanciable: true
    ## is_reference: true
  
  Polygon2D* = ref object of Node2D
    ## singleton: false
    ## instanciable: true
    ## is_reference: false
  
  PathFollow* = ref object of Spatial
    ## singleton: false
    ## instanciable: true
    ## is_reference: false
  
  SpriteFrames* = ref object of Resource
    ## singleton: false
    ## instanciable: true
    ## is_reference: true
  
  ResourceInteractiveLoader* = ref object of Reference
    ## singleton: false
    ## instanciable: false
    ## is_reference: true
  
  AudioStreamGenerator* = ref object of AudioStream
    ## singleton: false
    ## instanciable: true
    ## is_reference: true
  
  EditorResourcePreview* = ref object of Node
    ## singleton: false
    ## instanciable: false
    ## is_reference: false
  
  PlaneShape* = ref object of Shape
    ## singleton: false
    ## instanciable: true
    ## is_reference: true
  
  RootMotionView* = ref object of VisualInstance
    ## singleton: false
    ## instanciable: false
    ## is_reference: false
  
  ArrayMesh* = ref object of Mesh
    ## singleton: false
    ## instanciable: true
    ## is_reference: true
  
  VisualScriptVariableGet* = ref object of VisualScriptNode
    ## singleton: false
    ## instanciable: true
    ## is_reference: true
  
  AudioEffectStereoEnhance* = ref object of AudioEffect
    ## singleton: false
    ## instanciable: true
    ## is_reference: true
  
  EditorPlugin* = ref object of Node
    ## singleton: false
    ## instanciable: false
    ## is_reference: false
  
  GDScriptFunctionState* = ref object of Reference
    ## singleton: false
    ## instanciable: false
    ## is_reference: true
  
  VisualShaderNodeDeterminant* = ref object of VisualShaderNode
    ## singleton: false
    ## instanciable: true
    ## is_reference: true
  
  VisualShaderNodeInput* = ref object of VisualShaderNode
    ## singleton: false
    ## instanciable: true
    ## is_reference: true
  
  EditorNavigationMeshGenerator* = ref object of Object
    ## singleton: false
    ## instanciable: false
    ## is_reference: false
  
  Crypto* = ref object of Reference
    ## singleton: false
    ## instanciable: true
    ## is_reference: true
  
  ColorPicker* = ref object of BoxContainer
    ## singleton: false
    ## instanciable: true
    ## is_reference: false
  
  JSONRPC* = ref object of Object
    ## singleton: false
    ## instanciable: true
    ## is_reference: false
  
  JNISingleton* = ref object of Object
    ## singleton: false
    ## instanciable: true
    ## is_reference: false
  
  Line2D* = ref object of Node2D
    ## singleton: false
    ## instanciable: true
    ## is_reference: false
  
  CapsuleShape* = ref object of Shape
    ## singleton: false
    ## instanciable: true
    ## is_reference: true
  
  RectangleShape2D* = ref object of Shape2D
    ## singleton: false
    ## instanciable: true
    ## is_reference: true
  
  Skeleton2D* = ref object of Node2D
    ## singleton: false
    ## instanciable: true
    ## is_reference: false
  
  ProgressBar* = ref object of Range
    ## singleton: false
    ## instanciable: true
    ## is_reference: false
  
  HSeparator* = ref object of Separator
    ## singleton: false
    ## instanciable: true
    ## is_reference: false
  
  CSGCylinder* = ref object of CSGPrimitive
    ## singleton: false
    ## instanciable: true
    ## is_reference: false
  
  NavigationPolygon* = ref object of Resource
    ## singleton: false
    ## instanciable: true
    ## is_reference: true
  
  Physics2DTestMotionResult* = ref object of Reference
    ## singleton: false
    ## instanciable: true
    ## is_reference: true
  
  StaticBody2D* = ref object of PhysicsBody2D
    ## singleton: false
    ## instanciable: true
    ## is_reference: false
  
  ScriptCreateDialog* = ref object of ConfirmationDialog
    ## singleton: false
    ## instanciable: false
    ## is_reference: false
  
  VisualScriptLocalVar* = ref object of VisualScriptNode
    ## singleton: false
    ## instanciable: true
    ## is_reference: true
  
  VisualShaderNodeScalarUniform* = ref object of VisualShaderNodeUniform
    ## singleton: false
    ## instanciable: true
    ## is_reference: true
  
  AnimationNodeAnimation* = ref object of AnimationRootNode
    ## singleton: false
    ## instanciable: true
    ## is_reference: true
  
  StreamPeerGDNative* = ref object of StreamPeer
    ## singleton: false
    ## instanciable: true
    ## is_reference: true
  
  AudioStreamMicrophone* = ref object of AudioStream
    ## singleton: false
    ## instanciable: true
    ## is_reference: true
  
  VisualShaderNodeColorConstant* = ref object of VisualShaderNode
    ## singleton: false
    ## instanciable: true
    ## is_reference: true
  
  Generic6DOFJoint* = ref object of Joint
    ## singleton: false
    ## instanciable: true
    ## is_reference: false
  
  ReferenceRect* = ref object of Control
    ## singleton: false
    ## instanciable: true
    ## is_reference: false
  
  VisualScriptIterator* = ref object of VisualScriptNode
    ## singleton: false
    ## instanciable: true
    ## is_reference: true
  
  VisualScriptSubCall* = ref object of VisualScriptNode
    ## singleton: false
    ## instanciable: true
    ## is_reference: true
  
  Physics2DShapeQueryParameters* = ref object of Reference
    ## singleton: false
    ## instanciable: true
    ## is_reference: true
  
  EditorInspectorPlugin* = ref object of Reference
    ## singleton: false
    ## instanciable: false
    ## is_reference: true
  
  X509Certificate* = ref object of Resource
    ## singleton: false
    ## instanciable: true
    ## is_reference: true
  
  PinJoint2D* = ref object of Joint2D
    ## singleton: false
    ## instanciable: true
    ## is_reference: false
  
  InputEventPanGesture* = ref object of InputEventGesture
    ## singleton: false
    ## instanciable: true
    ## is_reference: true
  
  Tabs* = ref object of Control
    ## singleton: false
    ## instanciable: true
    ## is_reference: false
  
  VisualShaderNodeColorOp* = ref object of VisualShaderNode
    ## singleton: false
    ## instanciable: true
    ## is_reference: true
  
  AnimationNodeStateMachinePlayback* = ref object of Resource
    ## singleton: false
    ## instanciable: true
    ## is_reference: true
  
  KinematicBody2D* = ref object of PhysicsBody2D
    ## singleton: false
    ## instanciable: true
    ## is_reference: false
  
  NavigationMesh* = ref object of Resource
    ## singleton: false
    ## instanciable: true
    ## is_reference: true
  
  CanvasItemMaterial* = ref object of Material
    ## singleton: false
    ## instanciable: true
    ## is_reference: true
  
  AnimationTreePlayer* = ref object of Node
    ## singleton: false
    ## instanciable: true
    ## is_reference: false
  
  ParallaxBackground* = ref object of CanvasLayer
    ## singleton: false
    ## instanciable: true
    ## is_reference: false
  
  LinkButton* = ref object of BaseButton
    ## singleton: false
    ## instanciable: true
    ## is_reference: false
  
  ItemList* = ref object of Control
    ## singleton: false
    ## instanciable: true
    ## is_reference: false
  
  LineShape2D* = ref object of Shape2D
    ## singleton: false
    ## instanciable: true
    ## is_reference: true
  
  ParallaxLayer* = ref object of Node2D
    ## singleton: false
    ## instanciable: true
    ## is_reference: false
  
  SphereMesh* = ref object of PrimitiveMesh
    ## singleton: false
    ## instanciable: true
    ## is_reference: true
  
  VisualShaderNodeBooleanUniform* = ref object of VisualShaderNodeUniform
    ## singleton: false
    ## instanciable: true
    ## is_reference: true
  
  Curve3D* = ref object of Resource
    ## singleton: false
    ## instanciable: true
    ## is_reference: true
  
  AudioEffectLowPassFilter* = ref object of AudioEffectFilter
    ## singleton: false
    ## instanciable: true
    ## is_reference: true
  
  VisualScriptResourcePath* = ref object of VisualScriptNode
    ## singleton: false
    ## instanciable: true
    ## is_reference: true
  
  VisualScriptYieldSignal* = ref object of VisualScriptNode
    ## singleton: false
    ## instanciable: true
    ## is_reference: true
  
  VisualShaderNodeVectorCompose* = ref object of VisualShaderNode
    ## singleton: false
    ## instanciable: true
    ## is_reference: true
  
  ConfigFile* = ref object of Reference
    ## singleton: false
    ## instanciable: true
    ## is_reference: true
  
  VisualShaderNodeVectorLen* = ref object of VisualShaderNode
    ## singleton: false
    ## instanciable: true
    ## is_reference: true
  
  GDNative* = ref object of Reference
    ## singleton: false
    ## instanciable: true
    ## is_reference: true
  
  Sprite3D* = ref object of SpriteBase3D
    ## singleton: false
    ## instanciable: true
    ## is_reference: false
  
  AudioEffectReverb* = ref object of AudioEffect
    ## singleton: false
    ## instanciable: true
    ## is_reference: true
  
  InputEventScreenDrag* = ref object of InputEvent
    ## singleton: false
    ## instanciable: true
    ## is_reference: true
  
  CSGPolygon* = ref object of CSGPrimitive
    ## singleton: false
    ## instanciable: true
    ## is_reference: false
  
  Area* = ref object of CollisionObject
    ## singleton: false
    ## instanciable: true
    ## is_reference: false
  
  EditorSpatialGizmo* = ref object of SpatialGizmo
    ## singleton: false
    ## instanciable: false
    ## is_reference: true
  
  AnimatedTexture* = ref object of Texture
    ## singleton: false
    ## instanciable: true
    ## is_reference: true
  
  MultiMeshInstance* = ref object of GeometryInstance
    ## singleton: false
    ## instanciable: true
    ## is_reference: false
  
  NoiseTexture* = ref object of Texture
    ## singleton: false
    ## instanciable: true
    ## is_reference: true
  
  VisualScriptReturn* = ref object of VisualScriptNode
    ## singleton: false
    ## instanciable: true
    ## is_reference: true
  
  AudioEffectEQ21* = ref object of AudioEffectEQ
    ## singleton: false
    ## instanciable: true
    ## is_reference: true
  
  AudioEffectHighShelfFilter* = ref object of AudioEffectFilter
    ## singleton: false
    ## instanciable: true
    ## is_reference: true
  
  AudioEffectCompressor* = ref object of AudioEffect
    ## singleton: false
    ## instanciable: true
    ## is_reference: true
  
  InputEventAction* = ref object of InputEvent
    ## singleton: false
    ## instanciable: true
    ## is_reference: true
  
  EditorInspector* = ref object of ScrollContainer
    ## singleton: false
    ## instanciable: false
    ## is_reference: false
  
  DTLSServer* = ref object of Reference
    ## singleton: false
    ## instanciable: true
    ## is_reference: true
  
  VisualScriptPropertySet* = ref object of VisualScriptNode
    ## singleton: false
    ## instanciable: true
    ## is_reference: true
  
  AnimationNodeBlend2* = ref object of AnimationNode
    ## singleton: false
    ## instanciable: true
    ## is_reference: true
  
  ButtonGroup* = ref object of Resource
    ## singleton: false
    ## instanciable: true
    ## is_reference: true
  
  Expression* = ref object of Reference
    ## singleton: false
    ## instanciable: true
    ## is_reference: true
  
  VisualShaderNodeCubeMap* = ref object of VisualShaderNode
    ## singleton: false
    ## instanciable: true
    ## is_reference: true
  
  VisualShaderNodeVectorFunc* = ref object of VisualShaderNode
    ## singleton: false
    ## instanciable: true
    ## is_reference: true
  
  TriangleMesh* = ref object of Reference
    ## singleton: false
    ## instanciable: true
    ## is_reference: true
  
  ColorRect* = ref object of Control
    ## singleton: false
    ## instanciable: true
    ## is_reference: false
  
  ParticlesMaterial* = ref object of Material
    ## singleton: false
    ## instanciable: true
    ## is_reference: true
  
  VisualShaderNodeGlobalExpression* = ref object of VisualShaderNodeExpression
    ## singleton: false
    ## instanciable: true
    ## is_reference: true
  
  WebRTCDataChannelGDNative* = ref object of WebRTCDataChannel
    ## singleton: false
    ## instanciable: true
    ## is_reference: true
  
  Physics2DDirectSpaceState* = ref object of Object
    ## singleton: false
    ## instanciable: false
    ## is_reference: false
  
  CryptoKey* = ref object of Resource
    ## singleton: false
    ## instanciable: true
    ## is_reference: true
  
  PrismMesh* = ref object of PrimitiveMesh
    ## singleton: false
    ## instanciable: true
    ## is_reference: true
  
  CircleShape2D* = ref object of Shape2D
    ## singleton: false
    ## instanciable: true
    ## is_reference: true
  
  GraphEdit* = ref object of Control
    ## singleton: false
    ## instanciable: true
    ## is_reference: false
  
  File* = ref object of Reference
    ## singleton: false
    ## instanciable: true
    ## is_reference: true
  
  VisualScriptEngineSingleton* = ref object of VisualScriptNode
    ## singleton: false
    ## instanciable: true
    ## is_reference: true
  
  VisualScriptFunctionState* = ref object of Reference
    ## singleton: false
    ## instanciable: true
    ## is_reference: true
  
  GradientTexture* = ref object of Texture
    ## singleton: false
    ## instanciable: true
    ## is_reference: true
  
  CheckBox* = ref object of Button
    ## singleton: false
    ## instanciable: true
    ## is_reference: false
  
  CapsuleShape2D* = ref object of Shape2D
    ## singleton: false
    ## instanciable: true
    ## is_reference: true
  
  EditorSpinSlider* = ref object of Range
    ## singleton: false
    ## instanciable: false
    ## is_reference: false
  
  VisualShaderNodeColorUniform* = ref object of VisualShaderNodeUniform
    ## singleton: false
    ## instanciable: true
    ## is_reference: true
  
  PopupDialog* = ref object of Popup
    ## singleton: false
    ## instanciable: true
    ## is_reference: false
  
  InputEventMagnifyGesture* = ref object of InputEventGesture
    ## singleton: false
    ## instanciable: true
    ## is_reference: true
  
  PhysicalBone* = ref object of PhysicsBody
    ## singleton: false
    ## instanciable: true
    ## is_reference: false
  
  TabContainer* = ref object of Container
    ## singleton: false
    ## instanciable: true
    ## is_reference: false
  
  WebSocketServer* = ref object of WebSocketMultiplayerPeer
    ## singleton: false
    ## instanciable: true
    ## is_reference: true
  
  ARVRPositionalTracker* = ref object of Object
    ## singleton: false
    ## instanciable: true
    ## is_reference: false
  
  EditorSelection* = ref object of Object
    ## singleton: false
    ## instanciable: false
    ## is_reference: false
  
  JSONParseResult* = ref object of Reference
    ## singleton: false
    ## instanciable: true
    ## is_reference: true
  
  AnimationNodeTransition* = ref object of AnimationNode
    ## singleton: false
    ## instanciable: true
    ## is_reference: true
  
  AudioStreamOGGVorbis* = ref object of AudioStream
    ## singleton: false
    ## instanciable: true
    ## is_reference: true
  
  AudioEffectRecord* = ref object of AudioEffect
    ## singleton: false
    ## instanciable: true
    ## is_reference: true
  
  VSplitContainer* = ref object of SplitContainer
    ## singleton: false
    ## instanciable: true
    ## is_reference: false
  
  RigidBody2D* = ref object of PhysicsBody2D
    ## singleton: false
    ## instanciable: true
    ## is_reference: false
  
  VisualScriptComposeArray* = ref object of VisualScriptLists
    ## singleton: false
    ## instanciable: true
    ## is_reference: true
  
  ClippedCamera* = ref object of Camera
    ## singleton: false
    ## instanciable: true
    ## is_reference: false
  
  BoneAttachment* = ref object of Spatial
    ## singleton: false
    ## instanciable: true
    ## is_reference: false
  
  ExternalTexture* = ref object of Texture
    ## singleton: false
    ## instanciable: true
    ## is_reference: true
  
  VisualShaderNodeVectorDerivativeFunc* = ref object of VisualShaderNode
    ## singleton: false
    ## instanciable: true
    ## is_reference: true
  
  AudioEffectBandPassFilter* = ref object of AudioEffectFilter
    ## singleton: false
    ## instanciable: true
    ## is_reference: true
  
  InputEventJoypadMotion* = ref object of InputEvent
    ## singleton: false
    ## instanciable: true
    ## is_reference: true
  
  NavigationPolygonInstance* = ref object of Node2D
    ## singleton: false
    ## instanciable: true
    ## is_reference: false
  
  Particles* = ref object of GeometryInstance
    ## singleton: false
    ## instanciable: true
    ## is_reference: false
  
  AudioEffectEQ6* = ref object of AudioEffectEQ
    ## singleton: false
    ## instanciable: true
    ## is_reference: true
  
  VisibilityEnabler2D* = ref object of VisibilityNotifier2D
    ## singleton: false
    ## instanciable: true
    ## is_reference: false
  
  ImmediateGeometry* = ref object of GeometryInstance
    ## singleton: false
    ## instanciable: true
    ## is_reference: false
  
  KinematicCollision2D* = ref object of Reference
    ## singleton: false
    ## instanciable: true
    ## is_reference: true
  
  BoxShape* = ref object of Shape
    ## singleton: false
    ## instanciable: true
    ## is_reference: true
  
  VisualScriptTypeCast* = ref object of VisualScriptNode
    ## singleton: false
    ## instanciable: true
    ## is_reference: true
  
  VisualShaderNodeScalarInterp* = ref object of VisualShaderNode
    ## singleton: false
    ## instanciable: true
    ## is_reference: true
  
  ARVRInterfaceGDNative* = ref object of ARVRInterface
    ## singleton: false
    ## instanciable: true
    ## is_reference: true
  
  VisualScriptVariableSet* = ref object of VisualScriptNode
    ## singleton: false
    ## instanciable: true
    ## is_reference: true
  
  Thread* = ref object of Reference
    ## singleton: false
    ## instanciable: true
    ## is_reference: true
  
  TileMap* = ref object of Node2D
    ## singleton: false
    ## instanciable: true
    ## is_reference: false
  
  MarginContainer* = ref object of Container
    ## singleton: false
    ## instanciable: true
    ## is_reference: false
  
  MobileVRInterface* = ref object of ARVRInterface
    ## singleton: false
    ## instanciable: true
    ## is_reference: true
  
  PackedDataContainerRef* = ref object of Reference
    ## singleton: false
    ## instanciable: false
    ## is_reference: true
  
  MeshLibrary* = ref object of Resource
    ## singleton: false
    ## instanciable: true
    ## is_reference: true
  
  VisualScriptClassConstant* = ref object of VisualScriptNode
    ## singleton: false
    ## instanciable: true
    ## is_reference: true
  
  EditorFileSystemDirectory* = ref object of Object
    ## singleton: false
    ## instanciable: false
    ## is_reference: false
  
registerClass(Object, "Object", true)
registerClass(Reference, "Reference", true)
registerClass(Resource, "Resource", true)
registerClass(Node, "Node", true)
registerClass(CanvasItem, "CanvasItem", true)
registerClass(Spatial, "Spatial", true)
registerClass(Control, "Control", true)
registerClass(VisualShaderNode, "VisualShaderNode", true)
registerClass(VisualScriptNode, "VisualScriptNode", true)
registerClass(Node2D, "Node2D", true)
registerClass(VisualInstance, "VisualInstance", true)
registerClass(AudioEffect, "AudioEffect", true)
registerClass(Container, "Container", true)
registerClass(GeometryInstance, "GeometryInstance", true)
registerClass(AnimationNode, "AnimationNode", true)
registerClass(InputEvent, "InputEvent", true)
registerClass(PacketPeer, "PacketPeer", true)
registerClass(Texture, "Texture", true)
registerClass(Mesh, "Mesh", true)
registerClass(Range, "Range", true)
registerClass(BaseButton, "BaseButton", true)
registerClass(Popup, "Popup", true)
registerClass(Shape, "Shape", true)
registerClass(Shape2D, "Shape2D", true)
registerClass(CSGShape, "CSGShape", true)
registerClass(PrimitiveMesh, "PrimitiveMesh", true)
registerClass(VisualShaderNodeUniform, "VisualShaderNodeUniform", true)
registerClass(InputEventWithModifiers, "InputEventWithModifiers", true)
registerClass(CollisionObject, "CollisionObject", true)
registerClass(AudioEffectFilter, "AudioEffectFilter", true)
registerClass(NetworkedMultiplayerPeer, "NetworkedMultiplayerPeer", true)
registerClass(Button, "Button", true)
registerClass(CSGPrimitive, "CSGPrimitive", true)
registerClass(AudioStream, "AudioStream", true)
registerClass(CollisionObject2D, "CollisionObject2D", true)
registerClass(PhysicsBody, "PhysicsBody", true)
registerClass(AnimationRootNode, "AnimationRootNode", true)
registerClass(Joint, "Joint", true)
registerClass(WindowDialog, "WindowDialog", true)
registerClass(StreamPeer, "StreamPeer", true)
registerClass(Material, "Material", true)
registerClass(StyleBox, "StyleBox", true)
registerClass(AcceptDialog, "AcceptDialog", true)
registerClass(Script, "Script", true)
registerClass(BoxContainer, "BoxContainer", true)
registerClass(VideoStream, "VideoStream", true)
registerClass(AudioEffectEQ, "AudioEffectEQ", true)
registerClass(ConfirmationDialog, "ConfirmationDialog", true)
registerClass(PhysicsBody2D, "PhysicsBody2D", true)
registerClass(Camera, "Camera", true)
registerClass(Joint2D, "Joint2D", true)
registerClass(Light, "Light", true)
registerClass(InputEventGesture, "InputEventGesture", true)
registerClass(Font, "Font", true)
registerClass(Sky, "Sky", true)
registerClass(ARVRInterface, "ARVRInterface", true)
registerClass(TextureLayered, "TextureLayered", true)
registerClass(Separator, "Separator", true)
registerClass(VisualShaderNodeTextureUniform, "VisualShaderNodeTextureUniform",
              true)
registerClass(AudioStreamPlayback, "AudioStreamPlayback", true)
registerClass(WebSocketMultiplayerPeer, "WebSocketMultiplayerPeer", true)
registerClass(ScrollBar, "ScrollBar", true)
registerClass(SpriteBase3D, "SpriteBase3D", true)
registerClass(SplitContainer, "SplitContainer", true)
registerClass(VisualShaderNodeGroupBase, "VisualShaderNodeGroupBase", true)
registerClass(Slider, "Slider", true)
registerClass(InputEventMouse, "InputEventMouse", true)
registerClass(RigidBody, "RigidBody", true)
registerClass(ScrollContainer, "ScrollContainer", true)
registerClass(Physics2DDirectBodyState, "Physics2DDirectBodyState", true)
registerClass(VBoxContainer, "VBoxContainer", true)
registerClass(VisualScriptLists, "VisualScriptLists", true)
registerClass(VisualShaderNodeSwitch, "VisualShaderNodeSwitch", true)
registerClass(AudioEffectInstance, "AudioEffectInstance", true)
registerClass(Shader, "Shader", true)
registerClass(EditorSceneImporter, "EditorSceneImporter", true)
registerClass(CanvasLayer, "CanvasLayer", true)
registerClass(MeshInstance, "MeshInstance", true)
registerClass(ResourceImporter, "ResourceImporter", true)
registerClass(VisualShaderNodeExpression, "VisualShaderNodeExpression", true)
registerClass(SpatialGizmo, "SpatialGizmo", true)
registerClass(WebRTCPeerConnection, "WebRTCPeerConnection", true)
registerClass(PhysicsDirectBodyState, "PhysicsDirectBodyState", true)
registerClass(VisibilityNotifier, "VisibilityNotifier", true)
registerClass(VisibilityNotifier2D, "VisibilityNotifier2D", true)
registerClass(PanelContainer, "PanelContainer", true)
registerClass(Translation, "Translation", true)
registerClass(MainLoop, "MainLoop", true)
registerClass(WebRTCDataChannel, "WebRTCDataChannel", true)
registerClass(AudioStreamPlaybackResampled, "AudioStreamPlaybackResampled", true)
registerClass(VisualShaderNodeTransformCompose,
              "VisualShaderNodeTransformCompose", true)
registerClass(VisualShaderNodeScalarClamp, "VisualShaderNodeScalarClamp", true)
registerClass(HTTPClient, "HTTPClient", true)
registerClass(StaticBody, "StaticBody", true)
registerClass(WeakRef, "WeakRef", true)
registerClass(BakedLightmap, "BakedLightmap", true)
registerClass(PluginScript, "PluginScript", true)
registerClass(Viewport, "Viewport", true)
registerClass(CylinderMesh, "CylinderMesh", true)
registerClass(VisualScriptConstructor, "VisualScriptConstructor", true)
registerClass(GrooveJoint2D, "GrooveJoint2D", true)
registerClass(GDNativeLibrary, "GDNativeLibrary", true)
registerClass(AudioEffectEQ10, "AudioEffectEQ10", true)
registerClass(StreamPeerTCP, "StreamPeerTCP", true)
registerClass(PhysicsShapeQueryParameters, "PhysicsShapeQueryParameters", true)
registerClass(VisualScriptBasicTypeConstant, "VisualScriptBasicTypeConstant", true)
registerClass(AnimationNodeOutput, "AnimationNodeOutput", true)
registerClass(StreamTexture, "StreamTexture", true)
registerClass(InterpolatedCamera, "InterpolatedCamera", true)
registerClass(ARVRController, "ARVRController", true)
registerClass(AudioEffectAmplify, "AudioEffectAmplify", true)
registerClass(InputEventKey, "InputEventKey", true)
registerClass(OccluderPolygon2D, "OccluderPolygon2D", true)
registerClass(EditorResourceConversionPlugin, "EditorResourceConversionPlugin",
              true)
registerClass(PacketPeerUDP, "PacketPeerUDP", true)
registerClass(DynamicFont, "DynamicFont", true)
registerClass(RandomNumberGenerator, "RandomNumberGenerator", true)
registerClass(RayShape2D, "RayShape2D", true)
registerClass(EditorFeatureProfile, "EditorFeatureProfile", true)
registerClass(MultiMesh, "MultiMesh", true)
registerClass(AudioStreamSample, "AudioStreamSample", true)
registerClass(Tween, "Tween", true)
registerClass(Area2D, "Area2D", true)
registerClass(MultiplayerPeerGDNative, "MultiplayerPeerGDNative", true)
registerClass(GIProbe, "GIProbe", true)
registerClass(AnimationNodeOneShot, "AnimationNodeOneShot", true)
registerClass(VSlider, "VSlider", true)
registerClass(NativeScript, "NativeScript", true)
registerClass(PlaneMesh, "PlaneMesh", true)
registerClass(ResourceFormatSaver, "ResourceFormatSaver", true)
registerClass(ConeTwistJoint, "ConeTwistJoint", true)
registerClass(VisualScriptFunctionCall, "VisualScriptFunctionCall", true)
registerClass(VisualShaderNodeScalarOp, "VisualShaderNodeScalarOp", true)
registerClass(VisualShader, "VisualShader", true)
registerClass(TextureArray, "TextureArray", true)
registerClass(EditorImportPlugin, "EditorImportPlugin", true)
registerClass(AudioEffectPhaser, "AudioEffectPhaser", true)
registerClass(VideoStreamWebm, "VideoStreamWebm", true)
registerClass(Skeleton, "Skeleton", true)
registerClass(CylinderShape, "CylinderShape", true)
registerClass(InputEventMouseMotion, "InputEventMouseMotion", true)
registerClass(PackedDataContainer, "PackedDataContainer", true)
registerClass(AnimationPlayer, "AnimationPlayer", true)
registerClass(VisualScriptPreload, "VisualScriptPreload", true)
registerClass(EditorSceneImporterAssimp, "EditorSceneImporterAssimp", true)
registerClass(VisualScript, "VisualScript", true)
registerClass(RichTextLabel, "RichTextLabel", true)
registerClass(VisualScriptCustomNode, "VisualScriptCustomNode", true)
registerClass(MeshTexture, "MeshTexture", true)
registerClass(UDPServer, "UDPServer", true)
registerClass(ResourceFormatLoader, "ResourceFormatLoader", true)
registerClass(VisualScriptInputAction, "VisualScriptInputAction", true)
registerClass(VisualScriptExpression, "VisualScriptExpression", true)
registerClass(InputEventJoypadButton, "InputEventJoypadButton", true)
registerClass(MeshDataTool, "MeshDataTool", true)
registerClass(VisualScriptEmitSignal, "VisualScriptEmitSignal", true)
registerClass(HBoxContainer, "HBoxContainer", true)
registerClass(Physics2DDirectBodyStateSW, "Physics2DDirectBodyStateSW", true)
registerClass(RayCast, "RayCast", true)
registerClass(Semaphore, "_Semaphore", true)
registerClass(AnimationNodeBlendSpace2D, "AnimationNodeBlendSpace2D", true)
registerClass(ConvexPolygonShape2D, "ConvexPolygonShape2D", true)
registerClass(Timer, "Timer", true)
registerClass(WebSocketPeer, "WebSocketPeer", true)
registerClass(AudioBusLayout, "AudioBusLayout", true)
registerClass(LargeTexture, "LargeTexture", true)
registerClass(AnimationNodeBlendTree, "AnimationNodeBlendTree", true)
registerClass(AudioEffectPanner, "AudioEffectPanner", true)
registerClass(CSGBox, "CSGBox", true)
registerClass(ImageTexture, "ImageTexture", true)
registerClass(LightOccluder2D, "LightOccluder2D", true)
registerClass(OptionButton, "OptionButton", true)
registerClass(OpenSimplexNoise, "OpenSimplexNoise", true)
registerClass(Listener, "Listener", true)
registerClass(PhysicsMaterial, "PhysicsMaterial", true)
registerClass(SphereShape, "SphereShape", true)
registerClass(StyleBoxFlat, "StyleBoxFlat", true)
registerClass(VisualScriptSelf, "VisualScriptSelf", true)
registerClass(EditorFileSystem, "EditorFileSystem", true)
registerClass(RayCast2D, "RayCast2D", true)
registerClass(CPUParticles, "CPUParticles", true)
registerClass(VisualShaderNodeScalarSmoothStep,
              "VisualShaderNodeScalarSmoothStep", true)
registerClass(VisualShaderNodeVectorDecompose, "VisualShaderNodeVectorDecompose",
              true)
registerClass(DampedSpringJoint2D, "DampedSpringJoint2D", true)
registerClass(PCKPacker, "PCKPacker", true)
registerClass(World, "World", true)
registerClass(Environment, "Environment", true)
registerClass(SkinReference, "SkinReference", true)
registerClass(VSeparator, "VSeparator", true)
registerClass(VisualScriptWhile, "VisualScriptWhile", true)
registerClass(Image, "Image", true)
registerClass(PacketPeerStream, "PacketPeerStream", true)
registerClass(FileDialog, "FileDialog", true)
registerClass(AnimatedSprite, "AnimatedSprite", true)
registerClass(World2D, "World2D", true)
registerClass(InputEventMIDI, "InputEventMIDI", true)
registerClass(InputEventMouseButton, "InputEventMouseButton", true)
registerClass(Position3D, "Position3D", true)
registerClass(AudioEffectSpectrumAnalyzerInstance,
              "AudioEffectSpectrumAnalyzerInstance", true)
registerClass(SpotLight, "SpotLight", true)
registerClass(EditorSettings, "EditorSettings", true)
registerClass(VisualShaderNodeColorFunc, "VisualShaderNodeColorFunc", true)
registerClass(VisualShaderNodeCompare, "VisualShaderNodeCompare", true)
registerClass(Position2D, "Position2D", true)
registerClass(HSlider, "HSlider", true)
registerClass(InputEventScreenTouch, "InputEventScreenTouch", true)
registerClass(TextureProgress, "TextureProgress", true)
registerClass(TileSet, "TileSet", true)
registerClass(VisualShaderNodeScalarDerivativeFunc,
              "VisualShaderNodeScalarDerivativeFunc", true)
registerClass(CurveTexture, "CurveTexture", true)
registerClass(LineEdit, "LineEdit", true)
registerClass(RegEx, "RegEx", true)
registerClass(XMLParser, "XMLParser", true)
registerClass(FileSystemDock, "FileSystemDock", true)
registerClass(AudioEffectPitchShift, "AudioEffectPitchShift", true)
registerClass(CameraTexture, "CameraTexture", true)
registerClass(ARVROrigin, "ARVROrigin", true)
registerClass(GIProbeData, "GIProbeData", true)
registerClass(Path2D, "Path2D", true)
registerClass(VScrollBar, "VScrollBar", true)
registerClass(AudioEffectDistortion, "AudioEffectDistortion", true)
registerClass(Panel, "Panel", true)
registerClass(VisualScriptDeconstruct, "VisualScriptDeconstruct", true)
registerClass(Curve, "Curve", true)
registerClass(CSGSphere, "CSGSphere", true)
registerClass(VisualShaderNodeScalarConstant, "VisualShaderNodeScalarConstant",
              true)
registerClass(VisualShaderNodeVectorScalarSmoothStep,
              "VisualShaderNodeVectorScalarSmoothStep", true)
registerClass(HashingContext, "HashingContext", true)
registerClass(AudioEffectSpectrumAnalyzer, "AudioEffectSpectrumAnalyzer", true)
registerClass(PathFollow2D, "PathFollow2D", true)
registerClass(HTTPRequest, "HTTPRequest", true)
registerClass(VisualShaderNodeVectorOp, "VisualShaderNodeVectorOp", true)
registerClass(CollisionShape2D, "CollisionShape2D", true)
registerClass(AudioEffectDelay, "AudioEffectDelay", true)
registerClass(VisualShaderNodeVectorRefract, "VisualShaderNodeVectorRefract", true)
registerClass(EditorResourcePreviewGenerator, "EditorResourcePreviewGenerator",
              true)
registerClass(CameraFeed, "CameraFeed", true)
registerClass(EditorInterface, "EditorInterface", true)
registerClass(DynamicFontData, "DynamicFontData", true)
registerClass(CSGCombiner, "CSGCombiner", true)
registerClass(ARVRCamera, "ARVRCamera", true)
registerClass(EncodedObjectAsID, "EncodedObjectAsID", true)
registerClass(ProximityGroup, "ProximityGroup", true)
registerClass(ARVRAnchor, "ARVRAnchor", true)
registerClass(StyleBoxTexture, "StyleBoxTexture", true)
registerClass(Curve2D, "Curve2D", true)
registerClass(VisualShaderNodeOutput, "VisualShaderNodeOutput", true)
registerClass(SpringArm, "SpringArm", true)
registerClass(Mutex, "_Mutex", true)
registerClass(SoftBody, "SoftBody", true)
registerClass(KinematicCollision, "KinematicCollision", true)
registerClass(BackBufferCopy, "BackBufferCopy", true)
registerClass(ReflectionProbe, "ReflectionProbe", true)
registerClass(CPUParticles2D, "CPUParticles2D", true)
registerClass(RayShape, "RayShape", true)
registerClass(Navigation, "Navigation", true)
registerClass(BulletPhysicsDirectBodyState, "BulletPhysicsDirectBodyState", true)
registerClass(VisualScriptConstant, "VisualScriptConstant", true)
registerClass(PhysicsDirectSpaceState, "PhysicsDirectSpaceState", true)
registerClass(Skin, "Skin", true)
registerClass(SpinBox, "SpinBox", true)
registerClass(TextureRect, "TextureRect", true)
registerClass(VisualScriptSceneTree, "VisualScriptSceneTree", true)
registerClass(AudioStreamRandomPitch, "AudioStreamRandomPitch", true)
registerClass(VisualShaderNodeFaceForward, "VisualShaderNodeFaceForward", true)
registerClass(VisualShaderNodeVec3Uniform, "VisualShaderNodeVec3Uniform", true)
registerClass(VisualShaderNodeScalarSwitch, "VisualShaderNodeScalarSwitch", true)
registerClass(VisualScriptBuiltinFunc, "VisualScriptBuiltinFunc", true)
registerClass(VisualShaderNodeTransformMult, "VisualShaderNodeTransformMult", true)
registerClass(WebRTCPeerConnectionGDNative, "WebRTCPeerConnectionGDNative", true)
registerClass(EditorVCSInterface, "EditorVCSInterface", true)
registerClass(StreamPeerSSL, "StreamPeerSSL", true)
registerClass(VisualShaderNodeTransformFunc, "VisualShaderNodeTransformFunc", true)
registerClass(CanvasModulate, "CanvasModulate", true)
registerClass(VisualScriptOperator, "VisualScriptOperator", true)
registerClass(VisualShaderNodeIf, "VisualShaderNodeIf", true)
registerClass(PointMesh, "PointMesh", true)
registerClass(AudioEffectHighPassFilter, "AudioEffectHighPassFilter", true)
registerClass(Sprite, "Sprite", true)
registerClass(Theme, "Theme", true)
registerClass(VisualScriptSwitch, "VisualScriptSwitch", true)
registerClass(Tree, "Tree", true)
registerClass(VideoStreamTheora, "VideoStreamTheora", true)
registerClass(ConcavePolygonShape2D, "ConcavePolygonShape2D", true)
registerClass(PolygonPathFinder, "PolygonPathFinder", true)
registerClass(NinePatchRect, "NinePatchRect", true)
registerClass(EditorProperty, "EditorProperty", true)
registerClass(GraphNode, "GraphNode", true)
registerClass(AnimationNodeTimeSeek, "AnimationNodeTimeSeek", true)
registerClass(VisualShaderNodeBooleanConstant, "VisualShaderNodeBooleanConstant",
              true)
registerClass(VisualShaderNodeFresnel, "VisualShaderNodeFresnel", true)
registerClass(AStar2D, "AStar2D", true)
registerClass(TreeItem, "TreeItem", true)
registerClass(EditorScript, "EditorScript", true)
registerClass(VisualShaderNodeTransformDecompose,
              "VisualShaderNodeTransformDecompose", true)
registerClass(GridMap, "GridMap", true)
registerClass(VisualShaderNodeCustom, "VisualShaderNodeCustom", true)
registerClass(CharFXTransform, "CharFXTransform", true)
registerClass(SceneTree, "SceneTree", true)
registerClass(VisualScriptIndexSet, "VisualScriptIndexSet", true)
registerClass(VisualShaderNodeVectorScalarMix, "VisualShaderNodeVectorScalarMix",
              true)
registerClass(Navigation2D, "Navigation2D", true)
registerClass(VisualShaderNodeTransformConstant,
              "VisualShaderNodeTransformConstant", true)
registerClass(ProxyTexture, "ProxyTexture", true)
registerClass(MeshInstance2D, "MeshInstance2D", true)
registerClass(UPNPDevice, "UPNPDevice", true)
registerClass(Directory, "_Directory", true)
registerClass(InstancePlaceholder, "InstancePlaceholder", true)
registerClass(AudioEffectLowShelfFilter, "AudioEffectLowShelfFilter", true)
registerClass(HScrollBar, "HScrollBar", true)
registerClass(ShortCut, "ShortCut", true)
registerClass(CSGTorus, "CSGTorus", true)
registerClass(StyleBoxLine, "StyleBoxLine", true)
registerClass(VisualShaderNodeScalarFunc, "VisualShaderNodeScalarFunc", true)
registerClass(HingeJoint, "HingeJoint", true)
registerClass(Path, "Path", true)
registerClass(OmniLight, "OmniLight", true)
registerClass(AudioStreamPlayer, "AudioStreamPlayer", true)
registerClass(BitMap, "BitMap", true)
registerClass(StyleBoxEmpty, "StyleBoxEmpty", true)
registerClass(EditorSpatialGizmoPlugin, "EditorSpatialGizmoPlugin", true)
registerClass(CubeMap, "CubeMap", true)
registerClass(CollisionPolygon2D, "CollisionPolygon2D", true)
registerClass(AnimationNodeStateMachineTransition,
              "AnimationNodeStateMachineTransition", true)
registerClass(RemoteTransform2D, "RemoteTransform2D", true)
registerClass(CollisionShape, "CollisionShape", true)
registerClass(RegExMatch, "RegExMatch", true)
registerClass(TCPServer, "TCP_Server", true)
registerClass(MenuButton, "MenuButton", true)
registerClass(VisualShaderNodeVectorInterp, "VisualShaderNodeVectorInterp", true)
registerClass(AnimatedSprite3D, "AnimatedSprite3D", true)
registerClass(ToolButton, "ToolButton", true)
registerClass(AudioEffectLimiter, "AudioEffectLimiter", true)
registerClass(VisualScriptCondition, "VisualScriptCondition", true)
registerClass(AStar, "AStar", true)
registerClass(MultiplayerAPI, "MultiplayerAPI", true)
registerClass(DirectionalLight, "DirectionalLight", true)
registerClass(CSGMesh, "CSGMesh", true)
registerClass(CapsuleMesh, "CapsuleMesh", true)
registerClass(VisualScriptLocalVarSet, "VisualScriptLocalVarSet", true)
registerClass(VehicleBody, "VehicleBody", true)
registerClass(VisualScriptMathConstant, "VisualScriptMathConstant", true)
registerClass(AnimationNodeBlend3, "AnimationNodeBlend3", true)
registerClass(VisualShaderNodeOuterProduct, "VisualShaderNodeOuterProduct", true)
registerClass(WebRTCMultiplayer, "WebRTCMultiplayer", true)
registerClass(WorldEnvironment, "WorldEnvironment", true)
registerClass(Particles2D, "Particles2D", true)
registerClass(AnimationTrackEditPlugin, "AnimationTrackEditPlugin", true)
registerClass(ConcavePolygonShape, "ConcavePolygonShape", true)
registerClass(PhysicsShapeQueryResult, "PhysicsShapeQueryResult", true)
registerClass(VisibilityEnabler, "VisibilityEnabler", true)
registerClass(VisualShaderNodeIs, "VisualShaderNodeIs", true)
registerClass(EditorExportPlugin, "EditorExportPlugin", true)
registerClass(VisualShaderNodeCubeMapUniform, "VisualShaderNodeCubeMapUniform",
              true)
registerClass(SceneState, "SceneState", true)
registerClass(VideoPlayer, "VideoPlayer", true)
registerClass(EditorFileDialog, "EditorFileDialog", true)
registerClass(VisualScriptSceneNode, "VisualScriptSceneNode", true)
registerClass(VisualScriptYield, "VisualScriptYield", true)
registerClass(FuncRef, "FuncRef", true)
registerClass(ViewportTexture, "ViewportTexture", true)
registerClass(PacketPeerGDNative, "PacketPeerGDNative", true)
registerClass(HSplitContainer, "HSplitContainer", true)
registerClass(VisualShaderNodeDotProduct, "VisualShaderNodeDotProduct", true)
registerClass(VisualScriptPropertyGet, "VisualScriptPropertyGet", true)
registerClass(AudioStreamPlayer3D, "AudioStreamPlayer3D", true)
registerClass(BakedLightmapData, "BakedLightmapData", true)
registerClass(MultiMeshInstance2D, "MultiMeshInstance2D", true)
registerClass(NavigationMeshInstance, "NavigationMeshInstance", true)
registerClass(Physics2DShapeQueryResult, "Physics2DShapeQueryResult", true)
registerClass(RichTextEffect, "RichTextEffect", true)
registerClass(KinematicBody, "KinematicBody", true)
registerClass(NetworkedMultiplayerENet, "NetworkedMultiplayerENet", true)
registerClass(PackedScene, "PackedScene", true)
registerClass(SceneTreeTimer, "SceneTreeTimer", true)
registerClass(TouchScreenButton, "TouchScreenButton", true)
registerClass(PopupPanel, "PopupPanel", true)
registerClass(Texture3D, "Texture3D", true)
registerClass(AtlasTexture, "AtlasTexture", true)
registerClass(UndoRedo, "UndoRedo", true)
registerClass(TextEdit, "TextEdit", true)
registerClass(Label, "Label", true)
registerClass(GridContainer, "GridContainer", true)
registerClass(SpatialMaterial, "SpatialMaterial", true)
registerClass(VideoStreamGDNative, "VideoStreamGDNative", true)
registerClass(VisualShaderNodeTexture, "VisualShaderNodeTexture", true)
registerClass(VisualScriptSelect, "VisualScriptSelect", true)
registerClass(VehicleWheel, "VehicleWheel", true)
registerClass(AnimationTree, "AnimationTree", true)
registerClass(Light2D, "Light2D", true)
registerClass(VisualShaderNodeVec3Constant, "VisualShaderNodeVec3Constant", true)
registerClass(PHashTranslation, "PHashTranslation", true)
registerClass(SkeletonIK, "SkeletonIK", true)
registerClass(PanoramaSky, "PanoramaSky", true)
registerClass(VisualScriptIndexGet, "VisualScriptIndexGet", true)
registerClass(VisualShaderNodeVectorClamp, "VisualShaderNodeVectorClamp", true)
registerClass(VisualShaderNodeTransformVecMult,
              "VisualShaderNodeTransformVecMult", true)
registerClass(AudioStreamPlayer2D, "AudioStreamPlayer2D", true)
registerClass(CheckButton, "CheckButton", true)
registerClass(VisualShaderNodeVectorDistance, "VisualShaderNodeVectorDistance",
              true)
registerClass(SpatialVelocityTracker, "SpatialVelocityTracker", true)
registerClass(CenterContainer, "CenterContainer", true)
registerClass(AudioStreamGeneratorPlayback, "AudioStreamGeneratorPlayback", true)
registerClass(Animation, "Animation", true)
registerClass(PopupMenu, "PopupMenu", true)
registerClass(SurfaceTool, "SurfaceTool", true)
registerClass(PinJoint, "PinJoint", true)
registerClass(VisualScriptFunction, "VisualScriptFunction", true)
registerClass(VisualShaderNodeVectorSmoothStep,
              "VisualShaderNodeVectorSmoothStep", true)
registerClass(WebSocketClient, "WebSocketClient", true)
registerClass(AnimationNodeBlendSpace1D, "AnimationNodeBlendSpace1D", true)
registerClass(YSort, "YSort", true)
registerClass(VisualShaderNodeTextureUniformTriplanar,
              "VisualShaderNodeTextureUniformTriplanar", true)
registerClass(BitmapFont, "BitmapFont", true)
registerClass(CubeMesh, "CubeMesh", true)
registerClass(VisualScriptSequence, "VisualScriptSequence", true)
registerClass(AnimationNodeTimeScale, "AnimationNodeTimeScale", true)
registerClass(ResourcePreloader, "ResourcePreloader", true)
registerClass(TextFile, "TextFile", true)
registerClass(AudioEffectChorus, "AudioEffectChorus", true)
registerClass(AudioEffectNotchFilter, "AudioEffectNotchFilter", true)
registerClass(ConvexPolygonShape, "ConvexPolygonShape", true)
registerClass(TextureButton, "TextureButton", true)
registerClass(AnimationNodeAdd2, "AnimationNodeAdd2", true)
registerClass(UPNP, "UPNP", true)
registerClass(VisualShaderNodeTransformUniform,
              "VisualShaderNodeTransformUniform", true)
registerClass(PacketPeerDTLS, "PacketPeerDTLS", true)
registerClass(ViewportContainer, "ViewportContainer", true)
registerClass(AnimationNodeStateMachine, "AnimationNodeStateMachine", true)
registerClass(ShaderMaterial, "ShaderMaterial", true)
registerClass(SliderJoint, "SliderJoint", true)
registerClass(JavaClass, "JavaClass", true)
registerClass(VisualScriptComment, "VisualScriptComment", true)
registerClass(VisualScriptGlobalConstant, "VisualScriptGlobalConstant", true)
registerClass(Bone2D, "Bone2D", true)
registerClass(AudioEffectBandLimitFilter, "AudioEffectBandLimitFilter", true)
registerClass(ColorPickerButton, "ColorPickerButton", true)
registerClass(GDScript, "GDScript", true)
registerClass(AnimationNodeAdd3, "AnimationNodeAdd3", true)
registerClass(HeightMapShape, "HeightMapShape", true)
registerClass(CollisionPolygon, "CollisionPolygon", true)
registerClass(RemoteTransform, "RemoteTransform", true)
registerClass(ScriptEditor, "ScriptEditor", true)
registerClass(ProceduralSky, "ProceduralSky", true)
registerClass(StreamPeerBuffer, "StreamPeerBuffer", true)
registerClass(EditorScenePostImport, "EditorScenePostImport", true)
registerClass(Gradient, "Gradient", true)
registerClass(SegmentShape2D, "SegmentShape2D", true)
registerClass(VisualShaderNodeVectorScalarStep,
              "VisualShaderNodeVectorScalarStep", true)
registerClass(Camera2D, "Camera2D", true)
registerClass(QuadMesh, "QuadMesh", true)
registerClass(Polygon2D, "Polygon2D", true)
registerClass(PathFollow, "PathFollow", true)
registerClass(SpriteFrames, "SpriteFrames", true)
registerClass(ResourceInteractiveLoader, "ResourceInteractiveLoader", true)
registerClass(AudioStreamGenerator, "AudioStreamGenerator", true)
registerClass(EditorResourcePreview, "EditorResourcePreview", true)
registerClass(PlaneShape, "PlaneShape", true)
registerClass(RootMotionView, "RootMotionView", true)
registerClass(ArrayMesh, "ArrayMesh", true)
registerClass(VisualScriptVariableGet, "VisualScriptVariableGet", true)
registerClass(AudioEffectStereoEnhance, "AudioEffectStereoEnhance", true)
registerClass(EditorPlugin, "EditorPlugin", true)
registerClass(GDScriptFunctionState, "GDScriptFunctionState", true)
registerClass(VisualShaderNodeDeterminant, "VisualShaderNodeDeterminant", true)
registerClass(VisualShaderNodeInput, "VisualShaderNodeInput", true)
registerClass(EditorNavigationMeshGenerator, "EditorNavigationMeshGenerator", true)
registerClass(Crypto, "Crypto", true)
registerClass(ColorPicker, "ColorPicker", true)
registerClass(JSONRPC, "JSONRPC", true)
registerClass(JNISingleton, "JNISingleton", true)
registerClass(Line2D, "Line2D", true)
registerClass(CapsuleShape, "CapsuleShape", true)
registerClass(RectangleShape2D, "RectangleShape2D", true)
registerClass(Skeleton2D, "Skeleton2D", true)
registerClass(ProgressBar, "ProgressBar", true)
registerClass(HSeparator, "HSeparator", true)
registerClass(CSGCylinder, "CSGCylinder", true)
registerClass(NavigationPolygon, "NavigationPolygon", true)
registerClass(Physics2DTestMotionResult, "Physics2DTestMotionResult", true)
registerClass(StaticBody2D, "StaticBody2D", true)
registerClass(ScriptCreateDialog, "ScriptCreateDialog", true)
registerClass(VisualScriptLocalVar, "VisualScriptLocalVar", true)
registerClass(VisualShaderNodeScalarUniform, "VisualShaderNodeScalarUniform", true)
registerClass(AnimationNodeAnimation, "AnimationNodeAnimation", true)
registerClass(StreamPeerGDNative, "StreamPeerGDNative", true)
registerClass(AudioStreamMicrophone, "AudioStreamMicrophone", true)
registerClass(VisualShaderNodeColorConstant, "VisualShaderNodeColorConstant", true)
registerClass(Generic6DOFJoint, "Generic6DOFJoint", true)
registerClass(ReferenceRect, "ReferenceRect", true)
registerClass(VisualScriptIterator, "VisualScriptIterator", true)
registerClass(VisualScriptSubCall, "VisualScriptSubCall", true)
registerClass(Physics2DShapeQueryParameters, "Physics2DShapeQueryParameters", true)
registerClass(EditorInspectorPlugin, "EditorInspectorPlugin", true)
registerClass(X509Certificate, "X509Certificate", true)
registerClass(PinJoint2D, "PinJoint2D", true)
registerClass(InputEventPanGesture, "InputEventPanGesture", true)
registerClass(Tabs, "Tabs", true)
registerClass(VisualShaderNodeColorOp, "VisualShaderNodeColorOp", true)
registerClass(AnimationNodeStateMachinePlayback,
              "AnimationNodeStateMachinePlayback", true)
registerClass(KinematicBody2D, "KinematicBody2D", true)
registerClass(NavigationMesh, "NavigationMesh", true)
registerClass(CanvasItemMaterial, "CanvasItemMaterial", true)
registerClass(AnimationTreePlayer, "AnimationTreePlayer", true)
registerClass(ParallaxBackground, "ParallaxBackground", true)
registerClass(LinkButton, "LinkButton", true)
registerClass(ItemList, "ItemList", true)
registerClass(LineShape2D, "LineShape2D", true)
registerClass(ParallaxLayer, "ParallaxLayer", true)
registerClass(SphereMesh, "SphereMesh", true)
registerClass(VisualShaderNodeBooleanUniform, "VisualShaderNodeBooleanUniform",
              true)
registerClass(Curve3D, "Curve3D", true)
registerClass(AudioEffectLowPassFilter, "AudioEffectLowPassFilter", true)
registerClass(VisualScriptResourcePath, "VisualScriptResourcePath", true)
registerClass(VisualScriptYieldSignal, "VisualScriptYieldSignal", true)
registerClass(VisualShaderNodeVectorCompose, "VisualShaderNodeVectorCompose", true)
registerClass(ConfigFile, "ConfigFile", true)
registerClass(VisualShaderNodeVectorLen, "VisualShaderNodeVectorLen", true)
registerClass(GDNative, "GDNative", true)
registerClass(Sprite3D, "Sprite3D", true)
registerClass(AudioEffectReverb, "AudioEffectReverb", true)
registerClass(InputEventScreenDrag, "InputEventScreenDrag", true)
registerClass(CSGPolygon, "CSGPolygon", true)
registerClass(Area, "Area", true)
registerClass(EditorSpatialGizmo, "EditorSpatialGizmo", true)
registerClass(AnimatedTexture, "AnimatedTexture", true)
registerClass(MultiMeshInstance, "MultiMeshInstance", true)
registerClass(NoiseTexture, "NoiseTexture", true)
registerClass(VisualScriptReturn, "VisualScriptReturn", true)
registerClass(AudioEffectEQ21, "AudioEffectEQ21", true)
registerClass(AudioEffectHighShelfFilter, "AudioEffectHighShelfFilter", true)
registerClass(AudioEffectCompressor, "AudioEffectCompressor", true)
registerClass(InputEventAction, "InputEventAction", true)
registerClass(EditorInspector, "EditorInspector", true)
registerClass(DTLSServer, "DTLSServer", true)
registerClass(VisualScriptPropertySet, "VisualScriptPropertySet", true)
registerClass(AnimationNodeBlend2, "AnimationNodeBlend2", true)
registerClass(ButtonGroup, "ButtonGroup", true)
registerClass(Expression, "Expression", true)
registerClass(VisualShaderNodeCubeMap, "VisualShaderNodeCubeMap", true)
registerClass(VisualShaderNodeVectorFunc, "VisualShaderNodeVectorFunc", true)
registerClass(TriangleMesh, "TriangleMesh", true)
registerClass(ColorRect, "ColorRect", true)
registerClass(ParticlesMaterial, "ParticlesMaterial", true)
registerClass(VisualShaderNodeGlobalExpression,
              "VisualShaderNodeGlobalExpression", true)
registerClass(WebRTCDataChannelGDNative, "WebRTCDataChannelGDNative", true)
registerClass(Physics2DDirectSpaceState, "Physics2DDirectSpaceState", true)
registerClass(CryptoKey, "CryptoKey", true)
registerClass(PrismMesh, "PrismMesh", true)
registerClass(CircleShape2D, "CircleShape2D", true)
registerClass(GraphEdit, "GraphEdit", true)
registerClass(File, "_File", true)
registerClass(VisualScriptEngineSingleton, "VisualScriptEngineSingleton", true)
registerClass(VisualScriptFunctionState, "VisualScriptFunctionState", true)
registerClass(GradientTexture, "GradientTexture", true)
registerClass(CheckBox, "CheckBox", true)
registerClass(CapsuleShape2D, "CapsuleShape2D", true)
registerClass(EditorSpinSlider, "EditorSpinSlider", true)
registerClass(VisualShaderNodeColorUniform, "VisualShaderNodeColorUniform", true)
registerClass(PopupDialog, "PopupDialog", true)
registerClass(InputEventMagnifyGesture, "InputEventMagnifyGesture", true)
registerClass(PhysicalBone, "PhysicalBone", true)
registerClass(TabContainer, "TabContainer", true)
registerClass(WebSocketServer, "WebSocketServer", true)
registerClass(ARVRPositionalTracker, "ARVRPositionalTracker", true)
registerClass(EditorSelection, "EditorSelection", true)
registerClass(JSONParseResult, "JSONParseResult", true)
registerClass(AnimationNodeTransition, "AnimationNodeTransition", true)
registerClass(AudioStreamOGGVorbis, "AudioStreamOGGVorbis", true)
registerClass(AudioEffectRecord, "AudioEffectRecord", true)
registerClass(VSplitContainer, "VSplitContainer", true)
registerClass(RigidBody2D, "RigidBody2D", true)
registerClass(VisualScriptComposeArray, "VisualScriptComposeArray", true)
registerClass(ClippedCamera, "ClippedCamera", true)
registerClass(BoneAttachment, "BoneAttachment", true)
registerClass(ExternalTexture, "ExternalTexture", true)
registerClass(VisualShaderNodeVectorDerivativeFunc,
              "VisualShaderNodeVectorDerivativeFunc", true)
registerClass(AudioEffectBandPassFilter, "AudioEffectBandPassFilter", true)
registerClass(InputEventJoypadMotion, "InputEventJoypadMotion", true)
registerClass(NavigationPolygonInstance, "NavigationPolygonInstance", true)
registerClass(Particles, "Particles", true)
registerClass(AudioEffectEQ6, "AudioEffectEQ6", true)
registerClass(VisibilityEnabler2D, "VisibilityEnabler2D", true)
registerClass(ImmediateGeometry, "ImmediateGeometry", true)
registerClass(KinematicCollision2D, "KinematicCollision2D", true)
registerClass(BoxShape, "BoxShape", true)
registerClass(VisualScriptTypeCast, "VisualScriptTypeCast", true)
registerClass(VisualShaderNodeScalarInterp, "VisualShaderNodeScalarInterp", true)
registerClass(ARVRInterfaceGDNative, "ARVRInterfaceGDNative", true)
registerClass(VisualScriptVariableSet, "VisualScriptVariableSet", true)
registerClass(Thread, "_Thread", true)
registerClass(TileMap, "TileMap", true)
registerClass(MarginContainer, "MarginContainer", true)
registerClass(MobileVRInterface, "MobileVRInterface", true)
registerClass(PackedDataContainerRef, "PackedDataContainerRef", true)
registerClass(MeshLibrary, "MeshLibrary", true)
registerClass(VisualScriptClassConstant, "VisualScriptClassConstant", true)
registerClass(EditorFileSystemDirectory, "EditorFileSystemDirectory", true)