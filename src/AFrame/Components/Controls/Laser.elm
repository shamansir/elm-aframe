module AFrame.Components.Controls.Laser exposing (..)


import Color exposing (Color)

import AFrame.Hand exposing (Hand)
import AFrame.Hand as Hand exposing (toString)

import AFrame.Components.Properties exposing (Property, property)
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


