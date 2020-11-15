module AFrame.Components.Geometry.Dodecahedron exposing (..)


import AFrame.Components.Properties exposing (Property, property)


{-| Radius (in meters) of the dodecahedron.

Default: `1`
-}
radius : Float -> Property
radius = property "radius" << String.fromFloat

