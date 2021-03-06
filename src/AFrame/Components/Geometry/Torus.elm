module AFrame.Components.Geometry.Torus exposing

    ( radius, radiusTubular
    , segmentsRadial, segmentsTubular
    , arc
    )

{-| # Torus

# Dimensions

@docs radius, radiusTubular

# Mesh

@docs segmentsRadial, segmentsTubular

# Partial

@docs arc
-}


import AFrame.Properties exposing (Property, property)


{-| Radius of the outer edge of the torus.

Default : `1`
-}
radius : Float -> Property
radius = property "radius" << String.fromFloat


{-| Radius of the tube.

Default : `0.2`
-}
radiusTubular : Float -> Property
radiusTubular = property "radiusTubular" << String.fromFloat


{-| Number of segments along the circumference of the tube ends. A higher number means the tube will be more round.

Default: `36`
-}
segmentsRadial : Int -> Property
segmentsRadial = property "segmentsRadial" << String.fromInt


{-| Number of segments along the circumference of the tube face. A higher number means the tube will be more round.

Default: `32`
-}
segmentsTubular : Int -> Property
segmentsTubular = property "segmentsTubular" << String.fromInt


{-| Central angle

Default: `360`

-}
arc : Float -> Property
arc = property "arc" << String.fromFloat

