module AFrame.EventRefs exposing

    ( EventRef, ref, toString, stringify
    , animationBegin, animationComplete, animationCompleteWithId
    , deviceOrientationPermissionGranted, deviceOrientationPermissionRejected, deviceOrientationPermissionRequested
    , modelLoaded, modelError, materialTextureLoaded, materialVideoLoadedData, materialVideoEnded
    , raycasterIntersected, raycasterIntersectedCleared, raycasterIntersection, raycasterIntersectionCleared
    , soundLoaded, soundEnded, textFontSet
    , click, fusing, mouseDown, mouseEnter, mouseLeave, mouseUp
    , trackPadDown, trackPadUp, trackPadTouchStart, trackPadTouchEnd, trackPadChanged, trackPadMoved
    , triggerDown, triggerUp, triggerTouchStart, triggerTouchEnd, triggerChanged--, triggerMoved
    , thumbstickDown, thumbstickUp, thumbstickTouchStart, thumbstickTouchEnd, thumbstickChanged, thumbstickMoved
    , buttonDown, buttonUp, buttonChanged, touchStart, touchEnd
    , aButtonDown, aButtonUp, aButtonTouchStart, aButtonTouchEnd, aButtonChanged
    , bButtonDown, bButtonUp, bButtonTouchStart, bButtonTouchEnd, bButtonChanged
    , xButtonDown, xButtonUp, xButtonTouchStart, xButtonTouchEnd, xButtonChanged
    , yButtonDown, yButtonUp, yButtonTouchStart, yButtonTouchEnd, yButtonChanged
    , surfaceDown, surfaceUp, surfaceTouchStart, surfaceTouchEnd, surfaceChanged
    , gripDown, gripUp, gripTouchStart, gripTouchEnd, gripChanged
    , menuDown, menuUp, menuChanged, systemDown, systemUp, systemChanged
    , pointUp, pointDown, thumbUp, thumbDown, pointingStart, pointingEnd, pistolStart, pistolEnd
    , axisMove, controllerConnected, controllerDisconnected, controllerModelReady
    )

{-| # Event Reference

Use `EventRef`s to reference the events on animation etc.

To actually listen for events and produce messages in response, use `on : EventRef -> Decoder msg -> Attribute msg` from `AFrame.Events`.

@docs EventRef, ref

# Animation

@docs animationBegin, animationComplete, animationCompleteWithId

# Model

@docs modelLoaded, modelError

# Material

@docs materialTextureLoaded, materialVideoLoadedData, materialVideoEnded

# Raycaster

@docs raycasterIntersected, raycasterIntersectedCleared, raycasterIntersection, raycasterIntersectionCleared

# Text

@docs textFontSet

# Sound

@docs soundLoaded, soundEnded

# Device Orientation

@docs deviceOrientationPermissionGranted, deviceOrientationPermissionRejected, deviceOrientationPermissionRequested

# Controls : Cursor & Mouse

@docs click, fusing, mouseDown, mouseEnter, mouseLeave, mouseUp

# Controls : Generic Button

@docs buttonDown, buttonUp, buttonChanged

# Controls : Generic Touch

@docs touchStart, touchEnd

# Controls : Trackpad

@docs trackPadDown, trackPadUp, trackPadTouchStart, trackPadTouchEnd, trackPadChanged, trackPadMoved

# Controls : Trigger

@docs triggerDown, triggerUp, triggerTouchStart, triggerTouchEnd, triggerChanged

# Controls : Thumbstick

@docs thumbstickDown, thumbstickUp, thumbstickTouchStart, thumbstickTouchEnd, thumbstickChanged, thumbstickMoved

# Controls : Grip

@docs gripDown, gripUp, gripTouchStart, gripTouchEnd, gripChanged

# Controls : A Button

@docs aButtonDown, aButtonUp, aButtonTouchStart, aButtonTouchEnd, aButtonChanged

# Controls : B Button

@docs bButtonDown, bButtonUp, bButtonTouchStart, bButtonTouchEnd, bButtonChanged

# Controls : X Button

@docs xButtonDown, xButtonUp, xButtonTouchStart, xButtonTouchEnd, xButtonChanged

# Controls : Y Button

@docs yButtonDown, yButtonUp, yButtonTouchStart, yButtonTouchEnd, yButtonChanged

# Controls : Surface

@docs surfaceDown, surfaceUp, surfaceTouchStart, surfaceTouchEnd, surfaceChanged

# Controls : Menu

@docs menuDown, menuUp, menuChanged

# Controls : System

@docs systemDown, systemUp, systemChanged

# Controls : Fingers

@docs pointUp, pointDown, thumbUp, thumbDown, pointingStart, pointingEnd, pistolStart, pistolEnd

# Controls : Axis

@docs axisMove

# Controller

@docs controllerConnected, controllerDisconnected, controllerModelReady

# Stringify

@docs toString, stringify

-}


