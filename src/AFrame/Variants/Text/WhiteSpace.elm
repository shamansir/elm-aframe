module AFrame.Variants.Text.WhiteSpace exposing (..)


type WhiteSpace
    = Normal
    | Pre
    | NoWrap


normal : WhiteSpace
normal = Normal


pre : WhiteSpace
pre = Pre


nowrap : WhiteSpace
nowrap = NoWrap


toString : WhiteSpace -> String
toString ws =
    case ws of
        Normal -> "normal"
        Pre -> "pre"
        NoWrap -> "nowrap"
