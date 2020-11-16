module AFrame.Events exposing (..)


import Html exposing (Attribute)
import Html.Events as Events

import Json.Decode exposing (Decoder)

import AFrame.EventRefs exposing (EventRef)
import AFrame.EventRefs as Ref exposing (toString)


on : EventRef -> Decoder msg -> Attribute msg
on = Events.on << Ref.toString


custom
     : EventRef
    -> Decoder
           { message : msg
           , stopPropagation : Bool
           , preventDefault : Bool
           }
    -> Attribute msg
custom = Events.custom << Ref.toString
