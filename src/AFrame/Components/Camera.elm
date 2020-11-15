module AFrame.Components.Camera exposing (..)


import AFrame.Components.Properties exposing (Property, property)
import AFrame.Util exposing (..)


{-| Whether the camera is the active camera in a scene with more than one camera.

Default : `true`
-}
active : Bool -> Property
active = property "active" << boolToString


{-| Camera frustum far clipping plane.

Default : `10000`
-}
far : Float -> Property
far = property "far" << String.fromFloat


{-| Field of view (in degrees).

Default : `80`
-}
fov : Float -> Property
fov = property "fov" << String.fromFloat


{-| Camera frustum near clipping plane.

Default : `0.005`
-}
near : Float -> Property
near = property "near" << String.fromFloat


{-| Whether the camera is used to render a third-person view of the scene on the 2D display while in VR mode.

Default : `false`
-}
spectator : Bool -> Property
spectator = property "spectator" << boolToString


{-| Zoom factor of the camera.

Default : `1`
-}
zoom : Float -> Property
zoom = property "zoom" << String.fromFloat
