module AFrame.Variants.Text.Anchor exposing

    ( Anchor
    , left, center, right, align
    , toString
    )

{-| # Anchor

@docs Anchor

# Values

@docs left, center, right, align

@docs toString
-}


{-| -}
type Anchor
    = Left
    | Center
    | Right
    | Align


{-| -}
left : Anchor
left = Left


{-| -}
center : Anchor
center = Center


{-| -}
right : Anchor
right = Right


{-| -}
align : Anchor
align = Align


{-| -}
toString : Anchor -> String
toString anchor =
    case align of
        Left -> "left"
        Center -> "center"
        Right -> "right"
        Align -> "align"
