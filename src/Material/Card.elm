module Material.Card exposing (..)

import Html exposing (div, Html)
import Html.Attributes exposing (class)
    

card: List (Html msg) -> Html msg
card =
    div [ class "card elevationz1" ]