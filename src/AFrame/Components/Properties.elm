module AFrame.Components.Properties exposing (..)


import Html exposing (Attribute)
import Html.Attributes exposing (attribute)

import Color exposing (Color)

import AFrame.Directions as Dir
import AFrame.Directions exposing (Direction)
import AFrame.Easings as Easing
import AFrame.Easings exposing (Easing)
import AFrame.Events as Events exposing (stringify)
import AFrame.Events exposing (Event)
import AFrame.Hand exposing (Hand)
import AFrame.Hand as Hand exposing (toString)
import AFrame.Primitive exposing (Primitive)
import AFrame.Primitive as Primitive exposing (toString)


type alias Property = ( String, String )


property : String -> String -> Property
property = Tuple.pair


toString : List Property -> String
toString =
    let
        propToString ( name, value ) = name ++ ": " ++ value
    in
        String.join "; "
        << List.map propToString


toAttribute : String -> List Property -> Attribute msg
toAttribute name =
    attribute name << toString


boolToString : Bool -> String
boolToString bool =
    case bool of
        True -> "true"
        False -> "false"


vec3ToString : Float -> Float -> Float -> String
vec3ToString x y z =
    [ x, y, z ]
        |> List.map String.fromFloat
        |> String.join " "


{- animation -}

property_ : String -> Property
property_ = property "property"


isRawProperty : Bool -> Property
isRawProperty = property "property" << boolToString


from : String -> Property
from = property "from"


fromColor : Color -> Property
fromColor = from << Color.toCssString


fromVec3 : Float -> Float -> Float -> Property
fromVec3 x y z = from <| vec3ToString x y z


to : String -> Property
to = property "to"


toColor : Color -> Property
toColor = to << Color.toCssString


toVec3 : Float -> Float -> Float -> Property
toVec3 x y z = to <| vec3ToString x y z


type_ : String -> Property
type_ = property "type"


delay : Int -> Property
delay = property "delay" << String.fromInt


dir : Dir.Direction -> Property
dir = property "direction" << Dir.toString


dur : Int -> Property
dur = property "dur" << String.fromInt


easing : Easing -> Property
easing = property "easing" << Easing.toString


elasticity : Float -> Property
elasticity = property "elasticity" << String.fromFloat


loop : Int -> Property
loop = property "loop" << String.fromInt


loopForever : Property
loopForever = property "loop" "true"


round : Bool -> Property
round = property "round" << boolToString


startEvents : List Event -> Property
startEvents = property "startEvents" << Events.stringify


pauseEvents : List Event -> Property
pauseEvents = property "pauseEvents" << Events.stringify


resumeEvents : List Event -> Property
resumeEvents = property "resumeEvents" << Events.stringify


autoplay : Bool -> Property
autoplay = property "autoplay" << boolToString


enabled : Bool -> Property
enabled = property "enabled" << boolToString


{- background -}

background : Color -> Property
background = property "color" << Color.toCssString


transparent : Bool -> Property
transparent = property "transparent" << boolToString


{- camera -}

active : Bool -> Property
active = property "active" << boolToString


far : Float -> Property
far = property "far" << String.fromFloat


fov : Float -> Property
fov = property "fov" << String.fromFloat


near : Float -> Property
near = property "near" << String.fromFloat


spectator : Bool -> Property
spectator = property "spectator" << boolToString


zoom : Float -> Property
zoom = property "zoom" << String.fromFloat


{- cursor -}

downEvents : List Event -> Property
downEvents = property "downEvents" << Events.stringify


fuse : Bool -> Property
fuse = property "fuse" << boolToString


fuseTimeout : Int -> Property
fuseTimeout = property "fuseTimeout" << String.fromInt


mouseCursorStylesEnabled : Bool -> Property
mouseCursorStylesEnabled = property "mouseCursorStylesEnabled" << boolToString


rayOrigin : String -> Property
rayOrigin = property "rayOrigin"


upEvents : List Event -> Property
upEvents = property "upEvents" << Events.stringify


{- daydream-controls -}


armModel : Bool -> Property
armModel = property "armModel" << boolToString


buttonColor : Color -> Property
buttonColor = property "buttonColor" << Color.toCssString


buttonTouchedColor : Color -> Property
buttonTouchedColor = property "buttonTouchedColor" << Color.toCssString


buttonHighlightColor : Color -> Property
buttonHighlightColor = property "buttonHighlightColor" << Color.toCssString


hand : Hand -> Property
hand = property "hand" << Hand.toString


model : Bool -> Property
model = property "model" << boolToString


orientationOffset : Float -> Float -> Float -> Property
orientationOffset x y z = property "orientationOffset" <| vec3ToString x y z


{- fog -}

-- `type_`, `near`, `far` are implemented


color : Color -> Property
color = property "color" << Color.toCssString


density : Float -> Property
density = property "density" << String.fromFloat



{- geometry -}

buffer : Bool -> Property
buffer = property "buffer" << boolToString


primitive : Primitive -> Property
primitive = property "primitive" << Primitive.toString


skipCache : Bool -> Property
skipCache = property "skipCache" << boolToString


width : Float -> Property
width = property "width" << String.fromFloat


height : Float -> Property
height = property "height" << String.fromFloat


depth : Float -> Property
depth = property "depth" << String.fromFloat


openEnded : Bool -> Property
openEnded = property "openEnded" << boolToString


arc : Float -> Property
arc = property "arc" << String.fromFloat


p : Float -> Property
p = property "p" << String.fromFloat


q : Float -> Property
q = property "q" << String.fromFloat


radius : Float -> Property
radius = property "radius" << String.fromFloat


radiusBottom : Float -> Property
radiusBottom = property "radiusBottom" << String.fromFloat


radiusTop : Float -> Property
radiusTop = property "radiusTop" << String.fromFloat


radiusInner : Float -> Property
radiusInner = property "radiusInner" << String.fromFloat


radiusOuter : Float -> Property
radiusOuter = property "radiusOuter" << String.fromFloat


radiusTubular : Float -> Property
radiusTubular = property "radiusTubular" << String.fromFloat


segments : Int -> Property
segments = property "segments" << String.fromInt


segmentsDepth : Int -> Property
segmentsDepth = property "segmentsDepth" << String.fromInt


segmentsWidth : Int -> Property
segmentsWidth = property "segmentsWidth" << String.fromInt


segmentsHeight : Int -> Property
segmentsHeight = property "segmentsHeight" << String.fromInt


segmentsRadial : Int -> Property
segmentsRadial = property "segmentsRadial" << String.fromInt


segmentsTheta : Int -> Property
segmentsTheta = property "segmentsTheta" << String.fromInt


segmentsTubular : Int -> Property
segmentsTubular = property "segmentsRadial" << String.fromInt


segmentsPhi : Int -> Property
segmentsPhi = property "segmentsPhi" << String.fromInt


phiStart : Float -> Property
phiStart = property "phiStart" << String.fromFloat


phiLength : Float -> Property
phiLength = property "phiLength" << String.fromFloat


thetaStart : Float -> Property
thetaStart = property "thetaStart" << String.fromFloat


thetaLength : Float -> Property
thetaLength = property "thetaLength" << String.fromFloat


vertexA : Float -> Float -> Float -> Property
vertexA x y z = property "vertexA" <| vec3ToString x y z


vertexB : Float -> Float -> Float -> Property
vertexB x y z = property "vertexB" <| vec3ToString x y z


vertexC : Float -> Float -> Float -> Property
vertexC x y z = property "vertexC" <| vec3ToString x y z
