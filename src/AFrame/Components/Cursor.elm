module AFrame.Components.Cursor exposing (..)


import AFrame.Components.Properties exposing (Property, property)
import AFrame.Events exposing (Event)
import AFrame.Events as Events exposing (stringify)
import AFrame.Util exposing (..)


{-| Array of additional events on the entity to listen to for triggering mousedown (e.g., triggerdown for vive-controls).

Default : `[]`
-}
downEvents : List Event -> Property
downEvents = property "downEvents" << Events.stringify


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
upEvents : List Event -> Property
upEvents = property "upEvents" << Events.stringify

