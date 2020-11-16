module AFrame.Components.VrModeUi exposing

    ( enabled, enterVRButton, enterARButton )

{-| # VR-Mode UI

@docs enterVRButton, enterARButton, enabled
-}


import AFrame.Properties exposing (Property, property)
import AFrame.Util exposing (..)


{-| Whether or not to display UI related to entering VR.

Default : `true`
-}
enabled : Bool -> Property
enabled = property "enabled" << boolToString


{-| Selector to a custom VR button. On click, the button will enter VR.

Default : _None_
-}
enterVRButton : String -> Property
enterVRButton = property "enterVRButton"


{-| Selector to a custom AR button. On click, the button will enter AR.

Default : _None_
-}
enterARButton : String -> Property
enterARButton = property "enterARButton"
