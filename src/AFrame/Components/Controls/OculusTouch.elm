module AFrame.Components.Controls.OculusTouch exposing

    ( hand, model, orientationOffset
    )

{-| # Oculus Touch Controls

# Basic

@docs hand, model

# Orientation

@docs orientationOffset

-}


import Color exposing (Color)

import AFrame.Variants.Hand exposing (Hand)
import AFrame.Variants.Hand as Hand exposing (toString)

import AFrame.Properties exposing (Property, property)
import AFrame.Util exposing (..)



{-| Set hand that will be tracked (i.e., `right`, `left`). -}
hand : Hand -> Property
hand = property "hand" << Hand.toString


{-| Whether the controller model is loaded.

Default : `true`
-}
model : Bool -> Property
model = property "model" << boolToString


{-| Offset to apply to model orientation.

Default: `x: 0, y: 0, z: 0`
-}
orientationOffset : Float -> Float -> Float -> Property
orientationOffset x y z = property "orientationOffset" <| vec3ToString x y z
