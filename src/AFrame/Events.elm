module AFrame.Events exposing

       ( on, custom )

{-| # Events

For the moment there is no out-of-the-box decoders for the events handling since it's already the huge list of their kinds and the things they could contain would be dozen times longer. So we would better suggest to implement them on demand and then, if possible, reuse, and then optionally include in this package.

@docs on, custom
-}


import Html exposing (Attribute)
import Html.Events as Events

import Json.Decode exposing (Decoder)

import AFrame.EventRefs exposing (EventRef)
import AFrame.EventRefs as Ref exposing (toString)


{-| Create a handler using event reference from `AFrame.EventRefs`. Custom decoder is needed. -}
on : EventRef -> Decoder msg -> Attribute msg
on = Events.on << Ref.toString


{-| Create a custom handler using event reference from `AFrame.EventRefs`. -}
custom
     : EventRef
    -> Decoder
           { message : msg
           , stopPropagation : Bool
           , preventDefault : Bool
           }
    -> Attribute msg
custom = Events.custom << Ref.toString
