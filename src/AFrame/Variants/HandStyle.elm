module AFrame.Variants.HandStyle exposing

    ( HandStyle
    , lowPoly, highPoly, toon
    , toString
    )

{-| # HandStyle

@docs HandStyle

# Values

@docs lowPoly, highPoly, toon

@docs toString
-}


{-| -}
type HandStyle
    = LowPoly
    | HighPoly
    | Toon


{-| -}
lowPoly : HandStyle
lowPoly = LowPoly


{-| -}
highPoly : HandStyle
highPoly = HighPoly


{-| -}
toon : HandStyle
toon = Toon


{-| -}
toString : HandStyle -> String
toString handStyle =
    case handStyle of
        LowPoly -> "lowPoly"
        HighPoly -> "highPoly"
        Toon -> "toon"
