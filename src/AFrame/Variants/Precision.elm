module AFrame.Variants.Precision exposing (..)


type Precision
    = Low
    | Medium
    | High


low = Low


medium = Medium


high = High


toString : Precision -> String
toString precision =
    case precision of
        Low -> "low"
        Medium -> "medium"
        High -> "hight"
