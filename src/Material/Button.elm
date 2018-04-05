module Material.Button exposing (..)

import Html exposing (button, Html, text)
import Html.Attributes exposing (class)
import Material.Icon as Icon


fab :  List (Html.Attribute msg) -> String -> Html msg
fab attributes icon =
    button (List.append [ class "fab" ] attributes ) [ Icon.basic icon ]


iconbutton : List (Html.Attribute msg) -> String -> Html msg
iconbutton attributes symbol =
    button (List.append [ class "icon" ] attributes)
    [ Icon.basic symbol
    ]
