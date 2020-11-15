module AFrame.Components.Controls.Laser exposing (..)


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


{-| Color for the default controller model.

`laser-controls`
-}
defaultModelColor : Color -> Property
defaultModelColor = property "defaultModelColor" << Color.toCssString


