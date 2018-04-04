module Material.Button exposing (..)

import Html exposing (button, Html, text)
import Html.Attributes exposing (class)
import Material.Icon as Icon


fab : String -> Html msg
fab icon =
    button [ class "fab" ] [ Icon.basic icon ]


flat : List (Html.Attribute msg) -> List (Html msg) -> Html msg
flat attributes html =
    button (List.append [ class "flat" ] attributes) html


icon : String -> List (Html.Attribute msg) -> Html msg
icon symbol attributes =
    button (List.append [ class "icon" ] attributes)
    [ Icon.basic symbol
    ]

raised : List (Html.Attribute msg) -> List (Html msg) -> Html msg
raised attributes html =
    button (List.append [ class "raised" ] attributes) html