module AFrame.Components.Light exposing (..)


import Color exposing (Color)

import AFrame.Properties exposing (Property, property)
import AFrame.Util exposing (..)
import AFrame.Variants.Light exposing (Light)
import AFrame.Variants.Light as Light exposing (toString)



{-| One of `ambient`, `directional`, `hemisphere`, `point`, `spot`.

Default : `directional`
-}
type_ : Light -> Property
type_ = property "type" << Light.toString


{-| Light color.

`ambient`, `directional`, `hemisphere` (_from above_), `point`, `spot`

Default : `#fff`
-}
color : Color -> Property
color = property "color" << Color.toCssString


{-| Light strength.

`ambient`, `directional`, `hemisphere`, `point`, `spot`

Default : `1.0`
-}
intensity : Float -> Property
intensity = property "intensity" << String.fromFloat


{-| Light color from below.

`hemisphere`

Default : `#fff`
-}
groundColor : Color -> Property
groundColor = property "groundColor" << Color.toCssString


{-| Amount the light dims along the distance of the light.

`point`, `spot`

Default : `1.0`
-}
decay : Float -> Property
decay = property "decay" << String.fromFloat



{-| Distance where intensity becomes `0`. If distance is `0`, then the point light does not decay with distance.

`point`, `spot`

Default : `0.0`
-}
distance : Float -> Property
distance = property "distance" << String.fromFloat


{-| Maximum extent of spot light from its direction (in degrees).

`spot`

Default : `60`
-}
angle : Float -> Property
angle = property "angle" << String.fromFloat


{-| Percent of the spotlight cone that is attenuated due to penumbra.

`spot`

Default : `0.0`
-}
penumbra : Float -> Property
penumbra = property "penumbra" << String.fromFloat


{-| element the spot should point to. set to null to transform spotlight by orientation, pointing to it’s `-Z` axis

`spot`

Default : `null`
-}
target : String -> Property
target = property "target"


{- shadows -}


{-| Whether this light casts shadows on the scene.

Default : `false`
-}
castShadow : Bool -> Property
castShadow = property "castShadow" << boolToString


