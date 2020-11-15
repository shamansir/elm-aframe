module AFrame.Components.Keyboard exposing (..)


{- keyboard-shortcuts -}

enterVr : Bool -> Property
enterVr = property "enterVR" << boolToString
