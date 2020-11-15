module AFrame.Components.Material.Standard exposing (..)


import Color exposing (Color)

import AFrame.Properties exposing (Property, property)
import AFrame.Util exposing (..)


{-| Ambient occlusion map. Used to add shadows to the mesh. Can either be a selector to an `<img>`, or an inline URL. Requires 2nd set of UVs (see below).

Default : _None_
-}
ambientOcclusionMap : String -> Property
ambientOcclusionMap = property "ambientOcclusionMap"


{-| The intensity of the ambient occlusion map, a number between 0 and 1.

Default : `1`
-}
ambientOcclusionMapIntensity : Float -> Property
ambientOcclusionMapIntensity = property "ambientOcclusionMapIntensity" << String.fromFloat


{-| How many times the ambient occlusion texture repeats in the X and Y direction.

Default : `{x: 1, y: 1}`
-}
ambientOcclusionTextureRepeat : Float -> Float -> Property
ambientOcclusionTextureRepeat x y = property "ambientOcclusionTextureRepeat" <| vec2ToString x y


{-| How the ambient occlusion texture is offset in the x y direction.

Default : `{x: 0, y: 0}`
-}
ambientOcclusionTextureOffset : Float -> Float -> Property
ambientOcclusionTextureOffset x y = property "ambientOcclusionTextureOffset" <| vec2ToString x y


{-| Base diffuse color.

Default : `#fff`
-}
color : Color -> Property
color = property "color" << Color.toCssString


{-| Displacement map. Used to distort a mesh. Can either be a selector to an `<img>`, or an inline URL.

Default : _None_
-}
displacementMap : String -> Property
displacementMap = property "displacementMap"


{-| The intensity of the displacement map effect

Default : `1`
-}
displacementScale : Float -> Property
displacementScale = property "displacementScale" << String.fromFloat


{-| The zero point of the displacement map.

Default : `0.5`
-}
displacementBias : Float -> Property
displacementBias = property "displacementBias" << String.fromFloat


{-| How many times the displacement texture repeats in the X and Y direction.

Default : `{x: 1, y: 1}`
-}
displacementTextureRepeat : Float -> Float -> Property
displacementTextureRepeat x y = property "displacementTextureRepeat" <| vec2ToString x y


{-| How the displacement texture is offset in the x y direction.

Default : `{x: 0, y: 0}`
-}
displacementTextureOffset : Float -> Float -> Property
displacementTextureOffset x y = property "displacementTextureOffset" <| vec2ToString x y


{-| The color of the emissive lighting component. Used to make objects produce light even without other lighting in the scene.

Default : `#000`
-}
emissive : Color -> Property
emissive = property "emissive" << Color.toCssString


{-| Intensity of the emissive lighting component.

Default : `1`
-}
emissiveIntensity : Float -> Property
emissiveIntensity = property "emissiveIntensity" << String.fromFloat


{-| Height of video (in pixels), if defining a video texture.

Default : `360`
-}
height : Int -> Property
height = property "height" << String.fromInt


{-| Environment cubemap texture for reflections. Can be a selector to or a comma-separated list of URLs.

Default : _None_
-}
envMap : String -> Property
envMap = property "envMap"


{-| Whether or not material is affected by fog.

Default : `true`
-}
fog : Bool -> Property
fog = property "fog" << boolToString


{-| How metallic the material is from 0 to 1.

Default : `0`
-}
metalness : Float -> Property
metalness = property "metalness" << String.fromFloat


{-| Normal map. Used to add the illusion of complex detail. Can either be a selector to an <img>, or an inline URL.

Default : _None_
-}
normalMap : String -> Property
normalMap = property "normalMap"


{-| Scale of the effect of the normal map in the X and Y directions.

Default : `{x: 1, y: 1}`
-}
normalScale : Float -> Float -> Property
normalScale x y = property "normalScale" <| vec2ToString x y


{-| How many times the normal texture repeats in the X and Y direction.

Default : `{x: 1, y: 1}`
-}
normalTextureRepeat : Float -> Float -> Property
normalTextureRepeat x y = property "normalTextureRepeat" <| vec2ToString x y


{-| How the normal texture is offset in the x y direction.

Default : `{x: 0, y: 0}`
-}
normalTextureOffset : Float -> Float -> Property
normalTextureOffset x y = property "normalTextureOffset" <| vec2ToString x y


{-| How many times a texture (defined by src) repeats in the X and Y direction.

Default : `{x: 1, y: 1}`
-}
repeat : Float -> Float -> Property
repeat x y = property "repeat" <| vec2ToString x y


{-| How rough the material is from 0 to 1. A rougher material will scatter reflected light in more directions than a smooth material.

Default : `0.5`
-}
roughness : Float -> Property
roughness = property "roughness" << String.fromFloat


{-| Environment spherical texture for reflections. Can either be a selector to an <img>, or an inline URL.

Default : _None_
-}
sphericalEnvMap : String -> Property
sphericalEnvMap = property "sphericalEnvMap"


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
