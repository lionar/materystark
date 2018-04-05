module Demo.Menu exposing (..)

import Html exposing (a, button, div, Html, li, nav, section, text, ul)
import Html.Attributes exposing (id)
import Html.Events exposing (onClick)
import Material.Attributes exposing (..)
import Types exposing (..)


standard : Html Msg
standard =
    div [ id "menu-demo" ]
    [ demoMenu
    , button [ raised, onClick ToggleMenu ] [ text "Menu toggle" ]
    ]


demoMenu : Html msg
demoMenu =
    nav [ menu ]
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