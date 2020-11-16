module AFrame.Components.Animations exposing

    ( enabled, type_, property, isRawProperty
    , from, fromBool, fromColor, fromVec3
    , to, toBool, toColor, toVec3
    , delay, dir, dur, fill, round
    , easing, elasticity, round
    , autoplay, loop, loopForever, repeat, repeatForever
    , startEvents, pauseEvents, resumeEvents
    )

{-| # Core

@docs type_, property, isRawProperty

# Tween

@docs from, fromBool, fromColor, fromVec3, to, toBool, toColor, toVec3, dir

# Easing

@docs easing, elasticity, round

# Timing

@docs delay, dur, fill

# Repeat

@docs loop, loopForever, repeat, repeatForever

# Events

@docs autoplay, startEvents, pauseEvents, resumeEvents

# Turning off

@docs enabled
-}


import AFrame.Properties as P exposing (Property, property)

import Color exposing (Color)

import AFrame.Variants.Fill exposing (Fill)
import AFrame.Variants.Fill as Fill exposing (toString)
import AFrame.Variants.Direction as Dir exposing (Direction, toString)
import AFrame.Variants.Easing exposing (Easing)
import AFrame.Variants.Easing as Easing exposing (toString)
import AFrame.EventRefs exposing (EventRef)
import AFrame.EventRefs as EventRefs exposing (stringify)
import AFrame.Util exposing (..)
import AFrame.Animations exposing (easing)


{-| Property to animate. Can be a component name, a dot-delimited property of a component (e.g., `material.color`), or a plain attribute.
-}
property : String -> Property
property = P.property "property"


{-| Flag to animate an arbitrary object property outside of A-Frame components for better performance. If set to true, for example, we can set property to like `components.material.material.opacity`. If property starts with components or `object3D`, this will be inferred to `true`.

Default: `false`
-}
isRawProperty : Bool -> Property
isRawProperty = P.property "property" << boolToString


{-| Initial value at start of animation. If not specified, the current property value of the entity will be used (will be sampled on each animation start). It is best to specify a from value when possible for stability.
-}
from : String -> Property
from = P.property "from"


{-|  Initial color at start of animation.
-}
fromColor : Color -> Property
fromColor = from << Color.toCssString


{-|  Initial vector at start of animation.
-}
fromVec3 : Float -> Float -> Float -> Property
fromVec3 x y z = from <| vec3ToString x y z


{-|  Initial bool value at start of animation.
-}
fromBool : Bool -> Property
fromBool = from << boolToString


{-| Target value at end of animation.
-}
to : String -> Property
to = P.property "to"


{-| Target color value at end of animation.
-}
toColor : Color -> Property
toColor = to << Color.toCssString


{-| Target vector value at end of animation.
-}
toVec3 : Float -> Float -> Float -> Property
toVec3 x y z = to <| vec3ToString x y z


{-| Target color value at end of animation.
-}
toBool : Bool -> Property
toBool = to << boolToString


{-| Right now only supports color for tweening isRawProperty color XYZ/RGB vector values.

Default: `''`
-}
type_ : String -> Property
type_ = P.property "type"


{-| How long (milliseconds) to wait before starting.

Default : `0`
-}
delay : Int -> Property
delay = P.property "delay" << String.fromInt


{-| Which dir to go from from to to.

Default: `normal`

Other: `alternate`, `reverse`
-}
dir : Dir.Direction -> Property
dir = P.property "direction" << Dir.toString


{-| How long (milliseconds) each cycle of the animation is.

Default : `1000`
-}
dur : Int -> Property
dur = P.property "dur" << String.fromInt


{-|	Easing function of animation. To ease in, ease out, ease in and out.
-}
easing : Easing -> Property
easing = P.property "easing" << Easing.toString


{-| How much to bounce (higher is stronger).

Default : `400`
-}
elasticity : Float -> Property
elasticity = P.property "elasticity" << String.fromFloat


{-| How many times the animation should repeat.

Default : `0`
-}
loop : Int -> Property
loop = P.property "loop" << String.fromInt


{-| -}
loopForever : Property
loopForever = P.property "loop" "true"


{-| How many times the animation should repeat.

Default : `0`
-}
repeat : Int -> Property
repeat = loop


{-| -}
repeatForever : Int -> Property
repeatForever = loopForever


{-| Determines effect of animation when not actively in play.
One of `backwards`, `both`, `forwards`, `none`.
-}
fill : Fill -> Property
fill = P.property "fill" << Fill.toString


{-| Whether to round values. -}
round : Bool -> Property
round = P.property "round" << boolToString


{-| Comma-separated list of events to listen to trigger a restart and play. Animation will not autoplay if specified. `startEvents` will *restart* the animation, use `pauseEvents` to resume it. If there are other animation components on the entity animating the same property, those animations will be automatically paused to not conflict. -}
startEvents : List EventRef -> Property
startEvents = P.property "startEvents" << EventRefs.stringify


{-| Comma-separated list of events to listen to trigger pause. Can be resumed with resumeEvents.
-}
pauseEvents : List EventRef -> Property
pauseEvents = P.property "pauseEvents" << EventRefs.stringify


{-| Comma-separated list of events to listen to trigger resume after pausing.
-}
resumeEvents : List EventRef -> Property
resumeEvents = P.property "resumeEvents" << EventRefs.stringify


{-| Whether or not the animation should autoplay. Should be specified if the animation is defined for the [animation-timeline](https://www.npmjs.com/package/aframe-animation-timeline-component) component.
-}
autoplay : Bool -> Property
autoplay = P.property "autoplay" << boolToString


{-| If disabled, animation will stop and startEvents will not trigger animation start.
-}
enabled : Bool -> Property
enabled = P.property "enabled" << boolToString
