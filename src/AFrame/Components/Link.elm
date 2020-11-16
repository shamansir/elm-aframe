module AFrame.Components.Link exposing

    ( href, image, title
    , backgroundColor, borderColor, highlightedColor, titleColor
    , highlighted, peekMode, visualAspectEnabled
    , on
    )


{-| # Link

@docs href, image, title

# Colors

@docs backgroundColor, borderColor, highlightedColor, titleColor

# Configuration

@docs highlighted, peekMode, visualAspectEnabled

# Events

@docs on
-}


import Color exposing (Color)

import AFrame.Properties exposing (Property, property)
import AFrame.Util exposing (..)
import AFrame.EventRefs exposing (EventRef)
import AFrame.EventRefs as EventRef exposing (toString)


{-| Inner (background) color of the portal.

Default : `red`
-}
backgroundColor : Color -> Property
backgroundColor = property "backgroundColor" << Color.toCssString


{-| Border color of the portal.

Default : `white`
-}
borderColor : Color -> Property
borderColor = property "borderColor" << Color.toCssString


{-| Boolean to toggle link highlight color.

Default : `false`
-}
highlighted : Bool -> Property
highlighted = property "highlighted" << boolToString


{-| Border color when highlighted.

Default : `#24CAFF`
-}
highlightedColor : Color -> Property
highlightedColor = property "highlightedColor" << Color.toCssString


{-| Destination URL where the link points to.

Default : `''`
-}
href : String -> Property
href = property "href"


{-| 360° image used as scene preview in the portal. Can be a selector to an <img> element or a URL.

Default : `''`
-}
image : String -> Property
image = property "image"


{-| Event to listen to that triggers link traversal.

Default : `click`
-}
on : EventRef -> Property
on = property "on" << EventRef.toString


{-| Whether the 360° image is fully expanded for preview.

Default : `false`
-}
peekMode : Bool -> Property
peekMode = property "peekMode" << boolToString


{-| Text displayed on the link. The href or page URL is used if not defined.

Default : `''`
-}
title : String -> Property
title = property "title"


{-| Color of the text displayed on the link.

Default : `white`
-}
titleColor : Color -> Property
titleColor = property "titleColor" << Color.toCssString


{-| Whether to enable the default visual appearance of a portal. Set to false if we want to implement our own pattern or form of link traversal.

Default : `true`
-}
visualAspectEnabled : Bool -> Property
visualAspectEnabled = property "visualAspectEnabled" << boolToString
