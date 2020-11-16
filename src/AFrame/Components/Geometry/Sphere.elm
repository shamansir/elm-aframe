module AFrame.Components.Geometry.Sphere exposing

    ( radius
    , segmentsWidth, segmentsHeight
    , phiStart, phiLength
    , thetaStart, thetaLength
    )

{-| # Sphere

# Dimensions

@docs radius

# Mesh

@docs segmentsWidth, segmentsHeight

# Partial

@docs phiStart, phiLength, thetaStart, thetaLength
-}


import AFrame.Properties exposing (Property, property)


{-| Radius (in meters) of the sphere.

Default: `1`
-}
radius : Float -> Property
radius = property "radius" << String.fromFloat


{-| Number of horizontal segments.

Default: `18`
-}
segmentsWidth : Int -> Property
segmentsWidth = property "segmentsWidth" << String.fromInt


{-| Number of vertical segments.

Default: `36`
-}
segmentsHeight : Int -> Property
segmentsHeight = property "segmentsHeight" << String.fromInt



{-| Horizontal starting angle.

Default: `0`

-}
phiStart : Float -> Property
phiStart = property "thetaStart" << String.fromFloat


{-| Horizontal sweep angle size.

Default: `360`
-}
phiLength : Float -> Property
phiLength = property "thetaLength" << String.fromFloat



{-| Vertical starting angle.

Default: `0`

-}
thetaStart : Float -> Property
thetaStart = property "thetaStart" << String.fromFloat


{-| Vertical sweep angle size.

Default: `360`
-}
thetaLength : Float -> Property
thetaLength = property "thetaLength" << String.fromFloat
