module AFrame.Properties exposing

    ( Property, property
    , toString
    )


{-| # Property

Property of a component. Hardly everything under `AFrame.Components` are just properties so that theu may be passed to components as a list and form an `Attribute` in the end.

@docs Property, property

# Conversion

@docs toString

-}


import Html exposing (Attribute)
import Html.Attributes exposing (attribute)


{-| Property is a tuple of its name/ID and current stringified value -}
type alias Property = ( String, String )


{-| Create custom property. -}
property : String -> String -> Property
property = Tuple.pair


{-| Encode a list of properties into the `aframe`-friendly string. -}
toString : List Property -> String
toString =
    let
        propToString ( name, value ) = name ++ ": " ++ value
    in
        String.join "; "
        << List.map propToString









