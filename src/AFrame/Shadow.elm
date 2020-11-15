module AFrame.Shadow exposing (..)


{-| Different kinds of shadows
-}
type Shadow
    = Basic
    | Pcf
    | PcfSoft


basic : Shadow
basic = Basic


pcf : Shadow
pcf = Pcf


pcfSoft : Shadow
pcfSoft = PcfSoft



toString : Shadow -> String
toString shadow_ =
    case shadow_ of
        Basic ->
            "basic"

        Pcf ->
            "pcf"

        PcfSoft ->
            "pcfsoft"

