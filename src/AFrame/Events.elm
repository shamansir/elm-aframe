module AFrame.Events exposing (..)


type Event = Event String


toString : Event -> String
toString (Event name) = name


stringify : List Event -> String
stringify = List.map toString >> String.join ","


{- animation -}


{-| Animation began. Event detail contains `name` of animation. -}
animationBegin = Event "animationbegin"


{-| Animation completed. Event detail contains `name` of animation. -}
animationComplete = Event "animationcomplete"


{-| Animation completed if animation has an ID (e.g., `animation_ "click"`). -}
animationCompleteWithId = Event "animationcomplete__"


{- cursor -}


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


{-| Emitted on both cursor and intersected entity (if any) on mouseup on the canvas element. -}
mouseUp = Event "mouseup"


{- daydream-controls + gearvr-controls -}


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


{- gearvr-controls -}


{-| Trigger changed. -}
triggerChanged = Event "triggerchanged"


{-| Trigger pressed. -}
triggerDown = Event "triggerdown"


{-| Trigger released. -}
triggerUp = Event "triggerup"


{- hand-controls -}


{-| The hand is closed into a fist without thumb raised. -}
gripDown = Event "gripdown"


{-| The hand is no longer closed into a fist without thumb raised. -}
gripUp= Event "gripup"


{-| The hand is touching or pressing the trigger only. -}
pointUp = Event "pointup"


{-| The hand is no longer touching or pressing the trigger only. -}
pointDown = Event "pointdown"


{-| The hand is closed into a fist with thumb raised. -}
thumbUp = Event "thumbup"


{-| The hand is no longer closed into a fist with thumb raised. -}
thumbDown = Event "thumbdown"


{-| The hand is pointing with index finger without thumb raised. -}
pointingStart = Event "pointingstart"


{-| The hand is no longer pointing without thumb raised. -}
pointingEnd = Event "pointingend"


{-| The hand is pointing with index finger and thumb raised. -}
pistolStart = Event "pistolstart"


{-| The hand is no longer pointing with thumb raised. -}
pistolEnd = Event "pistolend"


{- device-orientation-ui -}


{-| User has granted access to DeviceOrientation events -}
deviceOrientationPermissionGranted = Event "deviceorientationpermissiongranted"


{-| User or browser has denied access to DeviceOrientation events -}
deviceOrientationPermissionRejected = Event "deviceorientationpermissionrejected"


{-| Application has requested permission to access DeviceOrientation events -}
deviceOrientationPermissionRequested = Event "deviceorientationpermissionrequested"


{- gltf-model -}


{-| glTF model has been loaded into the scene. -}
modelLoaded = Event "model-loaded"


{-| glTF model could not be loaded. -}
modelError = Event "model-error"


{- material -}


{-| Texture loaded onto material. -}
materialTextureLoaded = Event "materialtextureloaded"


{-| Video data loaded and is going to play. -}
materialVideoLoadedData = Event "materialvideoloadeddata"


{-| For video textures, emitted when the video has reached its end (may not work with loop). -}
materialVideoEnded = Event "materialvideoended"


