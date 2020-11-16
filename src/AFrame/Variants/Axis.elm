module AFrame.Variants.Axis exposing (..)


{-| -}
type Axis
    = X
    | Y
    | Z


x : Axis
x = X


y : Axis
y = Y


z : Axis
z = Z


toString : Axis -> String
toString axis =
    case axis of
        X -> "x"
        Y -> "y"
        Z -> "z"

