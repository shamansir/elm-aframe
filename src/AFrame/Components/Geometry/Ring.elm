module AFrame.Components.Geometry.Ring exposing

    ( radiusInner, radiusOuter
    , segmentsTheta, segmentsPhi
    , thetaStart, thetaLength
    )

{-| # Ring

# Dimensions

@docs radiusInner, radiusOuter

# Mesh

@docs segmentsTheta, segmentsPhi

# Partial

@docs thetaStart, thetaLength
-}

import AFrame.Properties exposing (Property, property)


{-| Radius of the inner hole of the ring.

Default: `1`
-}
radiusInner : Float -> Property
radiusInner = property "radiusInner" << String.fromFloat


{-| Radius of the outer edge of the ring.

Default: `1`
-}
radiusOuter : Float -> Property
radiusOuter = property "radiusOuter" << String.fromFloat


{-| Number of segments. A higher number means the ring will be more round.

Default: `32`
-}
segmentsTheta : Int -> Property
segmentsTheta = property "segmentsTheta" << String.fromInt


{-| Number of triangles within each face defined by segmentsTheta.

Default: `8`
-}
segmentsPhi : Int -> Property
segmentsPhi = property "segmentsPhi" << String.fromInt


{-| Start angle in degrees

Default: `0`

-}
thetaStart : Float -> Property
thetaStart = property "thetaStart" << String.fromFloat


{-| Central angle in degrees.

Default: `360`
-}
thetaLength : Float -> Property
thetaLength = property "thetaLength" << String.fromFloat
