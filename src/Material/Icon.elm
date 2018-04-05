module Material.Icon exposing (..)

import Html exposing (Html, i, text)
import Html.Attributes exposing (class)


icon : String -> Html msg
icon symbol =
    i [ class "material-icons" ] [ text symbol ]
    
