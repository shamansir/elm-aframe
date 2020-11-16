module AFrame.Variants.Precision exposing

    ( Precision
    , low, medium, high
    , toString
    )

{-| # Precision

@docs Precision

# Values

@docs low, medium, high

@docs toString
-}


{-| -}
type Precision
    = Low
    | Medium
    | High


{-| -}
low = Low


{-| -}
medium = Medium


{-| -}
high = High


{-| -}
toString : Precision -> String
toString precision =
    case precision of
        Low -> "low"
        Medium -> "medium"
        High -> "hight"
