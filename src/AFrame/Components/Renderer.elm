module AFrame.Components.Renderer exposing

    ( maxCanvasWidth, maxCanvasHeight
    , alpha, antialias, antialiasAuto, colorManagement
    , foveationLevel, highRefreshRate, logarithmicDepthBuffer, logarithmicDepthBufferAuto
    , physicallyCorrectLights, precision, sortObjects
    )

{-| # Renderer

# Canvas

@docs maxCanvasWidth, maxCanvasHeight

# Configuration

@docs alpha, antialias, antialiasAuto, colorManagement, foveationLevel, highRefreshRate, logarithmicDepthBuffer, logarithmicDepthBufferAuto, physicallyCorrectLights, precision, sortObjects
-}


import AFrame.Properties exposing (Property, property)
import AFrame.Variants.FoveationLevel exposing (FoveationLevel)
import AFrame.Variants.FoveationLevel as FoveationLevel exposing (toInt)
import AFrame.Variants.Precision exposing (Precision)
import AFrame.Variants.Precision as Precision exposing (toString)
import AFrame.Util exposing (..)


{-| Whether to perform antialiasing.

Default : `auto`
-}
antialias : Bool -> Property
antialias = property "antialias" << boolToString


{-| Antialiasing is disabled on mobile, enabled on desktop. -}
antialiasAuto : Property
antialiasAuto = property "antialias" "auto"


{-| Whether to use a color-managed linear workflow.

Default : `false`
-}
colorManagement : Bool -> Property
colorManagement = property "colorManagement" << boolToString


{-| Toggles 72hz mode on Oculus Browser. Defaults to 60hz.

Default : `false`
-}
highRefreshRate : Bool -> Property
highRefreshRate = property "highRefreshRate" << boolToString


{-| Enables foveation in VR to improve perf.

Default : `none`
-}
foveationLevel : FoveationLevel -> Property
foveationLevel = property "foveationLevel" << String.fromInt << FoveationLevel.toInt


{-| Whether to sort objects before rendering.

Default : `false`
-}
sortObjects : Bool -> Property
sortObjects = property "sortObjects" << boolToString


{-| Whether to use physically-correct light attenuation.

Default : `false`
-}
physicallyCorrectLights : Bool -> Property
physicallyCorrectLights = property "physicallyCorrectLights" << boolToString


{-| Maximum canvas width. Uses the size multiplied by device pixel ratio. Does not limit canvas width if set to `-1`.

Default : `1920`
-}
maxCanvasWidth : Int -> Property
maxCanvasWidth = property "maxCanvasWidth" << String.fromInt


{-| Maximum canvas height. Behaves the same as `maxCanvasWidth`.

Default : `1920`
-}
maxCanvasHeight : Int -> Property
maxCanvasHeight = property "maxCanvasHeight" << String.fromInt


{-| Whether to use a logarithmic depth buffer.

Default : `auto`
-}
logarithmicDepthBuffer : Bool -> Property
logarithmicDepthBuffer = property "logarithmicDepthBuffer" << boolToString


{-| -}
logarithmicDepthBufferAuto : Property
logarithmicDepthBufferAuto = property "logarithmicDepthBuffer" "auto"


{-| Fragment shader precision : `low`, `medium` or `high`.

Default : `high`
-}
precision : Precision -> Property
precision = property "precision" << Precision.toString


{-| Whether the canvas should contain an alpha buffer.

Default : `true`
-}
alpha : Bool -> Property
alpha = property "alpha" << boolToString
