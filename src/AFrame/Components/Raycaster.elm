module AFrame.Components.Raycaster exposing

    ( origin, direction, objects
    , near, far, inifitelyFar
    , autoRefresh, interval
    , showLine, useWorldCoordinates, enabled
    )

{-| # Raycaster

# Setup

@docs origin, direction, objects, interval

# Continuation

@docs near, far, inifitelyFar

# Other

@docs showLine, autoRefresh, enabled
-}


import AFrame.Properties exposing (Property, property)
import AFrame.Util exposing (..)



{-| Whether to automatically refresh raycaster’s list of objects to test for intersection using mutation observers to detect added or removed entities and components.

Default : `true`
-}
autoRefresh : Bool -> Property
autoRefresh = property "autoRefresh" << boolToString


{-| Vector3 coordinate of which direction the ray should point from relative to the entity’s origin.

Default : `0 0 -1`
-}
direction : Float -> Float -> Float -> Property
direction x y z = property "direction" <| vec3ToString x y z


{-| Whether raycaster is actively checking for intersections.

Default : `true`
-}
enabled : Bool -> Property
enabled = property "enabled" << boolToString


{-| Maximum distance under which resulting entities are returned. Cannot be lower than `near`.

Default : _Infinity_
-}
far : Float -> Property
far = property "far" << String.fromFloat


{-| -}
inifitelyFar : Property
inifitelyFar = property "far" "Infinity"


{-| Number of milliseconds to wait in between each intersection test. Lower number is better for faster updates. Higher number is better for performance. Intersection tests are performed at most once per frame.

Default : `0`
-}
interval : Int -> Property
interval = property "interval" << String.fromInt


{-| Minimum distance over which resuilting entities are returned. Cannot be lower than 0.

Default : `0`
-}
near : Float -> Property
near = property "near" << String.fromFloat


{-| Query selector to pick which objects to test for intersection. If not specified, all entities will be tested. Note that only objects attached via `.setObject3D` and their recursive children will be tested.

Default : _None_
-}
objects : String -> Property
objects = property "objects"


{-| Vector3 coordinate of where the ray should originate from relative to the entity’s origin.

Default : `0 0 0`
-}
origin : Float -> Float -> Float -> Property
origin x y z = property "origin" <| vec3ToString x y z


{-| Whether or not to display the raycaster visually with the line component.

Default : `false`
-}
showLine : Bool -> Property
showLine = property "showLine" << boolToString


{-| Whether the raycaster origin and direction properties are specified in world coordinates.

Default : `false`
-}
useWorldCoordinates : Bool -> Property
useWorldCoordinates = property "useWorldCoordinates" << boolToString
