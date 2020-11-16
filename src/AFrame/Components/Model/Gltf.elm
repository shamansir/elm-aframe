module AFrame.Components.Model.Gltf exposing

    ( dracoDecoderPath
    )

{-| # GLTF Model

@docs dracoDecoderPath
-}


import AFrame.Properties exposing (Property, property)

{-|
Path to the Draco decoder libraries.
-}
dracoDecoderPath : String -> Property
dracoDecoderPath = property "dracoDecoderPath"
