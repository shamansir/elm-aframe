module AFrame.Components.Geometry.Tetrahedron exposing (..)


import AFrame.Properties exposing (Property, property)


{-| Radius (in meters) of the tetrahedron.

Default: `1`
-}
radius : Float -> Property
radius = property "radius" << String.fromFloat

