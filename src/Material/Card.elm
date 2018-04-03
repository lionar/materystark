module Material.Card exposing (..)

import Html exposing (div, Html)
import Html.Attributes exposing (class)


card : Int -> List (Html.Attribute msg) -> List (Html msg) -> Html msg
card elevation attributes =
    let
        level =
            class <| "card elevationz" ++ (toString elevation)
    in
        div <| List.append [ level ] attributes
