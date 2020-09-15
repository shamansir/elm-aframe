module AFrame.Extra.ModelLoader exposing (plymodel)

import Html.Attributes exposing (attribute)
import Html exposing (Attribute)


plymodel : String -> Attribute msg
plymodel value =
    attribute "ply-model" value
