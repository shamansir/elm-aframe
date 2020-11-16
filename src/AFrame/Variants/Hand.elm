module AFrame.Variants.Hand exposing

    ( Hand
    , right, left
    , toString
    )

{-| # Hand

@docs Hand

# Values

@docs right, left

@docs toString
-}


{-| -}
type Hand
    = Right
    | Left


{-| -}
right : Hand
right = Right


{-| -}
left : Hand
left = Left


{-| -}
toString : Hand -> String
toString hand =
    case hand of
        Left -> "left"
        Right -> "right"
