module AFrame.Components.Material.Flat exposing

    ( src
    , width, height
    , color, fog, wireframe, wireframeLinewidth
    )

{-| # Flat Material

# Source

@docs src

# Dimensions

@docs width, height

# Look

@docs color, fog, wireframe, wireframeLinewidth

-}


import Color exposing (Color)

import AFrame.Properties exposing (Property, property)
import AFrame.Util exposing (..)


{-| Base diffuse color.

Default : `#fff`
-}
color : Color -> Property
color = property "color" << Color.toCssString


{-| Height of video (in pixels), if defining a video texture.

Default : `360`
-}
height : Int -> Property
height = property "height" << String.fromInt



{-| Whether or not material is affected by fog.

Default : `true`
-}
fog : Bool -> Property
fog = property "fog" << boolToString


{-| Width of video (in pixels), if defining a video texture.

Default : `640`
-}
width : Int -> Property
width = property "height" << String.fromInt


{-| Whether to render just the geometry edges.

Default : `false`
-}
wireframe : Bool -> Property
wireframe = property "wireframe" << boolToString


{-| Width in px of the rendered line.

Default : `2`

NB: It is `width` all-lowercase in docs and sources so it is intentionally left the same way
-}
wireframeLinewidth : Int -> Property
wireframeLinewidth = property "wireframeLinewidth" << String.fromInt


{-| Image or video texture map. Can either be a selector to an `<img>` or `<video>`, or an inline URL.

Default : _None_
-}
src : String -> Property
src = property "src"
