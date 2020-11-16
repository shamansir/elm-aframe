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
none : FoveationLevel
none = None


{-| -}
low : FoveationLevel
low = Low


{-| -}
medium : FoveationLevel
medium = Medium


{-| -}
high : FoveationLevel
high = High


{-| -}
toInt : FoveationLevel -> Int
toInt foveation =
    case foveation of
        None -> 0
        Low -> 1
        Medium -> 2
        High -> 3
