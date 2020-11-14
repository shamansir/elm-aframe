module AFrame.Easing exposing (..)


type Type
    = Quad
    | Cubic
    | Quart
    | Quint
    | Sine
    | Expo
    | Circ
    | Back
    | Elastic


type Direction
    = In
    | Out
    | InOut


type Easing
    = Linear
    | Directed Direction Type
    | Custom String


linear : Easing
linear = Linear


custom : String -> Easing
custom = Custom


{- In -}

easeInQuad : Easing
easeInQuad = Directed In Quad


easeInCubic : Easing
easeInCubic = Directed In Cubic


easeInQuart : Easing
easeInQuart = Directed In Quart


easeInQuint : Easing
easeInQuint = Directed In Quint


easeInSine : Easing
easeInSine = Directed In Sine


easeInExpo : Easing
easeInExpo = Directed In Expo


easeInCirc : Easing
easeInCirc = Directed In Circ


easeInBack : Easing
easeInBack = Directed In Back


easeInElastic : Easing
easeInElastic = Directed In Elastic


{- Out -}


easeOutQuad : Easing
easeOutQuad = Directed Out Quad


easeOutCubic : Easing
easeOutCubic = Directed Out Cubic


easeOutQuart : Easing
easeOutQuart = Directed Out Quart


easeOutQuint : Easing
easeOutQuint = Directed Out Quint


easeOutSine : Easing
easeOutSine = Directed Out Sine


easeOutExpo : Easing
easeOutExpo = Directed Out Expo


easeOutCirc : Easing
easeOutCirc = Directed Out Circ


easeOutBack : Easing
easeOutBack = Directed Out Back


easeOutElastic : Easing
easeOutElastic = Directed Out Elastic


{- InOut -}


easeInOutQuad : Easing
easeInOutQuad = Directed InOut Quad


easeInOutCubic : Easing
easeInOutCubic = Directed InOut Cubic


easeInOutQuart : Easing
easeInOutQuart = Directed InOut Quart


easeInOutQuint : Easing
easeInOutQuint = Directed InOut Quint


easeInOutSine : Easing
easeInOutSine = Directed InOut Sine


easeInOutExpo : Easing
easeInOutExpo = Directed InOut Expo


easeInOutCirc : Easing
easeInOutCirc = Directed InOut Circ


easeInOutBack : Easing
easeInOutBack = Directed InOut Back


easeInOutElastic : Easing
easeInOutElastic = Directed InOut Elastic


toString : Easing -> String
toString easing =
    case easing of
        Linear -> "linear"
        Directed dir type_ ->
            "ease"
            ++ (case dir of
                    In -> "In"
                    Out -> "Out"
                    InOut -> "InOut")
            ++ (case type_ of
                    Quad -> "Quad"
                    Cubic -> "Cubic"
                    Quart -> "Quart"
                    Quint -> "Quint"
                    Sine -> "Sine"
                    Expo -> "Expo"
                    Circ -> "Circ"
                    Back -> "Back"
                    Elastic -> "Elastic"
                )
        Custom string -> string
