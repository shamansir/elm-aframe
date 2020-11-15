module AFrame.Components.Line exposing (..)


import Color exposing (Color)

import AFrame.Properties exposing (Property, property)
import AFrame.Util exposing (..)


{-| Color of fog. For example, if set to black, far away objects will be rendered black.

Default : `#000`
-}
color : Color -> Property
color = property "color" << Color.toCssString


{-| Start point coordinate.

Default : `0 0 0`
-}
start : Float -> Float -> Float -> Property
start x y z = property "start" <| vec3ToString x y z


{-| End point coordinate.

Default : `0 0 0`
-}
end : Float -> Float -> Float -> Property
end x y z = property "start" <| vec3ToString x y z


{-| Line opacity.

Default : `1`
-}
opacity : Float -> Property
opacity = property "opacity" << String.fromFloat


{-| Whether the material visible.

Default : `true`
-}
visible : Bool -> Property
visible = property "visible" << boolToString
