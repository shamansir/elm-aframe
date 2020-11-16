module AFrame.Components.Geometry.Plane exposing

    ( width, height
    , segmentsWidth, segmentsHeight
    )

{-| # Plane

# Dimensions

@docs width, height

# Mesh

@docs segmentsWidth, segmentsHeight
-}


import AFrame.Properties exposing (Property, property)


{-| Width along the X axis.

Default : `1`
-}
width : Float -> Property
width = property "width" << String.fromFloat


{-| Height along the Y axis.

Default : `1`
-}
height : Float -> Property
height = property "height" << String.fromFloat


{-| Number of segmented faces on the y-axis

Default: `1`
-}
segmentsHeight : Int -> Property
segmentsHeight = property "segmentsHeight" << String.fromInt


{-| Number of segmented faces on the x-axis

Default: `1`
-}
segmentsWidth : Int -> Property
segmentsWidth = property "segmentsWidth" << String.fromInt



