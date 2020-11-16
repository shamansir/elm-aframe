module AFrame.Components.Rotation exposing

    ( x, y, z
    )

{-| # Rotation

@docs x, y, z
-}


import AFrame.Properties exposing (Property, property)


{-| Pitch, rotation about the X-axis.

Default : `0`
-}
x : Float -> Property
x = property "x" << String.fromFloat


{-| Yaw, rotation about the Y-axis.

Default : `0`
-}
y : Float -> Property
y = property "y" << String.fromFloat


{-| Roll, rotation about the Z-axis.

Default : `0`
-}
z : Float -> Property
z = property "y" << String.fromFloat
