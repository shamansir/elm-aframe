module AFrame.Events exposing (..)


type Event = Event String


{-| Animation began. Event detail contains `name` of animation. -}
animationBegin = Event "animationbegin"


{-| Animation completed. Event detail contains `name` of animation. -}
animationComplete = Event "animationcomplete"


{-| Animation completed if animation has an ID (e.g., `animation_ "click"`). -}
animationCompleteWithId = Event "animationcomplete__"


{-| Emitted on both cursor and intersected entity if a currently intersected entity is clicked (whether by mouse or by fuse). -}
click = Event "click"


{-| Emitted on both cursor and intersected entity when fuse-based cursor starts counting down. -}
fusing = Event "fusing"


{-| Emitted on both cursor and intersected entity (if any) on `mousedown` on the canvas element. -}
mouseDown = Event "mousedown"


{-| Emitted on both cursor and intersected entity (if any) when cursor intersects with an entity. -}
mouseEnter = Event "mouseenter"


{-| Emitted on both cursor and intersected entity (if any) when cursor no longer intersects with previously intersected entity. -}
mouseLeave = Event "mouseleave"


{-| 	Emitted on both cursor and intersected entity (if any) on mouseup on the canvas element. -}
mouseUp = Event "mouseup"


{-| Trackpad changed. -}
trackPadChanged = Event "trackpadchanged"


{-| Trackpad pressed. -}
trackPadDown = Event "trackpaddown"


{-| Trackpad released. -}
trackPadUp = Event "trackpadup"


{-| Trackpad touched. -}
trackPadTouchStart = Event "trackpadtouchstart"


{-| Trackpad not touched. -}
trackPadTouchEnd = Event "trackpadtouchend"


{-| Trigger changed. -}
triggerChanged = Event "triggerchanged"


{-| Trigger pressed. -}
triggerDown = Event "triggerdown"


{-| Trigger released. -}
triggerUp = Event "triggerup"


gripDown = Event "gripdown"

gripUp= Event "gripup"


pointUp = Event "pointup"


pointDown = Event "pointdown"


thumbUp = Event "thumbup"


thumbDown = Event "thumbdown"


pointingStart = Event "pointingstart"


pointingEnd = Event "pointingend"


pistolStart = Event "pistolstart"


pistolEnd = Event "pistolend"


deviceOrientationPermissionGranted = Event "deviceorientationpermissiongranted"


deviceOrientationPermissionRejected = Event "eviceorientationpermissionrejected"


deviceOrientationPermissionRequested = Event "deviceorientationpermissionrequested"



modelLoaded = Event "model-loaded"


modelError = Event "model-error"


toString : Event -> String
toString (Event name) = name


stringify : List Event -> String
stringify = List.map toString >> String.join ","
