module AFrame.Animations
    exposing
        ( animation
        , attribute_
        , begin
        , direction
        , dur
        , easing
        , fill
        , from, fromColor, fromVec2, fromVec3, fromBool, fromValue
        , loop
        , loopForever
        , to, toColor, toVec2, toVec3, toBool, toValue
        )


{-| This module provides a set of functions for declaring A-Frame animations.

# Definition
@docs animation

# Animation attributes
@docs attribute_, begin, direction, dur, easing, fill, from, fromColor, fromVec2, fromVec3, fromBool, fromValue, to, toColor, toVec2, toVec3, toBool, toValue, loop, loopForever

-}

import Html exposing (node, Html, Attribute)
import Html.Attributes exposing (attribute)

import Color exposing (Color)

import AFrame.Variants.Fill exposing (Fill)
import AFrame.Variants.Fill as Fill exposing (toString)
import AFrame.Variants.Direction exposing (Direction)
import AFrame.Variants.Direction as Dir exposing (toString)
import AFrame.Variants.Easing exposing (Easing)
import AFrame.Variants.Easing as Easing exposing (toString)
import AFrame.Util exposing (..)


{-| Animation declaration.

    box
        []
        [ animation
            [ attribute "rotation"
            , dur 10000
            , fill "forwards"
            , to "0 360 0"
            , repeat "indefinite"
            ]
            []
        ]
-}
animation : List (Attribute msg) -> List (Html msg) -> Html msg
animation =
    node "a-animation"


{-| Attribute to animate.

    animation [ attribute "rotation" ] []
-}
attribute_ : String -> Attribute msg
attribute_ value =
    attribute "attribute" value


{-| Delay (in milliseconds) or event name to wait on before beginning animation.

    animation [ begin 5000 ] []
-}
begin : Int -> Attribute msg
begin value =
    attribute "begin" (String.fromInt value)


{-| Direction of the animation (between from and to).
    One of alternate, alternateReverse, normal, reverse.

    animation [ direction "reverse" ] []
-}
direction : Direction -> Attribute msg
direction =
    attribute "direction" << Dir.toString


{-| Duration in (milliseconds) of the animation.

    animation [ dur 5000 ] []
-}
dur : Int -> Attribute msg
dur value =
    attribute "dur" (String.fromInt value)


{-| Easing function of the animation.

    animation [ easing "rotation" ] []
-}
easing : Easing -> Attribute msg
easing =
    attribute "easing" << Easing.toString


{-| Determines effect of animation when not actively in play.
    One of backwards, both, forwards, none.

    animation [ fill forwards ] []
-}
fill : Fill -> Attribute msg
fill =
    attribute "fill" << Fill.toString


{-| Starting value.

    animation [ from "0 120 0" ] []
-}
from : String -> Attribute msg
from =
    attribute "from"


{-| -}
fromColor : Color -> Attribute msg
fromColor = from << Color.toCssString


{-| -}
fromVec2 : Float -> Float -> Attribute msg
fromVec2 x y = from <| vec2ToString x y


{-| -}
fromVec3 : Float -> Float -> Float -> Attribute msg
fromVec3 x y z = from <| vec3ToString x y z


{-| -}
fromBool : Bool -> Attribute msg
fromBool = from << boolToString


{-| -}
fromValue : Float -> Attribute msg
fromValue = from << String.fromFloat


{-| Repeat count.

    animation [ loop 5000 ] []
-}
loop : Int -> Attribute msg
loop value =
    attribute "loop" (String.fromInt value)



{-| Loop infinitely

    animation [ loopForever ] []
-}
loopForever : Attribute msg
loopForever =
    attribute "loop" "true"


{-| Ending value. Must be specified.

    animation [ to "0 360 0" ] []
-}
to : String -> Attribute msg
to value =
    attribute "to" value

{-| -}
toColor : Color -> Attribute msg
toColor = to << Color.toCssString


{-| -}
toVec2 : Float -> Float -> Attribute msg
toVec2 x y = to <| vec2ToString x y


{-| -}
toVec3 : Float -> Float -> Float -> Attribute msg
toVec3 x y z = to <| vec3ToString x y z


{-| -}
toBool : Bool -> Attribute msg
toBool = to << boolToString


{-| -}
toValue : Float -> Attribute msg
toValue = to << String.fromFloat
