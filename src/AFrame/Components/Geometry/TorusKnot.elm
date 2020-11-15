module AFrame.Components.Geometry.TorusKnot exposing (..)


import AFrame.Components.Properties exposing (Property, property)


{-| Radius of the outer edge of the torus.

Default : `1`
-}
radius : Float -> Property
radius = property "radius" << String.fromFloat


{-| Radius of the tube.

Default : `0.2`
-}
radiusTubular : Float -> Property
radiusTubular = property "radiusTubular" << String.fromFloat


{-| Number of segments along the circumference of the tube ends. A higher number means the tube will be more round.

Default: `36`
-}
segmentsRadial : Int -> Property
segmentsRadial = property "segmentsRadial" << String.fromInt


{-| Number of segments along the circumference of the tube face. A higher number means the tube will be more round.

Default: `32`
-}
segmentsTubular : Int -> Property
segmentsTubular = property "segmentsTubular" << String.fromInt


{-| How many times the geometry winds around its axis of rotational symmetry.

Default: `2`
-}
p : Float -> Property
p = property "p" << String.fromFloat



{-| How many times the geometry winds around a circle in the interior of the torus

Default: `3`
-}
q : Float -> Property
q = property "q" << String.fromFloat

