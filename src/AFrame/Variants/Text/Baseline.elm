module AFrame.Variants.Text.Baseline exposing

    ( Baseline
    , top, center, bottom
    , toString
    )

{-| # Baseline

@docs Baseline

# Values

@docs top, center, bottom

@docs toString
-}


{-| -}
type Baseline
    = Top
    | Center
    | Bottom


{-| -}
top : Baseline
top = Top


{-| -}
center : Baseline
center = Center


{-| -}
bottom : Baseline
bottom = Bottom


{-| -}
toString : Baseline -> String
toString baseline =
    case baseline of
        Top -> "top"
        Center -> "center"
        Bottom -> "bottom"
