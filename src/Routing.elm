module Routing exposing (..)

import Navigation exposing (Location)
import UrlParser exposing (..)


type Route
    = Typography
    | Lists
    | Elevation
    | NotFound


matchers : Parser (Route -> a) a
matchers =
    oneOf
        [ map Typography top
        , map Typography (s "typography")
        , map Lists (s "lists")
        , map Elevation (s "elevation")
        ]


parseLocation : Location -> Route
parseLocation location =
    case (parseHash matchers location) of
        Just route ->
            route

        Nothing ->
            NotFound
