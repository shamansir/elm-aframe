module AFrame.Variants.DistanceModel exposing

    ( DistanceModel
    , linear, reverse, exponential
    , toString
    )

{-| # DistanceModel

@docs DistanceModel

# Values

@docs linear, reverse, exponential

@docs toString
-}


{-| -}
type DistanceModel
    = Linear
    | Reverse
    | Exponential


{-| -}
linear : DistanceModel
linear = Linear


{-| -}
reverse : DistanceModel
reverse = Reverse


{-| -}
exponential : DistanceModel
exponential = Exponential


{-| -}
toString : DistanceModel -> String
toString distance =
    case distance of
        Linear -> "linear"
        Reverse -> "reverse"
        Exponential -> "exponential"
