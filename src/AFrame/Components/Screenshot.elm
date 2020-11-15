module AFrame.Components.Screenshot exposing (..)


import AFrame.Properties exposing (Property, property)


{-| The width in pixels of the screenshot taken.

Default : `4096`
-}
width : Int -> Property
width = property "width" << String.fromInt


{-| The height in pixels of the screenshot taken.

Default : `2048`
-}
height : Int -> Property
height = property "height" << String.fromInt
