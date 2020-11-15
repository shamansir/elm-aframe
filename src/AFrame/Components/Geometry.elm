module AFrame.Components.Geometry exposing (..)


import AFrame.Components.Properties exposing (Property, property)
import AFrame.Components.Primitives exposing (Primitive)
import AFrame.Components.Primitives as Primitive exposing (toString)
import AFrame.Util exposing (..)

import AFrame.Components.Geometry.Box as G exposing (..)
import AFrame.Components.Geometry.Circle as G exposing (..)
import AFrame.Components.Geometry.Cone as GC exposing (..)
import AFrame.Components.Geometry.Ring as GR exposing (..)
import AFrame.Components.Geometry.Sphere as GS exposing (..)
import AFrame.Components.Geometry.Torus as GT exposing (..)
import AFrame.Components.Geometry.TorusKnot as GTK exposing (..)
import AFrame.Components.Geometry.Triangle as G exposing (..)


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
arc : Float -> Property
arc = GT.arc


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
p : Float -> Property
p = GTK.p


{-| -}
q : Float -> Property
q = GTK.q


{-| -}
openEnded : Bool -> Property
openEnded = GC.openEnded


{-| -}
phiStart : Float -> Property
phiStart = GS.phiStart


{-| -}
phiLength : Float -> Property
phiLength = GS.phiLength


{-| -}
radius : Float -> Property
radius = G.radius


{-| -}
radiusInner : Float -> Property
radiusInner = GR.radiusInner


{-| -}
radiusOuter : Float -> Property
radiusOuter = GR.radiusOuter


{-| -}
radiusTubular : Float -> Property
radiusTubular = GT.radiusTubular


{-| -}
segments : Int -> Property
segments = G.segments


{-| -}
segmentsWidth : Int -> Property
segmentsWidth = G.segmentsWidth


{-| -}
segmentsHeight : Int -> Property
segmentsHeight = G.segmentsHeight


{-| -}
segmentsDepth : Int -> Property
segmentsDepth = G.segmentsDepth


{-| -}
segmentsRadial : Int -> Property
segmentsRadial = GC.segmentsRadial


{-| -}
segmentsTubular : Int -> Property
segmentsTubular = GT.segmentsTubular


{-| -}
segmentsTheta : Int -> Property
segmentsTheta = GR.segmentsTheta


{-| -}
segmentsPhi : Int -> Property
segmentsPhi = GR.segmentsPhi


{-| -}
thetaStart : Float -> Property
thetaStart = G.thetaStart


{-| -}
thetaLength : Float -> Property
thetaLength = G.thetaLength


{-| -}
vertexA : Float -> Float -> Float -> Property
vertexA = G.vertexA


{-| -}
vertexB : Float -> Float -> Float -> Property
vertexB = G.vertexB


{-| -}
vertexC : Float -> Float -> Float -> Property
vertexC = G.vertexC
