module AFrame.Components.Controls.WindowsMotion exposing (..)


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


{-| Which pair of controllers, if > 2 are connected.

Default : `0`
-}
pair : Int -> Property
pair = property "pair" << String.fromInt


{-| Disable rendering of controller model when no matching gamepad (based on ID & hand) is connected.

Default : `true`
-}
hideDisconnected : Bool -> Property
hideDisconnected = property "hideDisconnected" << boolToString
