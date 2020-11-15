module AFrame.Components.Geometry exposing (..)


import AFrame.Components.Properties exposing (Property, property)
import AFrame.Components.Primitives exposing (Primitive)
import AFrame.Components.Primitives as Primitive exposing (toString)
import AFrame.Util exposing (..)

import AFrame.Components.Geometry.Box as G exposing (..)
import AFrame.Components.Geometry.Ring as G exposing (..)


{-| Transform geometry into a BufferGeometry to reduce memory usage at the cost of being harder to manipulate.

Default : `true`
-}
buffer : Bool -> Property
buffer = property "buffer" << boolToString


{-| Name of a geometry. Determines the geometry type and what other properties are available.

Default : `box`
-}
primitive : Primitive -> Property
primitive = property "primitive" << Primitive.toString


{-| Disable retrieving the shared geometry object from the cache.

Default : `false`
-}
skipCache : Bool -> Property
skipCache = property "skipCache" << boolToString


{-| -}
width : Float -> Property
width = G.width


{-| -}
height : Float -> Property
height = G.height


{-| -}
depth : Float -> Property
depth = G.depth


{-| -}
radius : Float -> Property
radius = G.radius







arc : Float -> Property
arc = property "arc" << String.fromFloat


p : Float -> Property
p = property "p" << String.fromFloat


q : Float -> Property
q = property "q" << String.fromFloat






radiusInner : Float -> Property
radiusInner = property "radiusInner" << String.fromFloat


radiusOuter : Float -> Property
radiusOuter = property "radiusOuter" << String.fromFloat


radiusTubular : Float -> Property
radiusTubular = property "radiusTubular" << String.fromFloat









segmentsTheta : Int -> Property
segmentsTheta = property "segmentsTheta" << String.fromInt


segmentsTubular : Int -> Property
segmentsTubular = property "segmentsRadial" << String.fromInt


segmentsPhi : Int -> Property
segmentsPhi = property "segmentsPhi" << String.fromInt


phiStart : Float -> Property
phiStart = property "phiStart" << String.fromFloat


phiLength : Float -> Property
phiLength = property "phiLength" << String.fromFloat





vertexA : Float -> Float -> Float -> Property
vertexA x y z = property "vertexA" <| vec3ToString x y z


vertexB : Float -> Float -> Float -> Property
vertexB x y z = property "vertexB" <| vec3ToString x y z


vertexC : Float -> Float -> Float -> Property
vertexC x y z = property "vertexC" <| vec3ToString x y z
