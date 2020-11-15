module AFrame.Variants.Direction exposing (..)


type Direction
    = Normal
    | Alternate
    | Reverse


normal : Direction
normal = Normal

alternate : Direction
alternate = Alternate


reverse : Direction
reverse = Reverse


toString : Direction -> String
toString dir =
    case dir of
        Normal -> "normal"
        Alternate -> "alternate"
        Reverse -> "reverse"
