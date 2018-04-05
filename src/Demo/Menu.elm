module Demo.Menu exposing (..)

import Html exposing (a, div, Html, li, nav, section, text, ul)
import Html.Attributes exposing (id)
import Material.Attributes exposing (..)


standard : Html msg
standard =
    div [ id "menu-demo" ]
    [ nav [ menu ]
        [ ul [ list ]
            [ li [] [ a [] [ text "Back" ] ]
            , li [] [ a [] [ text "Forward" ] ]
            , li [] [ a [] [ text "Reload" ] ]
            , section []
                [ li [] [ a [] [ text "Help & Feedback" ] ]
                , li [] [ a [] [ text "Settings" ] ]
                ]
            ]
        ]
    ]
