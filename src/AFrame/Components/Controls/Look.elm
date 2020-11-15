module AFrame.Components.Controls.Look exposing (..)


import AFrame.Properties exposing (Property, property)
import AFrame.Util exposing (..)



{-| Whether look controls are enabled.

Default : `true`
-}
enabled : Bool -> Property
enabled = property "enabled" << boolToString


{-| Whether to use VR headset pose in VR mode.

Default : `true`
-}
hmdEnabled : Bool -> Property
hmdEnabled = property "hmdEnabled" << boolToString


{-| Whether to reverse mouse drag

Default : `false`
-}
reverseMouseDrag : Bool -> Property
reverseMouseDrag = property "reverseMouseDrag" << boolToString


{-| Whether to reverse touch drag

Default : `false`
-}
reverseTouchDrag : Bool -> Property
reverseTouchDrag = property "reverseTouchDrag" << boolToString


{-| Whether to use touch controls in magic window mode.

Default : `true`
-}
touchEnabled : Bool -> Property
touchEnabled = property "touchEnabled" << boolToString


{-| Whether to hide the cursor using the [Pointer Lock API](https://developer.mozilla.org/docs/Web/API/Pointer_Lock_API).

Default : `false`
-}
pointerLockEnabled : Bool -> Property
pointerLockEnabled = property "pointerLockEnabled" << boolToString
