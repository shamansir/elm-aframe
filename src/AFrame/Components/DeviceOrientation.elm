module AFrame.Components.DeviceOrientation exposing (..)

{-| Starting with Safari on iOS 13 browsers require sites to be served over https and request user permission to access DeviceOrientation events. This component presents a permission dialog for the user to grant or deny access. The device-orientation-permission-ui component applies only to the <a-scene> element
-}

import AFrame.Components.Properties exposing (Property, property)
import AFrame.Util exposing (..)


{-| Whether or not to display the dialog when required

Default : `true`
-}
enabled : Bool -> Property
enabled = property "enabled" << boolToString
