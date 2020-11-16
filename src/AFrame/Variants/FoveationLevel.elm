module AFrame.Variants.FoveationLevel exposing

    ( FoveationLevel
    , none, low, medium, high
    , toInt
    )

{-| # FoveationLevel

@docs FoveationLevel

# Values

@docs none, low, medium, high

@docs toInt
-}


{-| -}
type FoveationLevel
    = None
    | Low
    | Medium
    | High


{-| -}
none = None


{-| -}
low = Low


{-| -}
medium = Medium


{-| -}
high = High


{-| -}
toInt : FoveationLevel -> Int
toInt foveation =
    case foveation of
        None -> 0
        Low -> 1
        Medium -> 2
        High -> 3
