module AFrame.Components.Geometry.Box exposing

    ( width, height, depth
    , segmentsWidth, segmentsHeight, segmentsDepth
    )

{-| # Box

# Dimensions

@docs width, height, depth

# Mesh

@docs segmentsWidth, segmentsHeight, segmentsDepth
-}


import AFrame.Properties exposing (Property, property)


{-| Width (in meters) of the sides on the X axis.

Default : `1`
-}
width : Float -> Property
width = property "width" << String.fromFloat


{-| Height (in meters) of the sides on the Y axis.

Default : `1`
-}
height : Float -> Property
height = property "height" << String.fromFloat


{-| Depth (in meters) of the sides on the Z axis.

Default : `1`
-}
depth : Float -> Property
depth = property "depth" << String.fromFloat



{-| Number of segmented faces on the x-axis

`box`

Default : `1`
-}
segmentsWidth : Int -> Property
segmentsWidth = property "segmentsWidth" << String.fromInt


{-| Number of segmented faces on the y-axis

`box`

Default : `1`
-}
segmentsHeight : Int -> Property
segmentsHeight = property "segmentsHeight" << String.fromInt


{-| Number of segmented faces on the z-axis

`box`

Default : `1`
-}
segmentsDepth : Int -> Property
segmentsDepth = property "segmentsDepth" << String.fromInt
