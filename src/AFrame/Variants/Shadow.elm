module AFrame.Variants.Shadow exposing

    ( Shadow
    , basic, pcf, pcfSoft
    , toString
    )

{-| # Shadow

@docs Shadow

# Values

@docs basic, pcf, pcfSoft

@docs toString
-}


{-| Different kinds of shadows
-}
type Shadow
    = Basic
    | Pcf
    | PcfSoft


{-| -}
basic : Shadow
basic = Basic


{-| -}
pcf : Shadow
pcf = Pcf


{-| -}
pcfSoft : Shadow
pcfSoft = PcfSoft


{-| -}
toString : Shadow -> String
toString shadow_ =
    case shadow_ of
        Basic ->
            "basic"

        Pcf ->
            "pcf"

        PcfSoft ->
            "pcfsoft"

