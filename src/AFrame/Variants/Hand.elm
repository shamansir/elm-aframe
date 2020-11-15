module AFrame.Variants.Hand exposing (..)


type Hand
    = Right
    | Left


right = Right


left = Left


toString : Hand -> String
toString hand =
    case hand of
        Left -> "left"
        Right -> "right"
