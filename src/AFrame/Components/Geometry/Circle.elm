module AFrame.Components.Geometry.Circle exposing (..)


import AFrame.Components.Properties exposing (Property, property)


{-| Radius (in meters) of the circle.

Default: `1`
-}
radius : Float -> Property
radius = property "radius" << String.fromFloat


{-| Number of triangles to construct the circle, like pizza slices. A higher number of segments means the circle will be more round.

Default: `32`
-}
segments : Int -> Property
segments = property "segments" << String.fromInt


{-| Start angle for first segment. Can be used to define a partial circle.

Default: `0`

-}
thetaStart : Float -> Property
thetaStart = property "thetaStart" << String.fromFloat


{-| The central angle (in degrees). Defaults to 360, which makes for a complete circle.

Default: `360`
-}
thetaLength : Float -> Property
thetaLength = property "thetaLength" << String.fromFloat
