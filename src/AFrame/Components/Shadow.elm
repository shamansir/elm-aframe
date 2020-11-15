module AFrame.Components.Shadow exposing (..)


import AFrame.Components.Properties exposing (Property, property)

import AFrame.Util exposing (..)
import AFrame.Shadow exposing (Shadow)
import AFrame.Shadow as Shadow exposing (toString)


{-| Defines shadow map type (`basic`, `pcf`, `pcfsoft`) with varying appearance and performance characteristics.

Default : `directional`
-}
type_ : Shadow -> Property
type_ = property "type" << Shadow.toString


{-| Offset depth when deciding whether a surface is in shadow. Tiny adjustments here (in the order of +/-0.0001) may reduce artifacts in shadows.

Default : `0`
-}
shadowBias : Float -> Property
shadowBias = property "shadowBias" << String.fromFloat


{-| Bottom plane of shadow camera frustum.

`directional`

Default : `-5`
-}
shadowCameraBottom : Float -> Property
shadowCameraBottom = property "shadowCameraBottom" << String.fromFloat


{-| Far plane of shadow camera frustum.

Default : `500`
-}
shadowCameraFar : Float -> Property
shadowCameraFar = property "shadowCameraFar" << String.fromFloat


{-| Shadow camera’s FOV.

`point`, `spot`

Default : `50`
-}
shadowCameraFov : Float -> Property
shadowCameraFov = property "shadowCameraFov" << String.fromFloat


{-| Left plane of shadow camera frustum.

`directional`

Default : `-5`
-}
shadowCameraLeft : Float -> Property
shadowCameraLeft = property "shadowCameraLeft" << String.fromFloat


{-| Near plane of shadow camera frustum.

Default : `0.5`
-}
shadowCameraNear : Float -> Property
shadowCameraNear = property "shadowCameraNear" << String.fromFloat


{-| Right plane of shadow camera frustum.

`directional`

Default : `5`
-}
shadowCameraRight : Float -> Property
shadowCameraRight = property "shadowCameraRight" << String.fromFloat


{-| Top plane of shadow camera frustum.

`directional`

Default : `5`
-}
shadowCameraTop : Float -> Property
shadowCameraTop = property "shadowCameraTop" << String.fromFloat


{-| Displays a visual aid showing the shadow camera’s position and frustum. This is the light’s view of the scene, used to project shadows.

Default : `false`
-}
shadowCameraVisible : Bool -> Property
shadowCameraVisible = property "shadowCameraVisible" << boolToString


{-| Displays a visual aid showing the shadow camera’s position and frustum. This is the light’s view of the scene, used to project shadows.

Default : `false`
-}
shadowMapHeight : Int -> Property
shadowMapHeight = property "shadowMapHeight" << String.fromInt


{-| Displays a visual aid showing the shadow camera’s position and frustum. This is the light’s view of the scene, used to project shadows.

Default : `false`
-}
shadowMapWidth : Int -> Property
shadowMapWidth = property "shadowMapHeight" << String.fromInt
