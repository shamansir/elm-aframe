module AFrame.Components.GltfModel exposing (..)


import AFrame.Properties exposing (Property, property)

{-|
Path to the Draco decoder libraries.
-}
dracoDecoderPath : String -> Property
dracoDecoderPath = property "dracoDecoderPath"
