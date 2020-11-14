module AFrame.Components exposing (..)


import Html exposing (..)
import Html.Attributes exposing (..)


import AFrame.Components.Properties exposing (Property, toAttribute, toString)
import AFrame.Primitives.Attributes as AF exposing (position)


component : String -> List Property -> Attribute msg
component =
    toAttribute


node : String -> List Property -> Html msg
node name props =
    node_ name props []


node_ : String -> List Property -> List (Html msg) -> Html msg
node_ name props =
    Html.node name
        (List.map (\(n, v) -> attribute n v) props)


animation : List Property -> Attribute msg
animation = component "animation"


animation_ : String -> List Property -> Attribute msg
animation_ name = component <| "animation__" ++ name


background : List Property -> Attribute msg
background = component "background"


camera : List Property -> Attribute msg
camera = component "camera"


cursor : List Property -> Attribute msg
cursor = component "camera"


daydreamControls : List Property -> Attribute msg
daydreamControls = component "daydream-controls"


debug : Attribute msg
debug = component "daydream-controls" []


deviceOrientationPersmissionUi : List Property -> Attribute msg
deviceOrientationPersmissionUi = component "device-orientation-permission-ui"


embedded : Attribute msg
embedded = component "embedded" []


fog : List Property -> Attribute msg
fog = component "fog"


gearVrControls : List Property -> Attribute msg
gearVrControls = component "gearvr-controls"


geometry : List Property -> Attribute msg
geometry = component "geometry"


gltfModel : List Property -> Attribute msg
gltfModel = component "gltf-model"


handControls : List Property -> Attribute msg
handControls = component "hand-controls"


keyboardShortcuts : List Property -> Attribute msg
keyboardShortcuts = component "keyboard-shortcuts"


laserControls : List Property -> Attribute msg
laserControls = component "laser-controls"


light : List Property -> Attribute msg
light = component "light"


line : List Property -> Attribute msg
line = component "line"


link : List Property -> Attribute msg
link = component "link"


loadingScreen : List Property -> Attribute msg
loadingScreen = component "loading-screen"


lookControls : List Property -> Attribute msg
lookControls = component "look-controls"


material : List Property -> Attribute msg
material = component "material"


objModel : List Property -> Attribute msg
objModel = component "obj-model"


oculusGoControls : List Property -> Attribute msg
oculusGoControls = component "oculus-go-controls"


oculusTouchControls : List Property -> Attribute msg
oculusTouchControls = component "oculus-touch-controls"


pool : List Property -> Attribute msg
pool = component "pool"


position : Float -> Float -> Float -> Attribute msg
position =
    AF.position


raycaster : List Property -> Attribute msg
raycaster = component "raycaster"


renderer : List Property -> Attribute msg
renderer = component "renderer"


rotation : Float -> Float -> Float -> Attribute msg
rotation =
    AF.rotation


scale : Float -> Float -> Float -> Attribute msg
scale =
    AF.scale


shadow : List Property -> Attribute msg
shadow = component "shadow"


sound : List Property -> Attribute msg
sound = component "sound"


stats : Attribute msg
stats = component "stats" []


text : List Property -> Attribute msg
text = component "text"


trackedControls : List Property -> Attribute msg
trackedControls = component "tracked-controls"


visible : Bool -> Attribute msg
visible v =
    attribute "visible" <| case v of
        True -> "true"
        False -> "false"


viveControls : List Property -> Attribute msg
viveControls = component "vive-controls"


viveFocusControls : List Property -> Attribute msg
viveFocusControls = component "vive-focus-controls"


vrModeUi : List Property -> Attribute msg
vrModeUi = component "vr-mode-ui"


wasdControls : List Property -> Attribute msg
wasdControls = component "wasd-controls"


windowsMotionControls : List Property -> Attribute msg
windowsMotionControls = component "windows-motion-controls"
