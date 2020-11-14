module AFrame.Primitives.Light
    exposing
        ( light
        , type_, intensity
        , Light
        , ambient, directional, hemisphere, point, spot
        , toString
        )

{-| Light primitive.

# Primitives
@docs light

# Attributes
@docs type_, intensity

# Types
@docs Light

-}

import Html exposing (node, Html, Attribute)
import Html.Attributes exposing (attribute)


{-| Different kinds of lights
-}
type Light
    = Ambient
    | Directional
    | Hemisphere
    | Point
    | Spot


{-| The light primitive adjusts the lighting setup of the scene.
-}
light : List (Attribute msg) -> List (Html msg) -> Html msg
light =
    node "a-light"


{-| Set light type.

  Check https://aframe.io/docs/0.5.0/components/light.html#properties to get more information about the different kinds of lights
-}
type_ : Light -> Attribute msg
type_ =
    attribute "type" << toString


{-| Light strength.
-}
intensity : Float -> Attribute msg
intensity value =
    attribute "intensity" <| String.fromFloat value


ambient : Light
ambient = Ambient


directional : Light
directional = Directional


hemisphere : Light
hemisphere = Hemisphere


point : Light
point = Point


spot : Light
spot = Spot



toString : Light -> String
toString light_ =
    case light_ of
        Ambient ->
            "ambient"

        Directional ->
            "directional"

        Hemisphere ->
            "hemisphere"

        Point ->
            "point"

        Spot ->
            "spot"
