module AFrame.Components.Background exposing (..)


import Color exposing (Color)

import AFrame.Components.Properties exposing (Property, property)
import AFrame.Util exposing (..)


{-| Color of the scene background.

Default: `black`
-}
background : Color -> Property
background = property "color" << Color.toCssString


{-| Background is transparent. The color property is ignored.
-}
transparent : Bool -> Property
transparent = property "transparent" << boolToString
