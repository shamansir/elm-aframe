module AFrame.Variants.Axis exposing

    ( Axis
    , x, y, z
    , toString
    )

{-| # Axis

@docs Axis

# Values

@docs x, y, z

@docs toString
-}


{-| -}
type Axis
    = X
    | Y
    | Z


{-| -}
x : Axis
x = X


{-| -}
y : Axis
y = Y


{-| -}
z : Axis
z = Z


{-| -}
toString : Axis -> String
toString axis =
    case axis of
        X -> "x"
        Y -> "y"
        Z -> "z"

