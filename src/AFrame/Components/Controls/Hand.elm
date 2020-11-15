module AFrame.Components.Controls.Hand exposing (..)


import Color exposing (Color)

import AFrame.Hand exposing (Hand)
import AFrame.Hand as Hand exposing (toString)
import AFrame.HandStyle exposing (HandStyle)
import AFrame.HandStyle as HandStyle exposing (toString)


import AFrame.Components.Properties exposing (Property, property)
import AFrame.Util exposing (..)



{-| Set hand that will be tracked (i.e., `right`, `left`). -}
hand : Hand -> Property
hand = property "hand" << Hand.toString


{-| Color of hand material.

Default : `white`
-}
color : Color -> Property
color = property "color" << Color.toCssString


{-| Style of the hand 3D model loaded. Can be `lowPoly`, `highPoly` or `toon`.

Default: `lowPoly`
-}

handModelStyle : HandStyle -> Property
handModelStyle = property "handModelStyle" << HandStyle.toString
