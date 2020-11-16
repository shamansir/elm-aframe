module AFrame.Components.Geometry.Octahedron exposing

    ( radius
    )

{-| # Octahedron

# Dimensions

@docs radius
-}


import AFrame.Properties exposing (Property, property)


{-| Radius (in meters) of the octahedron.

Default: `1`
-}
radius : Float -> Property
radius = property "radius" << String.fromFloat

