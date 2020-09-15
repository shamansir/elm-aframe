module AFrame.Primitives.Attributes exposing
    ( color, metalness, shader, src, opacity, roughness, translate, transparent
    , radius, radiusTop, radiusBottom, position, scale, rotation, height, width, depth, segmentsRadial
    , angle, decay, distance, exponent, groundColor, intensity, type_
    , vrModeUi
    )

{-| A-Frame primitive attributes.

# Mesh attributes
@docs color, metalness, shader, src, opacity, roughness, translate, transparent

# Geometry attributes
@docs radius, radiusTop, radiusBottom, position, scale, rotation, height, width, depth, segmentsRadial

# Light attributes
@docs angle, decay, distance, exponent, groundColor, intensity, type_

# Scene attributes
@docs vrModeUi

-}

import String exposing (toLower)
import Html exposing (Attribute)
import Html.Attributes exposing (attribute)
import Color exposing (Color)
import Color.Convert exposing (colorToHex)


-- Mesh attributes


{-| -}
color : Color -> Attribute msg
color value =
    attribute "color" (colorToHex value)


{-| -}
metalness : Float -> Attribute msg
metalness value =
    attribute "metalness" (String.fromFloat value)


{-| -}
shader : String -> Attribute msg
shader value =
    attribute "shader" value


{-| -}
src : String -> Attribute msg
src value =
    attribute "src" value


{-| -}
opacity : Float -> Attribute msg
opacity value =
    attribute "opacity" (String.fromFloat value)


{-| -}
roughness : Float -> Attribute msg
roughness value =
    attribute "roughness" (String.fromFloat value)


{-| -}
translate : Float -> Float -> Float -> Attribute msg
translate x y z =
    [ x, y, z ]
        |> List.map String.fromFloat
        |> List.intersperse " "
        |> String.concat
        |> attribute "translate"


{-| -}
transparent : Bool -> Attribute msg
transparent value =
    attribute "transparent" (toLower <| if value then "true" else "false")



-- Geometry Attributes


{-| -}
radius : Float -> Attribute msg
radius value =
    attribute "radius" (String.fromFloat value)


{-| -}
radiusTop : Float -> Attribute msg
radiusTop value =
    attribute "radius-top" (String.fromFloat value)


{-| -}
radiusBottom : Float -> Attribute msg
radiusBottom value =
    attribute "radius-bottom" (String.fromFloat value)


{-| -}
position : Float -> Float -> Float -> Attribute msg
position x y z =
    [ x, y, z ]
        |> List.map String.fromFloat
        |> List.intersperse " "
        |> String.concat
        |> attribute "position"


{-| -}
scale : Float -> Float -> Float -> Attribute msg
scale x y z =
    [ x, y, z ]
        |> List.map String.fromFloat
        |> List.intersperse " "
        |> String.concat
        |> attribute "scale"


{-| -}
rotation : Float -> Float -> Float -> Attribute msg
rotation x y z =
    [ x, y, z ]
        |> List.map String.fromFloat
        |> List.intersperse " "
        |> String.concat
        |> attribute "rotation"


{-| -}
height : Float -> Attribute msg
height value =
    attribute "height" (String.fromFloat value)


{-| -}
width : Float -> Attribute msg
width value =
    attribute "width" (String.fromFloat value)


{-| -}
depth : Int -> Attribute msg
depth value =
    attribute "depth" (String.fromInt value)


{-| -}
segmentsRadial : Int -> Attribute msg
segmentsRadial value =
    attribute "segments-radial" (String.fromInt value)



-- Light attributes.


{-| -}
angle : Float -> Attribute msg
angle value =
    attribute "angle" (String.fromFloat value)


{-| Amount the light dims along the distance of the light.
-}
decay : Float -> Attribute msg
decay value =
    attribute "decay" (String.fromFloat value)


{-| -}
distance : Float -> Attribute msg
distance value =
    attribute "distance" (String.fromFloat value)


{-| -}
exponent : Float -> Attribute msg
exponent value =
    attribute "exponent" (String.fromFloat value)


{-| -}
groundColor : Color -> Attribute msg
groundColor value =
    attribute "ground-color" (colorToHex value)


{-| -}
intensity : Float -> Attribute msg
intensity value =
    attribute "intensity" (String.fromFloat value)


{-| -}
type_ : Float -> Attribute msg
type_ value =
    attribute "type" (String.fromFloat value)


{-| The vr-mode-ui component toggles UI such as an Enter VR button, compatibility modal, and orientation modal for mobile.
The vr-mode-ui component applies only to the `<a-scene>` element.
-}
vrModeUi : Bool -> Attribute msg
vrModeUi enabled =
    let
        value =
            case enabled of
                True ->
                    "true"

                False ->
                    "false"

        attribstring =
            "enabled: " ++ value
    in
        attribute "vm-mode-ui" attribstring
