module AFrame.Components.Pool exposing (..)


import AFrame.Properties exposing (Property, property)
import AFrame.Util exposing (..)


{-| Selector to store pooled entities. Defaults to the scene.

Default : _None_
-}
container : String -> Property
container = property "container"


{-| Grow the pool automatically if more entities are requested after reaching the `size`.

Default : `false`
-}
dynamic : Bool -> Property
dynamic = property "dynamic" << boolToString


{-| Mixin required to initialize the entities of the pool.

Default : _None_
-}
mixin : String -> Property
mixin = property "mixin"


{-| Number of preallocated entities in the pool.

Default : `0`
-}
size : Int -> Property
size = property "size" << String.fromInt
