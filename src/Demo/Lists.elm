module Demo.Lists exposing (..)

import Html exposing (..)
import Html.Attributes exposing (class, id)
import Material.Attributes exposing (..)
import Material.Icon as Icon


lists : Html msg
lists =
    div [ card, elevation 1, id "lists-demo" ]
        [ section []
            [ h2 [ class "header" ] [ text "Text only" ]
            , textList
            ]
        , section []
            [ h2 [ class "header" ] [ text "Text only (dense)" ]
            , denseList
            ]
        , section []
            [ h2 [ class "headers" ] [ text "Graphic list" ]
            , graphicList
            ]
        , section []
            [ h2 [ class "headers" ] [ text "Graphic list (dense)" ]
            , graphicDenseList
            ]
        , section []
            [ h2 [ class "headers" ] [ text "Graphic Example - Icon with Text" ]
            , iconList
            ]
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
