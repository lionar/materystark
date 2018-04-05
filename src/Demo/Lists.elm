module Demo.Lists exposing (..)

import Html exposing (..)
import Html.Attributes exposing (class, id)
import Material.Card exposing (card)
import Material.Elevation exposing (elevationz1)
import Material.Icon as Icon


lists : Html msg
lists =
    div [ card, elevationz1, id "lists-demo" ]
        [ h2 [ class "header" ] [ text "Text only" ]
        , textList
        , h2 [ class "header" ] [ text "Text only (dense)" ]
        , denseList
        , h2 [ class "headers" ] [ text "Graphic list" ]
        , graphicList
        , h2 [ class "headers" ] [ text "Graphic list (dense)" ]
        , graphicDenseList
        , h2 [ class "headers" ] [ text "Graphic Example - Icon with Text" ]
        , iconList
        ]


textList : Html msg
textList =
    ul [ class "list" ]
        [ li [] [ text "Single-line item" ]
        , li [] [ text "Single-line item" ]
        , li [] [ text "Single-line item" ]
        ]

denseList : Html msg
denseList =
    ul [ class "list dense" ]
        [ li [] [ text "Single-line item" ]
        , li [] [ text "Single-line item" ]
        , li [] [ text "Single-line item" ]
        ]

graphicList : Html msg
graphicList =
    ul [ class "list graphic" ]
        [ li [] [ span [] [], text "Single-line item" ]
        , li [] [ span [] [], text "Single-line item" ]
        , li [] [ span [] [], text "Single-line item" ]
        ]

graphicDenseList : Html msg
graphicDenseList =
    ul [ class "list dense graphic" ]
        [ li [] [ span [] [], text "Single-line item" ]
        , li [] [ span [] [], text "Single-line item" ]
        , li [] [ span [] [], text "Single-line item" ]
        ]

iconList : Html msg
iconList =
    ul [ class "list graphic" ]
        [ li [] [ Icon.basic "wifi", text "Wi-Fi" ]
        , li [] [ Icon.basic "bluetooth", text "Bluetooth" ]
        , li [] [ Icon.basic "data_usage", text "Data Usage" ]
        ]
