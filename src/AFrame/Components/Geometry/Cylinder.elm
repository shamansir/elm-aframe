module AFrame.Components.Geometry.Cylinder exposing (..)

import AFrame.Components.Properties exposing (Property, property)
import AFrame.Util exposing (..)


{-| Radius of a cylinder.

Default : `1`
-}
radius : Float -> Property
radius = property "radius" << String.fromFloat


{-| Height of a cylinder.

Default : `2`
-}
height : Float -> Property
height = property "height" << String.fromFloat


{-| Whether the ends of the cylinder are open (true) or capped (false).

Default : `false`
-}
openEnded : Bool -> Property
openEnded = property "openEnded" << boolToString


{-| Number of segmented faces around the circumference of the cylinder.

Default: `36`
-}
segmentsRadial : Int -> Property
segmentsRadial = property "segmentsRadial" << String.fromInt


{-| Number of rows of faces along the height of the cylinder.

Default: `18`
-}
segmentsHeight : Int -> Property
segmentsHeight = property "segmentsHeight" << String.fromInt


{-| Start angle in degrees.

Default: `0`

-}
thetaStart : Float -> Property
thetaStart = property "thetaStart" << String.fromFloat


{-| Central angle in degrees.

Default: `360`
-}
thetaLength : Float -> Property
thetaLength = property "thetaLength" << String.fromFloat
