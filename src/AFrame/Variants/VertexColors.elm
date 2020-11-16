module AFrame.Variants.VertexColors exposing

    ( VertexColors
    , none, vertex, face
    , toString
    )

{-| # VertexColors

@docs VertexColors

# Values

@docs none, vertex, face

@docs toString
-}


{-| -}
type VertexColors
    = None
    | Vertex
    | Face


{-| -}
none : VertexColors
none = None


{-| -}
vertex : VertexColors
vertex = Vertex


{-| -}
face : VertexColors
face = Face


{-| -}
toString : VertexColors -> String
toString side =
    case side of
        None -> "none"
        Vertex -> "vertex"
        Face -> "face"
