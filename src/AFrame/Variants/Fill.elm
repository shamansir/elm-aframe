module AFrame.Variants.Fill exposing

    ( Fill
    , none, forwards, backwards, both
    , toString
    )

{-| # Fill

@docs Fill

# Values

@docs none, forwards, backwards, both

@docs toString
-}


{-| -}
type Fill
    = Backwards
    | Forwards
    | Both
    | None



{-| -}
backwards : Fill
backwards = Backwards


{-| -}
forwards : Fill
forwards = Forwards


{-| -}
both : Fill
both = Both


{-| -}
none : Fill
none = None


{-| -}
toString : Fill -> String
toString fill_ =
    case fill_ of
        Backwards -> "backwards"
        Forwards -> "forwards"
        Both -> "both"
        None -> "none"
