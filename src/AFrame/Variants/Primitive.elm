module AFrame.Variants.Primitive exposing

    ( Primitive, primitive
    , plane, triangle, circle
    , box
    , cone, cylinder, ring, sphere, torus, torusKnot
    , dodecahedron, octahedron, tetrahedron
    , toString
    )

{-| # Primitive

@docs Primitive, primitive

# Flat

@docs plane, triangle, circle

# Angled

@docs box, tetrahedron, octahedron, dodecahedron

# Circly

@docs cone, cylinder, ring, sphere, torus, torusKnot

# Stringify

@docs toString

-}


{-| -}
type Primitive = Primitive String


{-| -}
primitive : String -> Primitive
primitive = Primitive


{-| -}
box : Primitive
box = Primitive "box"


{-| -}
circle : Primitive
circle = Primitive "circle"


{-| -}
cone : Primitive
cone = Primitive "cone"


{-| -}
cylinder : Primitive
cylinder = Primitive "cylinder"


{-| -}
dodecahedron : Primitive
dodecahedron = Primitive "dodecahedron"


{-| -}
octahedron : Primitive
octahedron = Primitive "octahedron"


{-| -}
plane : Primitive
plane = Primitive "plane"


{-| -}
ring : Primitive
ring = Primitive "ring"


{-| -}
sphere : Primitive
sphere = Primitive "sphere"


{-| -}
tetrahedron : Primitive
tetrahedron = Primitive "tetrahedron"


{-| -}
torus : Primitive
torus = Primitive "torus"


{-| -}
torusKnot : Primitive
torusKnot = Primitive "torusKnot"


{-| -}
triangle : Primitive
triangle = Primitive "triangle"


{-| -}
toString : Primitive -> String
toString (Primitive g) = g
