module Material.Button exposing (..)
import Material.Icon as Icon

import Html exposing (button, Html)
import Html.Attributes exposing (class)

icon : String -> List (Html.Attribute msg) -> Html msg
icon symbol attributes =
    button (List.append [ class "icon" ] attributes)
    [ Icon.basic symbol
    ]
    
fab : Html msg
fab =
    button [ class "fab elevationz5" ] [ Icon.basic "add" ]