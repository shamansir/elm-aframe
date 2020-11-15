module AFrame.Components.Scale exposing (..)


import AFrame.Properties exposing (Property, property)


{-| Scaling factor in the X direction.

Default : `1`
-}
x : Float -> Property
x = property "x" << String.fromFloat


{-| Scaling factor in the Y direction.

Default : `1`
-}
y : Float -> Property
y = property "y" << String.fromFloat


{-| Scaling factor in the Z direction.

Default : `1`
-}
z : Float -> Property
z = property "y" << String.fromFloat
