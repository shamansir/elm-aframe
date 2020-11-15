module AFrame.Components.Controls.GearVR exposing (..)


import Color exposing (Color)

import AFrame.Hand exposing (Hand)
import AFrame.Hand as Hand exposing (toString)

import AFrame.Components.Properties exposing (Property, property)
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
