module AFrame.Components.Material exposing (..)


import AFrame.Properties exposing (Property, property)
import AFrame.Util exposing (..)
import AFrame.Variants.Side exposing (Side)
import AFrame.Variants.Side as Side exposing (toString)
import AFrame.Variants.VertexColors exposing (VertexColors)
import AFrame.Variants.VertexColors as VertexColors exposing (toString)
import AFrame.Variants.Blending exposing (Blending)
import AFrame.Variants.Blending as Blending exposing (toString)


{-| Alpha test threshold for transparency.

Default : `0`
-}
alphaTest : Float -> Property
alphaTest = property "alphaTest" << String.fromFloat


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


{-| Extent of transparency. If the `transparent` property is not `true`, then the material will remain opaque and `opacity` will only affect color.

Default : `1.0`
-}
opacity : Float -> Property
opacity = property "opacity" << String.fromFloat


{-| Texture repeat to be used.

Default : `{x: 1, y: 1}`
-}
repeat : Float -> Float -> Property
repeat x y = property "repeat" <| vec2ToString x y


{-| Which material to use. Defaults to the [standard material](https://aframe.io/docs/1.0.0/components/material.html#standard). Can be set to the [flat material](https://aframe.io/docs/1.0.0/components/material.html#flat) or to a registered custom shader material.

Default : `standard`
-}
shader : String -> Property
shader = property "shader"


{-| Which sides of the mesh to render. Can be one of `front`, `back`, or `double`.

Default : `front`
-}
side : Side -> Property
side = property "side" << Side.toString


{-| Whether material is transparent. Transparent entities are rendered after non-transparent entities.

Default : `false`
-}
transparent : Bool -> Property
transparent = property "transparent" << boolToString


{-| Whether to use vertex or face colors to shade the material. Can be one of `none`, `vertex`, or `face`.

Default : `none`
-}
vertexColors : VertexColors -> Property
vertexColors = property "vertexColors" << VertexColors.toString


{-| Whether material is visible. Raycasters will ignore invisible materials.

Default : `true`
-}
visible : Bool -> Property
visible = property "visible" << boolToString


{-| The blending mode for the material’s RGB and Alpha sent to the WebGLRenderer. Can be one of `none`, `normal`, `additive`, `subtractive` or `multiply`.

Default : `normal`
-}
blending : Blending -> Property
blending = property "blending" << Blending.toString


{-| Whether material is dithered with noise. Removes banding from gradients like ones produced by lighting.

Default : `true`
-}
dithering : Bool -> Property
dithering = property "dithering" << boolToString
