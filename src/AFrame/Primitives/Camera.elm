module AFrame.Primitives.Camera
    exposing
        ( camera, far, fov
        , lookControlsEnabled, near, wasdControlsEnabled
        )

{-| Camera primitive.

# Primitives
@docs camera

# Attributes
@docs far, fov, lookControlsEnabled, near, wasdControlsEnabled

-}

import String exposing (toLower)
import Html exposing (node, Html, Attribute)
import Html.Attributes exposing (attribute)

import AFrame.Util exposing (..)


{-| The camera primitive places the user somewhere within the scene.

    camera [] []
-}
camera : List (Attribute msg) -> List (Html msg) -> Html msg
camera =
    node "a-camera"


{-| Camera frustum far clipping plane.
-}
far : Float -> Attribute msg
far value =
    attribute "far" (String.fromFloat value)


{-| Field of view (in degrees).
-}
fov : Float -> Attribute msg
fov value =
    attribute "fov" (String.fromFloat value)


{-| Enable look controls.

    camera [ lookControlsEnabled False ] []
-}
lookControlsEnabled : Bool -> Attribute msg
lookControlsEnabled =
    attribute "look-controls-enabled" << boolToString


{-| Camera frustum near clipping plane.
-}
near : Float -> Attribute msg
near value =
    attribute "near" (String.fromFloat value)


{-| Enable WASD controls for camera.

    camera [ wasdControlsEnabled False ] []
-}
wasdControlsEnabled : Bool -> Attribute msg
wasdControlsEnabled =
    attribute "wasd-controls-enabled" << boolToString
