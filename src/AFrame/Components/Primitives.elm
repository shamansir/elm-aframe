module AFrame.Components.Primitives exposing (..)


type Primitive = Primitive String



custom : String -> Primitive
custom = Primitive


box : Primitive
box = Primitive "box"


circle : Primitive
circle = Primitive "circle"


cone : Primitive
cone = Primitive "cone"


cylinder : Primitive
cylinder = Primitive "cylinder"


dodecahedron : Primitive
dodecahedron = Primitive "dodecahedron"


octahedron : Primitive
octahedron = Primitive "octahedron"


plane : Primitive
plane = Primitive "plane"


ring : Primitive
ring = Primitive "ring"


sphere : Primitive
sphere = Primitive "sphere"


tetrahedron : Primitive
tetrahedron = Primitive "tetrahedron"


torus : Primitive
torus = Primitive "torus"


torusKnot : Primitive
torusKnot = Primitive "torusKnot"


triangle : Primitive
triangle = Primitive "triangle"


toString : Primitive -> String
toString (Primitive g) = g
