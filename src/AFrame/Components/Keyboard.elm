module AFrame.Components.Keyboard exposing (..)


import AFrame.Components.Properties exposing (Property, property)
import AFrame.Util exposing (..)


enterVr : Bool -> Property
enterVr = property "enterVR" << boolToString
