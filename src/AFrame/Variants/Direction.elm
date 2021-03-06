module AFrame.Variants.Direction exposing

    ( Direction
    , normal, alternate, reverse
    , toString
    )

{-| # Direction

@docs Direction

# Values

@docs normal, alternate, reverse

@docs toString
-}


{-| -}
type Direction
    = Normal
    | Alternate
    | Reverse


{-| -}
normal : Direction
normal = Normal


{-| -}
alternate : Direction
alternate = Alternate


{-| -}
reverse : Direction
reverse = Reverse


{-| -}
toString : Direction -> String
toString dir =
    case dir of
        Normal -> "normal"
        Alternate -> "alternate"
        Reverse -> "reverse"
