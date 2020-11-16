module AFrame.Components.Text exposing (..)

import Color exposing (Color)

import AFrame.Properties exposing (Property, property)
import AFrame.Util exposing (..)
import AFrame.Variants.Side exposing (Side)
import AFrame.Variants.Side as Side exposing (toString)
import AFrame.Variants.Text.Align exposing (Align)
import AFrame.Variants.Text.Align as Align exposing (toString)
import AFrame.Variants.Text.Anchor exposing (Anchor)
import AFrame.Variants.Text.Anchor as Anchor exposing (toString)
import AFrame.Variants.Text.Baseline exposing (Baseline)
import AFrame.Variants.Text.Baseline as Baseline exposing (toString)
import AFrame.Variants.Text.Font exposing (Font)
import AFrame.Variants.Text.Font as Font exposing (toString)
import AFrame.Variants.Text.WhiteSpace exposing (WhiteSpace)
import AFrame.Variants.Text.WhiteSpace as WhiteSpace exposing (toString)



{-| Multi-line text alignment (`left`, `center`, `right`).

Default : `left`
-}
align : Align -> Property
align = property "align" << Align.toString


{-| Discard text pixels if alpha is less than this value.

Default : `0`
-}
alphaTest : Float -> Property
alphaTest = property "alphaTest" << String.fromFloat


{-| Horizontal positioning (`left`, `center`, `right`, `align`).

Default : `center`
-}
anchor : Anchor -> Property
anchor = property "anchor" << Anchor.toString


{-| Vertical positioning (`top`, `center`, `bottom`).

Default : `center`
-}
baseline : Baseline -> Property
baseline = property "baseline" << Baseline.toString


{-| Text color.

Default : `white`
-}
color : Color -> Property
color = property "color" << Color.toCssString


{-| Font to render text, either the name of one of [A-Frame’s stock fonts](https://aframe.io/docs/1.0.0/components/text.html#stock-fonts) or a URL to a font file.

Default : `default`
-}
font : Font -> Property
font = property "font" << Font.toString


{-| Font image texture path to render text. Defaults to the font‘s name with extension replaced to .png. Don’t need to specify if using a stock font.

Default : _derived from font name_
-}
fontImage : String -> Property
fontImage = property "fontImage"


{-| Height of text block.

Default : _derived from text size_
-}
height : Float -> Property
height = property "height" << String.fromFloat


{-| Letter spacing in pixels.

Default : `0`
-}
letterSpacing : Float -> Property
letterSpacing = property "letterSpacing" << String.fromFloat


{-| Line height in pixels.

Default : _derived from font file_
-}
lineHeight : Float -> Property
lineHeight = property "lineHeight" << String.fromFloat


{-| Opacity, on a scale from 0 to 1, where 0 means fully transparent and 1 means fully opaque.

Default : `1.0`
-}
opacity : Float -> Property
opacity = property "opacity" << String.fromFloat


{-| Shader used to render text.

Default : `sdf`
-}
shader : String -> Property
shader = property "fontImage"


{-| Side to render. (`front`, `back`, `double`)

Default : `front`
-}
side : Side -> Property
side = property "side" << Side.toString


{-| Tab size in spaces.

Default : `4`
-}
tabSize : Int -> Property
tabSize = property "tabSize" << String.fromInt


{-| Whether text is transparent.

Default : `true`
-}
transparent : Bool -> Property
transparent = property "transparent" << boolToString


{-| The actual content of the text. Line breaks and tabs are supported with `\n` and `\t`.

Default : `''`
-}
value : String -> Property
value = property "value"


{-| How whitespace should be handled (i.e., `normal`, `pre`, `nowrap`).

Default : `normal`
-}
whiteSpace : WhiteSpace -> Property
whiteSpace = property "whiteSpace" << WhiteSpace.toString


{-| Width in meters.

Default : _derived from geometry if exists_
-}
width : Float -> Property
width = property "width" << String.fromFloat


{-| Number of characters before wrapping text (more or less).

Default : `40`
-}
wrapCount : Int -> Property
wrapCount = property "wrapCount" << String.fromInt


{-| Number of pixels before wrapping text.

Default : _derived from wrapCount_
-}
wrapPixels : Int -> Property
wrapPixels = property "wrapPixels" << String.fromInt


{-| X-offset to apply to add padding.

Default : `0`
-}
xOffset : Float -> Property
xOffset = property "xOffset" << String.fromFloat


{-| Z-offset to apply to avoid Z-fighting if using with a geometry as a background.

Default : `0.001`
-}
zOffset : Float -> Property
zOffset = property "zOffset" << String.fromFloat





{-| Whether depth testing is enabled when rendering the material.

Default : `true`
-}
depthTest : Bool -> Property
depthTest = property "depthTest" << boolToString


{-| Use `THREE.FlatShading` rather than `THREE.StandardShading`.

Default : `false`
-}
flatShading : Bool -> Property
flatShading = property "flatShading" << boolToString


{-| Use settings for non-power-of-two (NPOT) texture.

Default : `false`
-}
npot : Bool -> Property
npot = property "npot" << boolToString


{-| Texture offset to be used.

Default : `{x: 0, y: 0}`
-}
offset : Float -> Float -> Property
offset x y = property "offset" <| vec2ToString x y




{-| Texture repeat to be used.

Default : `{x: 1, y: 1}`
-}
repeat : Float -> Float -> Property
repeat x y = property "repeat" <| vec2ToString x y




{-| Whether material is visible. Raycasters will ignore invisible materials.

Default : `true`
-}
visible : Bool -> Property
visible = property "visible" << boolToString



{-| Whether material is dithered with noise. Removes banding from gradients like ones produced by lighting.

Default : `true`
-}
dithering : Bool -> Property
dithering = property "dithering" << boolToString
