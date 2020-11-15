module AFrame.Primitives.Light
    exposing
        ( light
        , type_, intensity
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


import AFrame.Light exposing (Light)
import AFrame.Light as Light exposing (toString)



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
    attribute "type" << Light.toString


{-| Light strength.
-}
intensity : Float -> Attribute msg
intensity value =
    attribute "intensity" <| String.fromFloat value


