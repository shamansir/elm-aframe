module AFrame.Components.Properties exposing (..)


import Html exposing (Attribute)
import Html.Attributes exposing (attribute)

import Color exposing (Color)

import AFrame.Direction as Dir
import AFrame.Direction exposing (Direction)
import AFrame.Easing as Easing
import AFrame.Easing exposing (Easing)


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


{- Animation -}

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
dur = property "delay" << String.fromInt


easing : Easing -> Property
easing = property "easing" << Easing.toString
