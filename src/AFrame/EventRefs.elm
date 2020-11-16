module AFrame.EventRefs exposing (..)


type EventRef = EventRef String


toString : EventRef -> String
toString (EventRef id) = id


stringify : List EventRef -> String
stringify = List.map toString >> String.join ","


{-| Constructor for custom events. -}
ref : String -> EventRef
ref = EventRef


{- animation -}


{-| Animation began. Event detail contains `name` of animation. -}
animationBegin = EventRef "animationbegin"


{-| Animation completed. Event detail contains `name` of animation. -}
animationComplete = EventRef "animationcomplete"


{-| Animation completed if animation has an ID (e.g., `animation_ "click"`). -}
animationCompleteWithId = EventRef "animationcomplete__"


{- cursor -}


{-| Emitted on both cursor and intersected entity if a currently intersected entity is clicked (whether by mouse or by fuse). -}
click = EventRef "click"


{-| Emitted on both cursor and intersected entity when fuse-based cursor starts counting down. -}
fusing = EventRef "fusing"


{-| Emitted on both cursor and intersected entity (if any) on `mousedown` on the canvas element. -}
mouseDown = EventRef "mousedown"


{-| Emitted on both cursor and intersected entity (if any) when cursor intersects with an entity. -}
mouseEnter = EventRef "mouseenter"


{-| Emitted on both cursor and intersected entity (if any) when cursor no longer intersects with previously intersected entity. -}
mouseLeave = EventRef "mouseleave"


{-| Emitted on both cursor and intersected entity (if any) on mouseup on the canvas element. -}
mouseUp = EventRef "mouseup"


type ControlSubject
    = Trackpad
    | Trigger
    | Thumbstick
    | Grip
    | AButton
    | BButton
    | XButton
    | YButton
    | Surface



type ControlAction
    = Down
    | Up
    | Changed
    | TouchEnd
    | TouchStart
    | Moved



control : ControlSubject -> ControlAction -> EventRef
control subj action =
    EventRef
    <| (case subj of
        Trackpad -> "trackpad"
        Trigger -> "trigger"
        Thumbstick -> "thumbstick"
        Grip -> "grip"
        AButton -> "abutton"
        BButton -> "bbutton"
        XButton -> "xbutton"
        YButton -> "ybutton"
        Surface -> "surface"
    )
    ++ (case action of
        Down -> "down"
        Up -> "up"
        Changed -> "changed"
        TouchStart -> "touchstart"
        TouchEnd -> "touchend"
        Moved -> "moved"
    )


{-| -}
trackPadDown = control Trackpad Down


{-| -}
trackPadUp = control Trackpad Up


{-| -}
trackPadTouchStart = control Trackpad TouchStart


{-| -}
trackPadTouchEnd = control Trackpad TouchEnd


{-| -}
trackPadChanged = control Trackpad Changed


{-| -}
trackPadMoved = control Trackpad Moved


{-| -}
triggerDown = control Trigger Down


{-| -}
triggerUp = control Trigger Up


{-| -}
triggerTouchStart = control Trigger TouchStart


{-| -}
triggerTouchEnd = control Trigger TouchEnd


{-| -}
triggerChanged = control Trigger Changed


{-| -}
thumbstickDown = control Thumbstick Down


{-| -}
thumbstickUp = control Thumbstick Up


{-| -}
thumbstickTouchStart = control Thumbstick TouchStart


{-| -}
thumbstickTouchEnd = control Thumbstick TouchEnd


{-| -}
thumbstickChanged = control Thumbstick Changed


{-| -}
aButtonDown = control AButton Down


{-| -}
aButtonUp = control AButton Up


{-| -}
aButtonTouchStart = control AButton TouchStart


{-| -}
aButtonTouchEnd = control AButton TouchEnd


{-| -}
aButtonChanged = control AButton Changed


{-| -}
bButtonDown = control BButton Down


{-| -}
bButtonUp = control BButton Up


{-| -}
bButtonTouchStart = control BButton TouchStart


{-| -}
bButtonTouchEnd = control BButton TouchEnd


{-| -}
bButtonChanged = control BButton Changed


{-| -}
xButtonDown = control XButton Down


{-| -}
xButtonUp = control XButton Up


{-| -}
xButtonTouchStart = control XButton TouchStart


{-| -}
xButtonTouchEnd = control XButton TouchEnd


