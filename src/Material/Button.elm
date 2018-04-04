module Material.Button exposing (..)

import Html exposing (button, Html, text)
import Html.Attributes exposing (class)
import Material.Icon as Icon


fab : Html msg
fab =
    button [ class "fab elevationz5" ] [ Icon.basic "add" ]


flat : Html msg
flat =
    button [ class "flat" ] [ text "Flat button" ]


icon : String -> List (Html.Attribute msg) -> Html msg
icon symbol attributes =
    button (List.append [ class "icon" ] attributes)
    [ Icon.basic symbol
    ]

raised : Html msg
raised =
    button [ class "raised elevationz2" ] [ text "Raised button" ]
