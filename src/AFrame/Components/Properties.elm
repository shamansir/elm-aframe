module AFrame.Components.Properties exposing (..)


import Html exposing (Attribute)
import Html.Attributes exposing (attribute)

{- import Color exposing (Color)

import AFrame.Directions as Dir
import AFrame.Directions exposing (Direction)
import AFrame.Easings as Easing
import AFrame.Easings exposing (Easing)
import AFrame.Events as Events exposing (stringify)
import AFrame.Events exposing (Event)
import AFrame.Hands exposing (Hand)
import AFrame.Hands as Hand exposing (toString)
import AFrame.HandStyles exposing (HandStyle)
import AFrame.HandStyles as HandStyle exposing (toString)
import AFrame.Components.Primitives exposing (Primitive)
import AFrame.Components.Primitives as Primitive exposing (toString)
import AFrame.Primitives.Light exposing (Light)
import AFrame.Primitives.Light as Light exposing (toString)
import AFrame.Util exposing (..) -}


type alias Property = ( String, String )


property : String -> String -> Property
property = Tuple.pair


toString : List Property -> String
toString =
    let
        propToString ( name, value ) = name ++ ": " ++ value
    in
        String.join "; "
        << List.map propToString