{-| -}
xButtonChanged = control XButton Changed


{-| -}
yButtonDown = control YButton Down


{-| -}
yButtonUp = control YButton Up


{-| -}
yButtonTouchStart = control YButton TouchStart


{-| -}
yButtonTouchEnd = control YButton TouchEnd


{-| -}
yButtonChanged = control YButton Changed


{-| -}
surfaceDown = control Surface Down


{-| -}
surfaceUp = control Surface Up


{-| -}
surfaceTouchStart = control Surface TouchStart


{-| -}
surfaceTouchEnd = control Surface TouchEnd


{-| -}
surfaceChanged = control Surface Changed




{- hand-controls -}


{-| The hand is closed into a fist without thumb raised. -}
gripDown = control Grip Down


{-| The hand is no longer closed into a fist without thumb raised. -}
gripUp = control Grip Up


{-| -}
gripTouchStart = control Grip TouchStart


{-| -}
gripTouchEnd = control Grip TouchEnd


{-| -}
gripChanged = control Grip Changed


{-| The hand is touching or pressing the trigger only. -}
pointUp = EventRef "pointup"


{-| The hand is no longer touching or pressing the trigger only. -}
pointDown = EventRef "pointdown"


{-| The hand is closed into a fist with thumb raised. -}
thumbUp = EventRef "thumbup"


{-| The hand is no longer closed into a fist with thumb raised. -}
thumbDown = EventRef "thumbdown"


{-| The hand is pointing with index finger without thumb raised. -}
pointingStart = EventRef "pointingstart"


{-| The hand is no longer pointing without thumb raised. -}
pointingEnd = EventRef "pointingend"


{-| The hand is pointing with index finger and thumb raised. -}
pistolStart = EventRef "pistolstart"


{-| The hand is no longer pointing with thumb raised. -}
pistolEnd = EventRef "pistolend"


{- device-orientation-ui -}


{-| User has granted access to DeviceOrientation events -}
deviceOrientationPermissionGranted = EventRef "deviceorientationpermissiongranted"


{-| User or browser has denied access to DeviceOrientation events -}
deviceOrientationPermissionRejected = EventRef "deviceorientationpermissionrejected"


{-| Application has requested permission to access DeviceOrientation events -}
deviceOrientationPermissionRequested = EventRef "deviceorientationpermissionrequested"


{- gltf-model, obj-model -}


{-| glTF model has been loaded into the scene. -}
modelLoaded = EventRef "model-loaded"


{-| glTF model could not be loaded. -}
modelError = EventRef "model-error"


{- material -}


{-| Texture loaded onto material. -}
materialTextureLoaded = EventRef "materialtextureloaded"


{-| Video data loaded and is going to play. -}
materialVideoLoadedData = EventRef "materialvideoloadeddata"


{-| For video textures, emitted when the video has reached its end (may not work with loop). -}
materialVideoEnded = EventRef "materialvideoended"


{- raycaster -}

{-| Emitted on the intersected entity. Entity is intersecting with a raycaster. Event detail will contain `el`, the raycasting entity, and `intersection`, and `.getIntersection `(el) function which can be used to obtain current intersection data. -}
raycasterIntersected = EventRef "raycaster-intersected"


{-| Emitted on the intersected entity. Entity is no longer intersecting with a raycaster. Event detail will contain `el`, the raycasting entity. -}
raycasterIntersectedCleared = EventRef "raycaster-intersected-cleared"


{-| Emitted on the raycasting entity. Raycaster is intersecting with one or more entities. Event detail will contain `els`, an array with the intersected entities, and `intersections`, and `.getIntersection (el)` function which can be used to obtain current intersection data. -}
raycasterIntersection = EventRef "raycaster-intersection"


{-| Emitted on the raycasting entity. Raycaster is no longer intersecting with one or more entities. Event detail will contain `clearedEls`, an array with the formerly intersected entities. -}
raycasterIntersectionCleared = EventRef "raycaster-intersection-cleared"


{- sound -}

{-| Triggered when sound file is loaded. Event detail will contain the sound’s `name` and `id`. -}
soundLoaded = EventRef "sound-loaded"


{-| Triggered when sound finishes playing. Event detail will contain the sound’s `name` and `id`. -}
soundEnded = EventRef "sound-ended"


{- text -}

{-| Emitted when the font source has been loaded. -}
textFontSet = EventRef "textfontset"
