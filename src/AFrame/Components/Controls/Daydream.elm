module AFrame.Components.Controls.Daydream exposing

    ( hand, armModel, model
    , buttonColor, buttonTouchedColor, buttonHighlightColor
    , orientationOffset
    )

{-| The `daydream-controls` component interfaces with the Google Daydream controllers. It wraps the `tracked-controls` component while adding button mappings, events, and a Daydream controller model that highlights the touched and/or pressed buttons (trackpad).

As a first time set up, to use the Daydream controller on Chrome for Android enable both `WebVR` and `Gamepad` Extensions experiments in `chrome://flags` and relaunch the browser.

Then, open your web app, enter VR mode and place the phone inside the headset. It can occassionally take a few seconds before the controller can be used.

# Basic

@docs hand, armModel, model

# Buttons colors

@docs buttonColor, buttonTouchedColor, buttonHighlightColor

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


{-| Button colors when not pressed.

Default : `#000000`
-}
buttonColor : Color -> Property
buttonColor = property "buttonColor" << Color.toCssString


{-| Button colors when touched.

Default : `#777777`
-}
buttonTouchedColor : Color -> Property
buttonTouchedColor = property "buttonTouchedColor" << Color.toCssString


{-| Button colors when pressed and active.

Default : `#FFFFFF`
-}
buttonHighlightColor : Color -> Property
buttonHighlightColor = property "buttonHighlightColor" << Color.toCssString


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
