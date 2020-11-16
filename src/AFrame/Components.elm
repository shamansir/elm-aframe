module AFrame.Components exposing

    ( Component, component
    , node, node_
    , gltfModel, objModel
    , daydreamControls, gearVrControls, handControls, laserControls
    , lookControls, oculusGoControls, oculusTouchControls, trackedControls, viveControls
    , viveFocusControls, wasdControls, windowsMotionControls
    , keyboardShortcuts
    , position, rotation, scale, visible
    , animation, animation_, animationMixer
    , background, camera, cursor
    , embedded, fog, geometry, light, line, line_, link, material
    , pool, raycaster, renderer, shadow, sound, text
    , loadingScreen, debug, stats, deviceOrientationPersmissionUi, vrModeUi, screenshot
    )

{-| # Component

`Component msg` is just an alias for `Html.Attribute msg`, but lets you specify typed properties and than builds up the required string value by itself.

    entity
        [ geometry [ primitive box ]
        , material [ color Color.red ]
        , animation_ "mouseenter"
            [ property_ "components.material.material.color"
            , type_ "color"
            , toColor Color.blue
            , startEvents [ mouseEnter ]
            , dur 500
            ]
        , animation_ "mouseleave"
            [ property_ "components.material.material.color"
            , type_ "color"
            , toColor Color.red
            , startEvents [ mouseLeave ]
            , dur 500
            ]
        , animation [ property_ "rotation" ]
        , animation_ "2" [ property_ "position" ]
        , animation_ "color" [ property_ "color" ]
        ]
        []

# Construction

@docs Component, component, node, node_

# General

@docs background, camera, cursor, embedded, fog, geometry, light, line, line_, link, material, pool, raycaster, renderer, shadow, sound, text

# Properties

@docs position, rotation, scale, visible

# Models

@docs gltfModel, objModel

# Animation

@docs animation, animation_, animationMixer

# Controls

@docs daydreamControls, gearVrControls, handControls, laserControls, lookControls, oculusGoControls, oculusTouchControls, trackedControls, viveControls, viveFocusControls, wasdControls, windowsMotionControls

# UI and Helpers

@docs loadingScreen, debug, stats, deviceOrientationPersmissionUi, vrModeUi, screenshot

-}


import Html exposing (..)
import Html.Attributes exposing (..)


import AFrame.Properties exposing (Property, toString)
import AFrame.Properties as Properties exposing (toString)
import AFrame.Primitives.Attributes as AF exposing (position)
import AFrame.Util exposing (boolToString)


{-| -}
type alias Component msg = Attribute msg


{-| -}
component : String -> List Property -> Component msg
component name =
    attribute name << Properties.toString


{-| -}
node : String -> List Property -> Html msg
node name props =
    node_ name props []


{-| -}
node_ : String -> List Property -> List (Html msg) -> Html msg
node_ name props =
    Html.node name
        (List.map (\(n, v) -> attribute n v) props)


{-| The animation component lets us animate and tween values. -}
animation : List Property -> Component msg
animation = component "animation"


{-| The animation with custom ID component lets us animate and tween values. -}
animation_ : String -> List Property -> Component msg
animation_ name = component <| "animation__" ++ name


{-| -}
animationMixer : Component msg
animationMixer = component "animation-mixer" []


{-| The background component sets a basic color background of a scene that is more performant than a-sky since geometry is not created. -}
background : List Property -> Component msg
background = component "background"


{-| The camera component defines from which perspective the user views the scene. The camera is commonly paired with controls components that allow input devices to move and rotate the camera. -}
camera : List Property -> Component msg
camera = component "camera"


{-| The cursor component provides hover and click states for interaction on top of the raycaster component. -}
cursor : List Property -> Component msg
cursor = component "cursor"


{-| The `daydream-controls` component interfaces with the Google Daydream controllers. -}
daydreamControls : List Property -> Component msg
daydreamControls = component "daydream-controls"


{-| The debug component enables component-to-DOM serialization. -}
debug : Component msg
debug = component "debug" []


{-| Starting with Safari on iOS 13 browsers require sites to be served over https and request user permission to access DeviceOrientation events. This component presents a permission dialog for the user to grant or deny access. The `device-orientation-permission-ui` component applies only to the `<a-scene> `element -}
deviceOrientationPersmissionUi : List Property -> Component msg
deviceOrientationPersmissionUi = component "device-orientation-permission-ui"


{-| The embedded component removes fullscreen CSS styles from A-Frame’s `<canvas>` element, making it easier to embed within the layout of an existing webpage. Embedding removes the default fixed positioning from the canvas and makes the Enter VR button smaller. -}
embedded : Component msg
embedded = component "embedded" []


