module AFrame.Components.Fog exposing (..)

-- `type_`, `near`, `far` are already implemented




-- `type_`, `near`, `far` are already implemented


color : Color -> Property
color = property "color" << Color.toCssString


density : Float -> Property
density = property "density" << String.fromFloat
