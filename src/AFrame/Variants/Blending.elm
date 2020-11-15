module AFrame.Variants.Blending exposing (..)


type Blending
    = None
    | Normal
    | Additive
    | Subtractive
    | Multiply
    | Other String


blending : String -> Blending
blending = Other


none : Blending
none = None


normal : Blending
normal = Normal


additive : Blending
additive = Additive


subtractive : Blending
subtractive = Subtractive


multiply : Blending
multiply = Multiply


toString : Blending -> String
toString blending_ =
    case blending_ of
        None -> "none"
        Normal -> "normal"
        Additive -> "additive"
        Subtractive -> "subtractive"
        Multiply -> "multiply"
        Other s -> s
