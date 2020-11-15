module AFrame.Components.Fog exposing (..)

import Color exposing (Color)

import AFrame.Properties exposing (Property, property)
import AFrame.Variants.Fog exposing (Fog)
import AFrame.Variants.Fog as Fog exposing (toString)
import AFrame.Util exposing (..)


{-| Type of fog distribution. Can be `linear` or `exponential`.

Default : `linear`

-}
type_ : Fog -> Property
type_ =
    property "type" << Fog.toString


{-| Color of fog. For example, if set to black, far away objects will be rendered black.

Default : `#000`
-}
color : Color -> Property
color = property "color" << Color.toCssString


{-| Minimum distance to start applying fog. Objects closer than this won’t be affected by fog.

`linear`

Default : `1`
-}
near : Float -> Property
near = property "near" << String.fromFloat


{-| Maximum distance to stop applying fog. Objects farther than this won’t be affected by fog.

`linear`

Default : `1000`
-}
far : Float -> Property
far = property "far" << String.fromFloat


{-| How quickly the fog grows dense.

`exponential`

Default : `0.00025`
-}
density : Float -> Property
density = property "density" << String.fromFloat
