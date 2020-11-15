module AFrame.Components.Controls exposing (..)

import Color exposing (Color)

import AFrame.Hand exposing (Hand)
import AFrame.Hand as Hand exposing (toString)
import AFrame.HandStyle exposing (HandStyle)
import AFrame.HandStyle as HandStyle exposing (toString)


import AFrame.Components.Properties exposing (Property, property)
import AFrame.Util exposing (..)


{-| Set hand that will be tracked (i.e., `right`, `left`).

`daydream-controls`, `gearvr-controls`, `hand-controls`, `laser-controls`
-}
hand : Hand -> Property
hand = property "hand" << Hand.toString


{-| Whether the arm model is used for positional data.

`daydream-controls`, `gearvr-controls`

Default : `true`
-}
armModel : Bool -> Property
armModel = property "armModel" << boolToString


{-| Color of hand material.

`hand-controls`

Default : `white`
-}
color : Color -> Property
color = property "color" << Color.toCssString


{-| Button colors when not pressed.

`daydream-controls`, `gearvr-controls`

Default : `#000000`
-}
buttonColor : Color -> Property
buttonColor = property "buttonColor" << Color.toCssString


{-| Button colors when touched.

`daydream-controls`, `gearvr-controls`

Default : `#777777`
-}
buttonTouchedColor : Color -> Property
buttonTouchedColor = property "buttonTouchedColor" << Color.toCssString


{-| Button colors when pressed and active.

`daydream-controls`, `gearvr-controls`

Default : `#FFFFFF`
-}
buttonHighlightColor : Color -> Property
buttonHighlightColor = property "buttonHighlightColor" << Color.toCssString



{-| Whether the Daydream controller model is loaded.

`daydream-controls`, `gearvr-controls`, `laser-controls`

Default : `true`
-}
model : Bool -> Property
model = property "model" << boolToString


{-| Offset to apply to model orientation.

`daydream-controls`, `gearvr-controls`

Default: `x: 0, y: 0, z: 0`
-}
orientationOffset : Float -> Float -> Float -> Property
orientationOffset x y z = property "orientationOffset" <| vec3ToString x y z


{-| Style of the hand 3D model loaded. Can be `lowPoly`, `highPoly` or `toon`.

`hand-controls`

Default: `lowPoly`
-}

handModelStyle : HandStyle -> Property
handModelStyle = property "handModelStyle" << HandStyle.toString



{-| Color for the default controller model.

`laser-controls`
-}

defaultModelColor : Color -> Property
defaultModelColor = property "defaultModelColor" << Color.toCssString
