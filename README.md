This module brings declarative WebVR framework [A-Frame](https://aframe.io/) to Elm.

:warning: Highly experimental, since it depends on external JavaScript library.

Written by [`@halfzebra`](https://github.com/halfzebra).

Updated to Elm 0.19 and the latest A-Frame (1.0.4) by [`@shamansir`](https://github.com/shamansir).

Expanded with `Components` and `Property` concepts by [`@shamansir`](https://github.com/shamansir). Moved here all the exising components/properties and furnished them with types as well. Event-handling is driven by decoders for now, but most of the existing events are present in `EventRefs` module. Also left the places for future extension where possible.

There is a huge amount of code, mostly driven by (but not only) very concentrated copy-pasting. Still human mind can miss some things in such amounts. For such cases there is always a fallback exists here whenever possible. But anyway for future good please report errors if you find ones, or fork-and-fix if they become stale.

## Tutorials

[Simple VR with Elm and A-Frame](https://github.com/tilmans/elm-aframe-example) by [@tilmans](https://github.com/tilmans)

## Running examples

    npm install -g elm-live
    npm run example:elm-logo
    npm run example:HelloWorld
    npm run example:Logo
    npm run example:LogoPhysics


