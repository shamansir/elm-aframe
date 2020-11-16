module AFrame.Variants.Text.Align exposing

    ( Align
    , left, center, right
    , toString
    )

{-| # Align

@docs Align

# Values

@docs left, center, right

@docs toString
-}


{-| -}
type Align
    = Left
    | Center
    | Right


{-| -}
left : Align
left = Left


{-| -}
center : Align
center = Center


{-| -}
right : Align
right = Right


{-| -}
toString : Align -> String
toString align =
    case align of
        Left -> "left"
        Center -> "center"
        Right -> "right"
