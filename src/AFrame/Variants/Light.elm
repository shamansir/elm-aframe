module AFrame.Variants.Light exposing (..)


{-| Different kinds of lights
-}
type Light
    = Ambient
    | Directional
    | Hemisphere
    | Point
    | Spot


ambient : Light
ambient = Ambient


directional : Light
directional = Directional


hemisphere : Light
hemisphere = Hemisphere


point : Light
point = Point


spot : Light
spot = Spot



toString : Light -> String
toString light_ =
    case light_ of
        Ambient ->
            "ambient"

        Directional ->
            "directional"

        Hemisphere ->
            "hemisphere"

        Point ->
            "point"

        Spot ->
            "spot"