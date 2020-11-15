module AFrame.Variants.VertexColors exposing (..)

type VertexColors
    = None
    | Vertex
    | Face


none = None


vertex = Vertex


face = Face


toString : VertexColors -> String
toString side =
    case side of
        None -> "none"
        Vertex -> "vertex"
        Face -> "face"
