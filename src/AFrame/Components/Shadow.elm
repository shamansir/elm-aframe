module AFrame.Components.Shadow exposing

    ( type_
    , cast, receive
    , shadowBias
    , shadowMapWidth, shadowMapHeight
    , shadowCameraLeft, shadowCameraTop, shadowCameraBottom, shadowCameraRight, shadowCameraNear, shadowCameraFar, shadowCameraFov, shadowCameraVisible
    , autoUpdate, enabled
    )

{-| # Shadow

See `AFrame.Components.Light` for corresponding light component.

@docs type_

# Cast / Receive

@docs cast, receive

# Shadow Map

@docs shadowMapWidth, shadowMapHeight

# Shadow Camera Cube

@docs shadowCameraLeft, shadowCameraTop, shadowCameraRight, shadowCameraBottom, shadowCameraNear, shadowCameraFar

# Shadow Camera Options

@docs shadowCameraFov, shadowCameraVisible

# Configuration

@docs autoUpdate, enabled
-}


import AFrame.Properties exposing (Property, property)

import AFrame.Util exposing (..)
import AFrame.Variants.Shadow exposing (Shadow)
import AFrame.Variants.Shadow as Shadow exposing (toString)


{-| Defines shadow map type (`basic`, `pcf`, `pcfsoft`) with varying appearance and performance characteristics.

Default : `pcf` (_percentage closer filtering_)
-}
type_ : Shadow -> Property
type_ = property "type" << Shadow.toString


{-| Whether the entity casts shadows onto the surrounding scene.

Default : `true`
-}
cast : Bool -> Property
cast = property "cast" << boolToString


{-| Whether the entity receives shadows from the surrounding scene.

Default : `true`
-}
receive : Bool -> Property
receive = property "receive" << boolToString


{- Scene properties -}


{-| Whether to disable shadows globally, even if there is a shadow component and a light with `castShadow: true` enabled.

Default : `true`
-}
enabled : Bool -> Property
enabled = property "enabled" << boolToString


{-| Whether to dynamically update the shadow map every frame. Disable and manually update by setting `renderer.shadowMap.needsUpdate = true` for best performance. Calculating shadow maps is expensive.

Default : `true`
-}
autoUpdate : Bool -> Property
autoUpdate = property "autoUpdate" << boolToString



{- Light properties -}


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
