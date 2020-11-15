module AFrame.Components.LoadingScreen exposing (..)


import Color exposing (Color)

import AFrame.Components.Properties exposing (Property, property)
import AFrame.Util exposing (..)


{-| 	Loader dots color.

Default : `white`
-}
dotsColor : Color -> Property
dotsColor = property "dotsColor" << Color.toCssString


{-| Loader background color.

Default : `#24CAFF`
-}
backgroundColor : Color -> Property
backgroundColor = property "backgroundColor" << Color.toCssString


{-| Enables / Disables the loading screen.

Default : `true`
-}
enabled : Bool -> Property
enabled = property "enabled" << boolToString
