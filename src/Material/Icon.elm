module Material.Icon exposing (..)

import Html exposing (Html, i, text)
import Html.Attributes exposing (class)

basic : String -> Html msg
basic icon =
    i [ class "material-icons" ] [ text icon ]
    
