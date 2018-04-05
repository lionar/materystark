module Material.Button exposing (..)

import Html exposing (button, Html, text)
import Html.Attributes exposing (class)
import Material.Icon exposing (icon)


fab : List (Html.Attribute msg) -> String -> Html msg
fab attributes symbol =
    button (List.append [ class "fab" ] attributes ) [ icon symbol ]


iconbutton : List (Html.Attribute msg) -> String -> Html msg
iconbutton attributes symbol =
    button (List.append [ class "icon" ] attributes)
    [ icon symbol
    ]
