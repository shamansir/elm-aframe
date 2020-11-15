module AFrame.Variants.FoveationLevel exposing (..)


type FoveationLevel
    = None
    | Low
    | Medium
    | High


none = None


low = Low


medium = Medium


high = High


toInt : FoveationLevel -> Int
toInt foveation =
    case foveation of
        None -> 0
        Low -> 1
        Medium -> 2
        High -> 3
