module AFrame.Components.Controls.ViveFocus exposing

    ( hand, armModel, model
    , buttonTouchedColor, buttonHighlightColor
    , orientationOffset
    )

{-| # Oculus Go Controls

# Basic

@docs hand, armModel, model

# Buttons colors

@docs buttonTouchedColor, buttonHighlightColor

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


{-| Whether the arm model is used for positional data.

Default : `true`
-}
armModel : Bool -> Property
armModel = property "armModel" << boolToString


{-| Button colors when touched (Trackpad only).

Default : `#777777`
-}
buttonTouchedColor : Color -> Property
buttonTouchedColor = property "buttonTouchedColor" << Color.toCssString


{-| Button colors when pressed and active.

Default : `#FFFFFF`
-}
buttonHighlightColor : Color -> Property
buttonHighlightColor = property "buttonHighlightColor" << Color.toCssString


{-| Whether the Vive Focus controller model is loaded.

Default : `true`
-}
model : Bool -> Property
model = property "model" << boolToString


{-| Offset to apply to model orientation.

Default: `x: 0, y: 0, z: 0`
-}
orientationOffset : Float -> Float -> Float -> Property
orientationOffset x y z = property "orientationOffset" <| vec3ToString x y z
