module AFrame.Components.Geometry.Triangle exposing

    ( vertexA, vertexB, vertexC
    )

{-| # Triangle

# Points

@docs vertexA, vertexB, vertexC
-}


import AFrame.Properties exposing (Property, property)
import AFrame.Util exposing (..)


{-| Coordinates of one of the three vertices.

Default : `0 0.5 0`
-}
vertexA : Float -> Float -> Float -> Property
vertexA x y z = property "vertexA" <| vec3ToString x y z


{-| Coordinates of one of the three vertices.

Default : `-0.5 -0.5 0`
-}
vertexB : Float -> Float -> Float -> Property
vertexB x y z = property "vertexB" <| vec3ToString x y z


{-| Coordinates of one of the three vertices.

Default : `0.5 -0.5 0`
-}
vertexC : Float -> Float -> Float -> Property
vertexC x y z = property "vertexC" <| vec3ToString x y z
