module AFrame.Components.Keyboard exposing (..)


import AFrame.Properties exposing (Property, property)
import AFrame.Util exposing (..)


enterVr : Bool -> Property
enterVr = property "enterVR" << boolToString
