module AFrame.Components.Keyboard exposing

    ( enterVr
    )

{-| # Keyboard

@docs enterVr
-}


import AFrame.Properties exposing (Property, property)
import AFrame.Util exposing (..)


enterVr : Bool -> Property
enterVr = property "enterVR" << boolToString