{-| The `fog` component obscures entities in fog given distance from the camera. The fog component applies only to the `<a-scene>` element. -}
fog : List Property -> Component msg
fog = component "fog"


{-| The `gearvr-controls` component interfaces with the Samsung/Oculus Gear VR controllers. -}
gearVrControls : List Property -> Component msg
gearVrControls = component "gearvr-controls"


{-| The `geometry` component provides a basic shape for an entity. The primitive property defines the general shape. Geometric primitives, in computer graphics, are irreducible basic shapes. A material component is commonly defined to provide a appearance alongside the shape to create a complete mesh.-}
geometry : List Property -> Component msg
geometry = component "geometry"


{-| glTF (GL Transmission Format) is an open project by Khronos providing a common, extensible format for 3D assets that is both efficient and highly interoperable with modern web technologies.

The gltf-model component loads a 3D model using a glTF (`.gltf` or `.glb`) file. -}
gltfModel : String -> Component msg
gltfModel = attribute "gltf-model"


{-| The hand-controls component provides tracked hands (using a prescribed model) with animated gestures. hand-controls wraps the vive-controls and oculus-touch-controls which in turn wrap the tracked-controls component. By specifying just hand-controls, we have something that works well with both Vive and Rift. The component gives extra events and handles hand animations and poses. -}
handControls : List Property -> Component msg
handControls = component "hand-controls"


{-| The keyboard-shortcuts component toggles global keyboard shortcuts. The keyboard-shortcuts component applies only to the `<a-scene>` element. -}
keyboardShortcuts : List Property -> Component msg
keyboardShortcuts = component "keyboard-shortcuts"


{-| The laser-controls component provides tracked controls with a laser or ray cursor shooting out to be used for input and interactions. DoF stands for degrees of freedom. Because they only require rotation and some form of input, laser-based interactions scale well across 0 DoF (gaze-based, Cardboard), 3 DoF (Daydream, GearVR with controllers), and 6 DoF (Vive, Oculus Touch). If desired, we can get a consistent form of interaction that works across all VR platforms with a single line of HTML. -}
laserControls : List Property -> Component msg
laserControls = component "laser-controls"


{-| The light component defines the entity as a source of light. Light affects all materials that have not specified a flat shading model with shader: flat. Note that lights are computationally expensive we should limit number of lights in a scene. -}
light : List Property -> Component msg
light = component "light"


{-| The line component draws a line given a start coordinate and end coordinate using THREE.Line. -}
line : List Property -> Component msg
line = component "line"


{-| -}
line_ : String -> List Property -> Component msg
line_ name = component <| "line__" ++ name


{-| The `link` component connects between experiences and allows for traversing between VR web pages. When activated via an event, the link component sends the user to a different page, just like a normal web page redirect. -}
link : List Property -> Component msg
link = component "link"


{-| The loading screen component configures the loading screen visual style. -}
loadingScreen : List Property -> Component msg
loadingScreen = component "loading-screen"


{-| The `look-controls` component:

* Rotates the entity when we rotate a VR head-mounted display (HMD).
* Rotates the entity when we move the mouse.
* Rotates the entity when we touch-drag the touchscreen.
-}
lookControls : List Property -> Component msg
lookControls = component "look-controls"


{-| The `material` component gives appearance to an entity. We can define properties such as color, opacity, or texture. This is often paired with the `geometry` component which provides shape. -}
material : List Property -> Component msg
material = component "material"


{-| The obj-model component loads a 3D model and material using a Wavefront (`.OBJ`) file and a `.MTL` file. -}
objModel : List Property -> Component msg
objModel = component "obj-model"


{-| The `oculus-go-controls` component interfaces with the Oculus Go controllers. It wraps the tracked-controls component while adding button mappings, events, and an Oculus Go controller model that highlights the touched and/or pressed buttons (trackpad, trigger). -}
oculusGoControls : List Property -> Component msg
oculusGoControls = component "oculus-go-controls"


{-| The `oculus-touch-controls` component interfaces with the Oculus Touch controllers. It wraps the tracked-controls component while adding button mappings, events, and a Touch controller model. -}
oculusTouchControls : List Property -> Component msg
oculusTouchControls = component "oculus-touch-controls"


{-| The `pool` component allows for object pooling. This gives us a reusable pool of entities to avoid creating and destroying the same kind of entities in dynamic scenes. Object pooling helps reduce garbage collection pauses. -}
pool : List Property -> Component msg
pool = component "pool"


{-| The position component places entities at certain spots in 3D space. Position takes a coordinate value as three space-delimited numbers.

All entities inherently have the position component.
-}
position : Float -> Float -> Float -> Component msg
position =
    AF.position


