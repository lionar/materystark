module Material.Button exposing (..)

import Html exposing (button, Html)
import Html.Attributes exposing (class)
import Material.Icon as Icon

    
fab : Html msg
fab =
    button [ class "fab elevationz5" ] [ Icon.basic "add" ]


icon : String -> List (Html.Attribute msg) -> Html msg
icon symbol attributes =
    button (List.append [ class "icon" ] attributes)
    [ Icon.basic symbol
    ]