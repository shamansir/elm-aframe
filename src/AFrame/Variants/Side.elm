module AFrame.Variants.Side exposing (..)


type Side
    = Front
    | Back
    | Double


front = Front


back = Back


double = Double


toString : Side -> String
toString side =
    case side of
        Front -> "front"
        Back -> "back"
        Double -> "double"