{-| The raycaster component provides line-based intersection testing with a raycaster. Raycasting is the method of extending a line from an origin towards a direction, and checking whether that line intersects with other entites. -}
raycaster : List Property -> Component msg
raycaster = component "raycaster"


{-| The `renderer` system configures a scene’s `THREE.WebGLRenderer` instance. It also configures presentation attributes when entering WebVR/WebXR. -}
renderer : List Property -> Component msg
renderer = component "renderer"


{-| The `rotation` component defines the orientation of an entity in degrees. It takes the pitch (x), yaw (y), and roll (z) as three space-delimited numbers indicating degrees of rotation.

All entities inherently have the rotation component. -}
rotation : Float -> Float -> Float -> Component msg
rotation =
    AF.rotation


{-| The `scale` component defines a shrinking, stretching, or skewing transformation of an entity. It takes three scaling factors for the X, Y, and Z axes.

All entities inherently have the scale component. -}
scale : Float -> Float -> Float -> Component msg
scale =
    AF.scale


{-| The `screenshot` component lets us take different types of screenshots with keyboard shortcuts. A-Frame attaches this component to the scene by default so we don’t have to do anything to use the component. -}
screenshot : List Property -> Component msg
screenshot = component "screenshot"


{-| The `shadow` component enables shadows for an entity and its children. Receiving shadows from surrounding objects and casting shadows onto other objects may (and often should) be enabled independently.

Without this component, an entity will not cast nor receive shadows. -}
shadow : List Property -> Component msg
shadow = component "shadow"


{-| The `sound` component defines the entity as a source of sound or audio. The sound component is positional and is thus affected by the components-position. -}
sound : List Property -> Component msg
sound = component "sound"


{-| The `stats` component displays a UI with performance-related metrics. The stats component applies only to the` <a-scene>` element. -}
stats : Component msg
stats = component "stats" []


{-| The `text` component renders signed distance field (`SDF`) font text. -}
text : List Property -> Component msg
text = component "text"


{-| The `tracked-controls` component interfaces with tracked controllers. tracked-controls uses the Gamepad API to handle tracked controllers, and is abstracted by the hand-controls component as well as the vive-controls, oculus-touch-controls, windows-motion-controls, and daydream-controls components. This component elects the appropriate controller, applies pose to the entity, observes buttons state and emits appropriate events. For non-6DOF controllers such as daydream-controls, a primitive arm model is used to emulate positional data. -}
trackedControls : List Property -> Component msg
trackedControls = component "tracked-controls"


{-| The `visible` component determines whether to render an entity. If set to `false`, then the entity will not be visible nor drawn.

Visibility effectively applies to all children. If an entity’s parent or ancestor entity has visibility set to `false`, then the entity will also not be visible nor draw. It’s a common pattern to create container entities that contain an entire group of entities that you can flip on an off with `visible`. -}
visible : Bool -> Component msg
visible =
    attribute "visible" << boolToString


{-| The `vive-controls` component interfaces with the HTC Vive controllers/wands. It wraps the tracked-controls component while adding button mappings, events, and a Vive controller model that highlights the pressed buttons (trigger, grip, menu, system) and trackpad. -}
viveControls : List Property -> Component msg
viveControls = component "vive-controls"


{-| The `vive-focus-controls` component interfaces with the Vive Focus controller. It wraps the tracked-controls component while adding button mappings, events, and an Vive Focus controller model that highlights the touched and/or pressed buttons (trackpad, trigger). -}
viveFocusControls : List Property -> Component msg
viveFocusControls = component "vive-focus-controls"


{-| The `vr-mode-ui` component allows disabling of UI such as an Enter VR button, compatibility modal, and orientation modal for mobile. The `vr-mode-ui` component applies only to the `<a-scene>` element. If we wish to simply toggle the UI, use CSS instead. -}
vrModeUi : List Property -> Component msg
vrModeUi = component "vr-mode-ui"


{-| The `wasd-controls` component controls an entity with the WASD or arrow keyboard keys. The wasd-controls component is commonly attached to an entity with the camera component. -}
wasdControls : List Property -> Component msg
wasdControls = component "wasd-controls"


{-| The `windows-motion-controls` component interfaces with any spatial controllers exposed through Windows Mixed Reality as Spatial Input Sources (such as Motion Controllers). It wraps the tracked-controls component while adding button mappings, events, and a controller model that highlights applies position/rotation transforms to the pressed buttons (trigger, grip, menu, thumbstick, trackpad) and moved axes (thumbstick and trackpad.) -}
windowsMotionControls : List Property -> Component msg
windowsMotionControls = component "windows-motion-controls"
