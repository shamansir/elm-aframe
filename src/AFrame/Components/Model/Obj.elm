module AFrame.Components.Model.Obj exposing (..)


import AFrame.Properties exposing (Property, property)

{-| Selector to an `<a-asset-item>` pointing to a .OBJ file or an inline path to a .OBJ file.
-}
obj : String -> Property
obj = property "obj"


{-| Selector to an <a-asset-item> pointing to a .MTL file or an inline path to a .MTL file. Optional if you wish to use the material component instead.
-}
material : String -> Property
material = property "material"
