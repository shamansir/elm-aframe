module AFrame.Components.Cursor exposing

    ( fuse, fuseTimeout, rayOrigin
    , downEvents, upEvents
    , mouseCursorStylesEnabled
    )


{-| # Cursor

@docs fuse, fuseTimeout, rayOrigin

# Events

@docs downEvents, upEvents

# Style

@docs mouseCursorStylesEnabled
-}


import AFrame.Properties exposing (Property, property)
import AFrame.EventRefs exposing (EventRef)
import AFrame.EventRefs as EventRefs exposing (stringify)
import AFrame.Util exposing (..)


{-| Array of additional events on the entity to listen to for triggering mousedown (e.g., triggerdown for vive-controls).

Default : `[]`
-}
downEvents : List EventRef -> Property
downEvents = property "downEvents" << EventRefs.stringify


{-| Whether cursor is fuse-based.

Default : `false` on desktop, `true` on mobile
-}
fuse : Bool -> Property
fuse = property "fuse" << boolToString


{-| How long to wait (in milliseconds) before triggering a fuse-based click event.

Default : `1500`
-}
fuseTimeout : Int -> Property
fuseTimeout = property "fuseTimeout" << String.fromInt


{-| Whether to show pointer cursor in `rayOrigin: mouse` mode when hovering over entity.
-}
mouseCursorStylesEnabled : Bool -> Property
mouseCursorStylesEnabled = property "mouseCursorStylesEnabled" << boolToString


{-| Where the intersection ray is cast from (i.e.,`entity` or `mouse`). `rayOrigin: mouse` is extremely useful for VR development on a mouse and keyboard.

Default: `entity`
-}
rayOrigin : String -> Property
rayOrigin = property "rayOrigin"


{-| Array of additional events on the entity to listen to for triggering mouseup (e.g., trackpadup for daydream-controls).

Default : `[]`
-}
upEvents : List EventRef -> Property
upEvents = property "upEvents" << EventRefs.stringify

