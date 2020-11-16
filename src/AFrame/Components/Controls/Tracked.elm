module AFrame.Components.Controls.Tracked exposing

    ( hand, armModel, headModel
    , autoHide
    , controller, id, idPrefix
    , orientationOffset
    )

{-| # Tracked Controls

# Basic

@docs hand, armModel, headModel, autoHide

# Controller

@docs controller, id, idPrefix

# Orientation

@docs orientationOffset

-}


import AFrame.Variants.Hand exposing (Hand)
import AFrame.Variants.Hand as Hand exposing (toString)

import AFrame.Properties exposing (Property, property)
import AFrame.Util exposing (..)




{-| Set hand that will be tracked (i.e., `right`, `left`). -}
hand : Hand -> Property
hand = property "hand" << Hand.toString


{-| Whether the arm model is used for positional data.

Default : `true`
-}
armModel : Bool -> Property
armModel = property "armModel" << boolToString


{-| Whether to toggle visibility automatically when controller is connected or disconnected.

Default : `true`
-}
autoHide : Bool -> Property
autoHide = property "autoHide" << boolToString


{-| Index of the controller in array returned by the Gamepad API.

Default : `0`
-}
controller : Int -> Property
controller = property "controller" << String.fromInt


{-| Selects the controller from the Gamepad API using exact match.

Default : _None_
-}
id : String -> Property
id = property "id"


{-| Selects the controller from the Gamepad API using prefix match.

Default : _None_
-}
idPrefix : String -> Property
idPrefix = property "idPrefix"


{-| Head element for arm model if needed (if not active camera).

Default : _None_
-}
headModel : String -> Property
headModel = property "headModel"


{-| Offset to apply to model orientation.

Default: `x: 0, y: 0, z: 0`
-}
orientationOffset : Float -> Float -> Float -> Property
orientationOffset x y z = property "orientationOffset" <| vec3ToString x y z
