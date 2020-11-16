module AFrame.Components.Sound exposing

    ( src
    , volume, autoplay, loop
    , positional, distanceModel, refDistance, maxDistance, rolloffFactor
    , poolSize
    , on
    )

{-| # Sound

@docs src

# Configuration

@docs volume, autoplay, loop

# Distance & Distribution

@docs positional, distanceModel, refDistance, maxDistance, rolloffFactor

# Pool

@docs poolSize

# Events

@docs on
-}


import AFrame.Properties exposing (Property, property)

import AFrame.Util exposing (..)
import AFrame.Variants.DistanceModel exposing (DistanceModel)
import AFrame.Variants.DistanceModel as DistanceModel exposing (toString)
import AFrame.EventRefs exposing (EventRef)
import AFrame.EventRefs as EventRef exposing (toString)


{-| Whether to automatically play sound once set.

Default : `false`
-}
autoplay : Bool -> Property
autoplay = property "autoplay" << boolToString


{-| `linear`, `inverse`, or `exponential`

Default : `inverse`
-}
distanceModel : DistanceModel -> Property
distanceModel = property "distanceModel" << DistanceModel.toString


{-| Whether to loop the sound once the sound finishes playing.

Default : `false`
-}
loop : Bool -> Property
loop = property "loop" << boolToString


{-| Maximum distance between the audio source and the listener, after which the volume is not reduced any further.

Default : `10000`
-}
maxDistance : Float -> Property
maxDistance = property "maxDistance" << String.fromFloat


{-| An event for the entity to listen to before playing sound.

Default : `null`
-}
on : EventRef -> Property
on = property "on" << EventRef.toString


{-| Numbers of simultaneous instances of this sound that can be playing at the same time.

Default : `1`
-}
poolSize : Int -> Property
poolSize = property "poolSize" << String.fromInt


{-| Whether or not the audio is positional (movable).

Default : `true`
-}
positional : Bool -> Property
positional = property "positional" << boolToString


{-| Reference distance for reducing volume as the audio source moves further from the listener.

Default : `1`
-}
refDistance : Float -> Property
refDistance = property "refDistance" << String.fromFloat


{-| Describes how quickly the volume is reduced as the source moves away from the listener.

Default : `1`
-}
rolloffFactor : Float -> Property
rolloffFactor = property "rolloffFactor" << String.fromFloat


{-| Selector to an asset `<audio>` or `url()`-enclosed path to sound file.

Default : _None_
-}
src : String -> Property
src = property "src"


{-| How loud to play the sound.

Default : `1`
-}
volume : Float -> Property
volume = property "volume" << String.fromFloat
