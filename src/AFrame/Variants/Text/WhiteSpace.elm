module AFrame.Variants.Text.WhiteSpace exposing

    ( WhiteSpace
    , normal, pre, nowrap
    , toString
    )

{-| # WhiteSpace

@docs WhiteSpace

# Values

@docs normal, pre, nowrap

@docs toString
-}


{-| -}
type WhiteSpace
    = Normal
    | Pre
    | NoWrap


{-| -}
normal : WhiteSpace
normal = Normal


{-| -}
pre : WhiteSpace
pre = Pre


{-| -}
nowrap : WhiteSpace
nowrap = NoWrap


{-| -}
toString : WhiteSpace -> String
toString ws =
    case ws of
        Normal -> "normal"
        Pre -> "pre"
        NoWrap -> "nowrap"
