module AFrame.Variants.Fog exposing

    ( Fog
    , linear, exponential
    , toString
    )

{-| # Fog

@docs Fog

# Values

@docs linear, exponential

@docs toString
-}


{-| -}
type Fog
    = Linear
    | Exponential


{-| Linear fog grows linearly denser with distance. -}
linear : Fog
linear = Linear


{-| Exponential fog grows exponentially denser with distance. -}
exponential : Fog
exponential = Exponential


{-| -}
toString : Fog -> String
toString fog =
    case fog of
        Linear -> "linear"
        Exponential -> "exponential"