{-| -}
type EventRef = EventRef String


{-| -}
toString : EventRef -> String
toString (EventRef id) = id


{-| -}
stringify : List EventRef -> String
stringify = List.map toString >> String.join ","


{-| Constructor for custom events' references. -}
ref : String -> EventRef
ref = EventRef


{- animation -}


{-| Animation began. Event detail contains `name` of animation. -}
animationBegin : EventRef
animationBegin = EventRef "animationbegin"


{-| Animation completed. Event detail contains `name` of animation. -}
animationComplete : EventRef
animationComplete = EventRef "animationcomplete"


{-| Animation completed if animation has an ID (e.g., `animation_ "click"`). -}
animationCompleteWithId : EventRef
animationCompleteWithId = EventRef "animationcomplete__"


{- cursor -}


{-| Emitted on both cursor and intersected entity if a currently intersected entity is clicked (whether by mouse or by fuse). -}
click : EventRef
click = EventRef "click"


{-| Emitted on both cursor and intersected entity when fuse-based cursor starts counting down. -}
fusing : EventRef
fusing = EventRef "fusing"


{-| Emitted on both cursor and intersected entity (if any) on `mousedown` on the canvas element. -}
mouseDown : EventRef
mouseDown = EventRef "mousedown"


{-| Emitted on both cursor and intersected entity (if any) when cursor intersects with an entity. -}
mouseEnter : EventRef
mouseEnter = EventRef "mouseenter"


{-| Emitted on both cursor and intersected entity (if any) when cursor no longer intersects with previously intersected entity. -}
mouseLeave : EventRef
mouseLeave = EventRef "mouseleave"


{-| Emitted on both cursor and intersected entity (if any) on mouseup on the canvas element. -}
mouseUp : EventRef
mouseUp = EventRef "mouseup"


type ControlSubject
    = Trackpad
    | Trigger
    | Thumbstick
    | Grip
    | Button -- any button
    | AButton
    | BButton
    | XButton
    | YButton
    | Surface
    | Menu
    | System


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
        Button -> "button"
        AButton -> "abutton"
        BButton -> "bbutton"
        XButton -> "xbutton"
        YButton -> "ybutton"
        Surface -> "surface"
        Menu -> "menu"
        System -> "system"
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
trackPadDown : EventRef
trackPadDown = control Trackpad Down


{-| -}
trackPadUp : EventRef
trackPadUp = control Trackpad Up


{-| -}
trackPadTouchStart : EventRef
trackPadTouchStart = control Trackpad TouchStart


{-| -}
trackPadTouchEnd : EventRef
trackPadTouchEnd = control Trackpad TouchEnd


{-| -}
trackPadChanged : EventRef
trackPadChanged = control Trackpad Changed


{-| -}
trackPadMoved : EventRef
trackPadMoved = control Trackpad Moved


{-| -}
triggerDown : EventRef
triggerDown = control Trigger Down


{-| -}
triggerUp : EventRef
triggerUp = control Trigger Up


{-| -}
triggerTouchStart : EventRef
triggerTouchStart = control Trigger TouchStart


{-| -}
triggerTouchEnd : EventRef
triggerTouchEnd = control Trigger TouchEnd


{-| -}
triggerChanged : EventRef
triggerChanged = control Trigger Changed


{-| -}
thumbstickDown : EventRef
thumbstickDown = control Thumbstick Down


{-| -}
thumbstickUp : EventRef
thumbstickUp = control Thumbstick Up


{-| -}
thumbstickTouchStart : EventRef
thumbstickTouchStart = control Thumbstick TouchStart


{-| -}
thumbstickTouchEnd : EventRef
thumbstickTouchEnd = control Thumbstick TouchEnd


{-| -}
thumbstickChanged : EventRef
thumbstickChanged = control Thumbstick Changed


{-| -}
thumbstickMoved : EventRef
thumbstickMoved = control Thumbstick Moved


{-| -}
aButtonDown : EventRef
aButtonDown = control AButton Down


{-| -}
aButtonUp : EventRef
aButtonUp = control AButton Up


{-| -}
aButtonTouchStart : EventRef
aButtonTouchStart = control AButton TouchStart


{-| -}
aButtonTouchEnd : EventRef
aButtonTouchEnd = control AButton TouchEnd


{-| -}
aButtonChanged : EventRef
aButtonChanged = control AButton Changed


{-| -}
bButtonDown : EventRef
bButtonDown = control BButton Down


{-| -}
bButtonUp : EventRef
bButtonUp = control BButton Up


{-| -}
bButtonTouchStart : EventRef
bButtonTouchStart = control BButton TouchStart


{-| -}
bButtonTouchEnd : EventRef
bButtonTouchEnd = control BButton TouchEnd


{-| -}
bButtonChanged : EventRef
bButtonChanged = control BButton Changed


{-| -}
xButtonDown : EventRef
xButtonDown = control XButton Down


{-| -}
xButtonUp : EventRef
xButtonUp = control XButton Up


{-| -}
xButtonTouchStart : EventRef
xButtonTouchStart = control XButton TouchStart


{-| -}
xButtonTouchEnd : EventRef
xButtonTouchEnd = control XButton TouchEnd


{-| -}
xButtonChanged : EventRef
xButtonChanged = control XButton Changed


{-| -}
yButtonDown : EventRef
yButtonDown = control YButton Down


{-| -}
yButtonUp : EventRef
yButtonUp = control YButton Up


{-| -}
yButtonTouchStart : EventRef
yButtonTouchStart = control YButton TouchStart


{-| -}
yButtonTouchEnd : EventRef
yButtonTouchEnd = control YButton TouchEnd


{-| -}
yButtonChanged : EventRef
yButtonChanged = control YButton Changed


{-| -}
surfaceDown : EventRef
surfaceDown = control Surface Down


{-| -}
surfaceUp : EventRef
surfaceUp = control Surface Up


{-| -}
surfaceTouchStart : EventRef
surfaceTouchStart = control Surface TouchStart


{-| -}
surfaceTouchEnd : EventRef
surfaceTouchEnd = control Surface TouchEnd


{-| -}
surfaceChanged : EventRef
surfaceChanged = control Surface Changed


{- hand-controls -}


{-| The hand is closed into a fist without thumb raised. -}
gripDown : EventRef
gripDown = control Grip Down


{-| The hand is no longer closed into a fist without thumb raised. -}
gripUp : EventRef
gripUp = control Grip Up


{-| -}
gripTouchStart : EventRef
gripTouchStart = control Grip TouchStart


{-| -}
gripTouchEnd : EventRef
gripTouchEnd = control Grip TouchEnd


{-| -}
gripChanged : EventRef
gripChanged = control Grip Changed


{-| The hand is touching or pressing the trigger only. -}
pointUp : EventRef
pointUp = EventRef "pointup"


{-| The hand is no longer touching or pressing the trigger only. -}
pointDown : EventRef
pointDown = EventRef "pointdown"


{-| The hand is closed into a fist with thumb raised. -}
thumbUp : EventRef
thumbUp = EventRef "thumbup"


{-| The hand is no longer closed into a fist with thumb raised. -}
thumbDown : EventRef
thumbDown = EventRef "thumbdown"


{-| The hand is pointing with index finger without thumb raised. -}
pointingStart : EventRef
pointingStart = EventRef "pointingstart"


{-| The hand is no longer pointing without thumb raised. -}
pointingEnd : EventRef
pointingEnd = EventRef "pointingend"


{-| The hand is pointing with index finger and thumb raised. -}
pistolStart : EventRef
pistolStart = EventRef "pistolstart"


{-| The hand is no longer pointing with thumb raised. -}
pistolEnd : EventRef
pistolEnd = EventRef "pistolend"


{- tracked-controls -}


{-| Axis changed (e.g., for thumbstick, touchpad). Contains `axis` and `axesChanged` in the event detail. `axis` is an array of values from `-1.0` (left, down) to `1.0` (right, up). -}
axisMove : EventRef
axisMove = EventRef "axismove"


{-| Controller disconnected. -}
controllerDisconnected : EventRef
controllerDisconnected = EventRef "controllerdisconnected"


{-| Controller connected and set up. -}
controllerConnected : EventRef
controllerConnected = EventRef "controllerconnected"


{-| -}
buttonDown : EventRef
buttonDown = control Button Down


{-| -}
buttonUp : EventRef
buttonUp = control Button Up


{-| Any touch or press of a button fires this. -}
buttonChanged : EventRef
buttonChanged = control Button Changed


{-| Touch sensitive button touched. -}
touchStart : EventRef
touchStart = EventRef "touchstart"


{-| Touch sensitive button released. -}
touchEnd : EventRef
touchEnd = EventRef "touchend"


{- vive-controls -}


{-| -}
menuDown : EventRef
menuDown = control Menu Down


{-| -}
menuUp : EventRef
menuUp = control Menu Up


{-| -}
menuChanged : EventRef
menuChanged = control Menu Changed


{-| -}
systemDown : EventRef
systemDown = control System Down


{-| -}
systemUp : EventRef
systemUp = control System Up


{-| -}
systemChanged : EventRef
systemChanged = control System Changed


{-| The model file is loaded and completed parsing. -}
controllerModelReady : EventRef
controllerModelReady = EventRef "controllermodelready"



{- device-orientation-ui -}


{-| User has granted access to DeviceOrientation events -}
deviceOrientationPermissionGranted : EventRef
deviceOrientationPermissionGranted = EventRef "deviceorientationpermissiongranted"


{-| User or browser has denied access to DeviceOrientation events -}
deviceOrientationPermissionRejected : EventRef
deviceOrientationPermissionRejected = EventRef "deviceorientationpermissionrejected"


{-| Application has requested permission to access DeviceOrientation events -}
deviceOrientationPermissionRequested : EventRef
deviceOrientationPermissionRequested = EventRef "deviceorientationpermissionrequested"


{- gltf-model, obj-model -}


{-| glTF model has been loaded into the scene. -}
modelLoaded : EventRef
modelLoaded = EventRef "model-loaded"


{-| glTF model could not be loaded. -}
modelError : EventRef
modelError = EventRef "model-error"


{- material -}


{-| Texture loaded onto material. -}
materialTextureLoaded : EventRef
materialTextureLoaded = EventRef "materialtextureloaded"


{-| Video data loaded and is going to play. -}
materialVideoLoadedData : EventRef
materialVideoLoadedData = EventRef "materialvideoloadeddata"


{-| For video textures, emitted when the video has reached its end (may not work with loop). -}
materialVideoEnded : EventRef
materialVideoEnded = EventRef "materialvideoended"


{- raycaster -}

{-| Emitted on the intersected entity. Entity is intersecting with a raycaster. Event detail will contain `el`, the raycasting entity, and `intersection`, and `.getIntersection `(el) function which can be used to obtain current intersection data. -}
raycasterIntersected : EventRef
raycasterIntersected = EventRef "raycaster-intersected"


{-| Emitted on the intersected entity. Entity is no longer intersecting with a raycaster. Event detail will contain `el`, the raycasting entity. -}
raycasterIntersectedCleared : EventRef
raycasterIntersectedCleared = EventRef "raycaster-intersected-cleared"


{-| Emitted on the raycasting entity. Raycaster is intersecting with one or more entities. Event detail will contain `els`, an array with the intersected entities, and `intersections`, and `.getIntersection (el)` function which can be used to obtain current intersection data. -}
raycasterIntersection : EventRef
raycasterIntersection = EventRef "raycaster-intersection"


{-| Emitted on the raycasting entity. Raycaster is no longer intersecting with one or more entities. Event detail will contain `clearedEls`, an array with the formerly intersected entities. -}
raycasterIntersectionCleared : EventRef
raycasterIntersectionCleared = EventRef "raycaster-intersection-cleared"


{- sound -}

{-| Triggered when sound file is loaded. Event detail will contain the sound’s `name` and `id`. -}
soundLoaded : EventRef
soundLoaded = EventRef "sound-loaded"


{-| Triggered when sound finishes playing. Event detail will contain the sound’s `name` and `id`. -}
soundEnded : EventRef
soundEnded = EventRef "sound-ended"


{- text -}

{-| Emitted when the font source has been loaded. -}
textFontSet : EventRef
textFontSet = EventRef "textfontset"
