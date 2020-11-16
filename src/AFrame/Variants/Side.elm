module AFrame.Variants.Side exposing

    ( Side
    , front, back, double
    , toString
    )

{-| # Side

@docs Side

# Values

@docs front, back, double

@docs toString
-}


{-| -}
type Side
    = Front
    | Back
    | Double


{-| -}
front : Side
front = Front


{-| -}
back : Side
back = Back


{-| -}
double : Side
double = Double


{-| -}
toString : Side -> String
toString side =
    case side of
        Front -> "front"
        Back -> "back"
        Double -> "double"
