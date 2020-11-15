module AFrame.Components.Geometry exposing (..)


buffer : Bool -> Property
buffer = property "buffer" << boolToString


primitive : Primitive -> Property
primitive = property "primitive" << Primitive.toString


skipCache : Bool -> Property
skipCache = property "skipCache" << boolToString


width : Float -> Property
width = property "width" << String.fromFloat


height : Float -> Property
height = property "height" << String.fromFloat


depth : Float -> Property
depth = property "depth" << String.fromFloat


openEnded : Bool -> Property
openEnded = property "openEnded" << boolToString


arc : Float -> Property
arc = property "arc" << String.fromFloat


p : Float -> Property
p = property "p" << String.fromFloat


q : Float -> Property
q = property "q" << String.fromFloat


radius : Float -> Property
radius = property "radius" << String.fromFloat


radiusBottom : Float -> Property
radiusBottom = property "radiusBottom" << String.fromFloat


radiusTop : Float -> Property
radiusTop = property "radiusTop" << String.fromFloat


radiusInner : Float -> Property
radiusInner = property "radiusInner" << String.fromFloat


radiusOuter : Float -> Property
radiusOuter = property "radiusOuter" << String.fromFloat


radiusTubular : Float -> Property
radiusTubular = property "radiusTubular" << String.fromFloat


segments : Int -> Property
segments = property "segments" << String.fromInt


segmentsDepth : Int -> Property
segmentsDepth = property "segmentsDepth" << String.fromInt


segmentsWidth : Int -> Property
segmentsWidth = property "segmentsWidth" << String.fromInt


segmentsHeight : Int -> Property
segmentsHeight = property "segmentsHeight" << String.fromInt


segmentsRadial : Int -> Property
segmentsRadial = property "segmentsRadial" << String.fromInt


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


thetaStart : Float -> Property
thetaStart = property "thetaStart" << String.fromFloat


thetaLength : Float -> Property
thetaLength = property "thetaLength" << String.fromFloat


vertexA : Float -> Float -> Float -> Property
vertexA x y z = property "vertexA" <| vec3ToString x y z


vertexB : Float -> Float -> Float -> Property
vertexB x y z = property "vertexB" <| vec3ToString x y z


vertexC : Float -> Float -> Float -> Property
vertexC x y z = property "vertexC" <| vec3ToString x y z
