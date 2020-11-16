module AFrame.Components.Controls.Wasd exposing (..)


import AFrame.Properties exposing (Property, property)
import AFrame.Util exposing (..)

import AFrame.Variants.Axis exposing (Axis)
import AFrame.Variants.Axis as Axis exposing (toString)


{-| How fast the entity accelerates when holding the keys.

Default : `65`
-}
acceleration : Float -> Property
acceleration = property "acceleration" << String.fromFloat


{-| Axis that the A and D keys act upon

Default : `x`
-}
adAxis : Axis -> Property
adAxis = property "adAxis" << Axis.toString


{-| Axis that the W and S keys act upon

Default : `z`
-}
wsAxis : Axis -> Property
wsAxis = property "wsAxis" << Axis.toString


{-| Whether the WASD controls are enabled.

Default : `true`
-}
enabled : Bool -> Property
enabled = property "enabled" << boolToString


{-| Whether the axis that the A and D keys act upon are inverted.

Default : `false`
-}
adInverted : Bool -> Property
adInverted = property "adInverted" << boolToString


{-| Whether the axis that the W and S keys act upon are inverted.

Default : `false`
-}
wsInverted : Bool -> Property
wsInverted = property "wsInverted" << boolToString


{-| Whether or not movement is restricted to the entity’s initial plane.

Default : `false`
-}
fly : Bool -> Property
fly = property "fly" << boolToString
