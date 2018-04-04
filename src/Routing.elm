module Routing exposing (..)

import Navigation exposing (Location)
import UrlParser exposing (..)


type Route
    = Typography
    | Lists
    | Elevation
    | Buttons
    | Checkbox
    | NotFound


matchers : Parser (Route -> a) a
matchers =
    oneOf
        [ map Typography top
        , map Typography (s "typography")
        , map Lists (s "lists")
        , map Elevation (s "elevation")
        , map Buttons (s "buttons")
        , map Checkbox (s "checkbox")
        ]


parseLocation : Location -> Route
parseLocation location =
    case (parseHash matchers location) of
        Just route ->
            route

        Nothing ->
            NotFound
