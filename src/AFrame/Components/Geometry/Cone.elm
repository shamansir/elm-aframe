module AFrame.Components.Geometry.Cone exposing (..)

import AFrame.Components.Properties exposing (Property, property)
import AFrame.Util exposing (..)


{-| Height of a cone.

Default : `2`
-}
height : Float -> Property
height = property "height" << String.fromFloat


{-| Whether the ends of the cone are open (true) or capped (false).

Default : `false`
-}
openEnded : Bool -> Property
openEnded = property "openEnded" << boolToString


{-| Radius of the bottom end of the cone.

Default: `1`
-}
radiusBottom : Float -> Property
radiusBottom = property "radiusBottom" << String.fromFloat


{-| Radius of the top end of the cone.

Default: `1`
-}
radiusTop : Float -> Property
radiusTop = property "radiusTop" << String.fromFloat


{-| Number of segmented faces around the circumference of the cone.

Default: `36`
-}
segmentsRadial : Int -> Property
segmentsRadial = property "segmentsRadial" << String.fromInt


{-| Number of rows of faces along the height of the cone.

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
