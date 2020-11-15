module AFrame.Components exposing (..)


import Html exposing (..)
import Html.Attributes exposing (..)


import AFrame.Properties exposing (Property, toString)
import AFrame.Properties as Properties exposing (toString)
import AFrame.Primitives.Attributes as AF exposing (position)
import AFrame.Util exposing (boolToString)


type alias Component msg = Attribute msg


{-|

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
-}


component : String -> List Property -> Component msg
component name =
    attribute name << Properties.toString


node : String -> List Property -> Html msg
node name props =
    node_ name props []


node_ : String -> List Property -> List (Html msg) -> Html msg
node_ name props =
    Html.node name
        (List.map (\(n, v) -> attribute n v) props)


animation : List Property -> Component msg
animation = component "animation"


animation_ : String -> List Property -> Component msg
animation_ name = component <| "animation__" ++ name


animationMixer : Component msg
animationMixer = component "animation-mixer" []


background : List Property -> Component msg
background = component "background"


camera : List Property -> Component msg
camera = component "camera"


cursor : List Property -> Component msg
cursor = component "cursor"


daydreamControls : List Property -> Component msg
daydreamControls = component "daydream-controls"


debug : Component msg
debug = component "debug" []


deviceOrientationPersmissionUi : List Property -> Component msg
deviceOrientationPersmissionUi = component "device-orientation-permission-ui"


embedded : Component msg
embedded = component "embedded" []


fog : List Property -> Component msg
fog = component "fog"


gearVrControls : List Property -> Component msg
gearVrControls = component "gearvr-controls"


geometry : List Property -> Component msg
geometry = component "geometry"


gltfModel : String -> Component msg
gltfModel = attribute "gltf-model"


handControls : List Property -> Component msg
handControls = component "hand-controls"


keyboardShortcuts : List Property -> Component msg
keyboardShortcuts = component "keyboard-shortcuts"


laserControls : List Property -> Component msg
laserControls = component "laser-controls"


light : List Property -> Component msg
light = component "light"


line : List Property -> Component msg
line = component "line"


line_ : String -> List Property -> Component msg
line_ name = component <| "line__" ++ name


link : List Property -> Component msg
link = component "link"


loadingScreen : List Property -> Component msg
loadingScreen = component "loading-screen"


lookControls : List Property -> Component msg
lookControls = component "look-controls"


material : List Property -> Component msg
material = component "material"


objModel : List Property -> Component msg
objModel = component "obj-model"


oculusGoControls : List Property -> Component msg
oculusGoControls = component "oculus-go-controls"


oculusTouchControls : List Property -> Component msg
oculusTouchControls = component "oculus-touch-controls"


pool : List Property -> Component msg
pool = component "pool"


position : Float -> Float -> Float -> Component msg
position =
    AF.position


raycaster : List Property -> Component msg
raycaster = component "raycaster"


renderer : List Property -> Component msg
renderer = component "renderer"


rotation : Float -> Float -> Float -> Component msg
rotation =
    AF.rotation


scale : Float -> Float -> Float -> Component msg
scale =
    AF.scale


shadow : List Property -> Component msg
shadow = component "shadow"


sound : List Property -> Component msg
sound = component "sound"


stats : Component msg
stats = component "stats" []


text : List Property -> Component msg
text = component "text"


trackedControls : List Property -> Component msg
trackedControls = component "tracked-controls"


visible : Bool -> Component msg
visible =
    attribute "visible" << boolToString


viveControls : List Property -> Component msg
viveControls = component "vive-controls"


viveFocusControls : List Property -> Component msg
viveFocusControls = component "vive-focus-controls"


vrModeUi : List Property -> Component msg
vrModeUi = component "vr-mode-ui"


wasdControls : List Property -> Component msg
wasdControls = component "wasd-controls"


windowsMotionControls : List Property -> Component msg
windowsMotionControls = component "windows-motion-controls"
