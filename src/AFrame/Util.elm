module AFrame.Util exposing (..)


boolToString : Bool -> String
boolToString bool =
    case bool of
        True -> "true"
        False -> "false"


vec3ToString : Float -> Float -> Float -> String
vec3ToString x y z =
    [ x, y, z ]
        |> List.map String.fromFloat
        |> String.join " "


