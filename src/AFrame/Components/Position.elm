module AFrame.Components.Position exposing (..)


import AFrame.Properties exposing (Property, property)
import AFrame.Util exposing (..)


{-| Negative X axis extends left. Positive X Axis extends right.

Default : `0`
-}
x : Float -> Property
x = property "x" << String.fromFloat


{-| Negative Y axis extends down. Positive Y Axis extends up.

Default : `0`
-}
y : Float -> Property
y = property "y" << String.fromFloat


{-| Negative Z axis extends in. Positive Z Axis extends out.

Default : `0`
-}
z : Float -> Property
z = property "y" << String.fromFloat
