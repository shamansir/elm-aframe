module AFrame.Events exposing (..)


type Event = Event String


animationBegin = Event "animationbegin"


animationComplete = Event "animationcomplete"


animationCompleteWithId = Event "animationcomplete__"


click = Event "click"


fusing = Event "fusing"


mouseDown = Event "mousedown"


mouseEnter = Event "mouseenter"


mouseLeave = Event "mouseleave"


trackPadChanged = Event "trackpadchanged"


trackPadDown = Event "trackpaddown"


trackPadUp = Event "trackpadup"

trackPadTouchStart = Event "trackpadtouchstart"

trackPadTouchEnd = Event "trackpadtouchend"


triggerChanged = Event "triggerchanged"


triggerDown = Event "triggerdown"


triggerUp = Event "triggerup"


deviceOrientationPermissionGranted = Event "deviceorientationpermissiongranted"


deviceOrientationPermissionRejected = Event "eviceorientationpermissionrejected"


deviceOrientationPermissionRequested = Event "deviceorientationpermissionrequested"


toString : Event -> String
toString (Event name) = name


stringify : List Event -> String
stringify = List.map toString >> String.join ","
