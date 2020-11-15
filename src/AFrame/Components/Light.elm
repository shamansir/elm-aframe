module AFrame.Components.Light exposing (..)



{- light -}

-- `type_`, `color` are already implemented

lightType : Light -> Property
lightType = type_ << Light.toString


intensity : Float -> Property
intensity = property "intensity" << String.fromFloat


groundColor : Color -> Property
groundColor = property "groundColor" << Color.toCssString


decay : Float -> Property
decay = property "decay" << String.fromFloat


distance : Float -> Property
distance = property "distance" << String.fromFloat


angle : Float -> Property
angle = property "angle" << String.fromFloat


penumbra : Float -> Property
penumbra = property "penumbra" << String.fromFloat


target : String -> Property
target = property "target"


castShadow : Bool -> Property
castShadow = property "castShadow" << boolToString


shadowBias : Float -> Property
shadowBias = property "shadowBias" << String.fromFloat


shadowCameraBottom : Float -> Property
shadowCameraBottom = property "shadowCameraBottom" << String.fromFloat


shadowCameraFar : Float -> Property
shadowCameraFar = property "shadowCameraFar" << String.fromFloat


shadowCameraFov : Float -> Property
shadowCameraFov = property "shadowCameraFov" << String.fromFloat


shadowCameraLeft : Float -> Property
shadowCameraLeft = property "shadowCameraLeft" << String.fromFloat

shadowCameraNear : Float -> Property
shadowCameraNear = property "shadowCameraNear" << String.fromFloat


shadowCameraRight : Float -> Property
shadowCameraRight = property "shadowCameraRight" << String.fromFloat


shadowCameraTop : Float -> Property
shadowCameraTop = property "shadowCameraTop" << String.fromFloat


shadowCameraVisible : Bool -> Property
shadowCameraVisible = property "shadowCameraVisible" << boolToString


shadowMapHeight : Int -> Property
shadowMapHeight = property "shadowMapHeight" << String.fromInt


shadowMapWidth : Int -> Property
shadowMapWidth = property "shadowMapHeight" << String.fromInt

-- TODO: shadowType

