module AFrame.Variants.Text.Font exposing

    ( Font
    , custom
    , default
    , roboto
    , aileronSemibold, dejaVu, exo2Bold, exo2SemiBold, kelsonSans, monoid, mozillaVR, sourceCodePro
    , toString
    )

{-| # Font

@docs Font, custom

# Values

@docs default

## Values : SDF (`json`)

@docs roboto

## Values : MSDF (`fnt`)

@docs aileronSemibold, dejaVu, exo2Bold, exo2SemiBold, kelsonSans, monoid, mozillaVR, sourceCodePro

@docs toString
-}


type alias Filename = String


type alias FontId = String


type alias FontUrl = String


{-| -}
type Font
    = Default
    | Sdf FontId Filename -- https://cdn.aframe.io/fonts/{filename}.json
    | Msdf FontId Filename  -- https://cdn.aframe.io/fonts/{filename}.fnt
    | Custom FontUrl


{-| Custom fonr using its URL -}
custom : FontUrl -> Font
custom = Custom


{-| -}
default : Font
default = Default


{-| -}
roboto : Font
roboto = Sdf "roboto" "Roboto-msdf"


{-| -}
aileronSemibold : Font
aileronSemibold = Msdf "aileronsemibold" "Aileron-Semibold"


{-| -}
dejaVu : Font
dejaVu = Msdf "dejavu" "DejaVu-sdf"


{-| -}
exo2Bold : Font
exo2Bold = Msdf "exo2bold" "Exo2Bold"


{-| -}
exo2SemiBold : Font
exo2SemiBold = Msdf "exo2semibold" "Exo2SemiBold"


{-| -}
kelsonSans : Font
kelsonSans = Msdf "kelsonsans" "KelsonSans"


{-| -}
monoid : Font
monoid = Msdf "monoid" "Monoid"


{-| -}
mozillaVR : Font
mozillaVR = Msdf "mozillavr" "mozillavr"


{-| -}
sourceCodePro : Font
sourceCodePro = Msdf "sourcecodepro" "SourceCodePro"


{-| -}
toString : Font -> String
toString font =
    case font of
        Default -> "default"
        Sdf fontId _ -> fontId
        Msdf fontId _ -> fontId
        Custom url -> url
