module AFrame.Variants.HandStyle exposing (..)


type HandStyle
    = LowPoly
    | HighPoly
    | Toon


lowPoly = LowPoly


highPoly = HighPoly


toon = Toon


toString : HandStyle -> String
toString handStyle =
    case handStyle of
        LowPoly -> "lowPoly"
        HighPoly -> "highPoly"
        Toon -> "toon"
