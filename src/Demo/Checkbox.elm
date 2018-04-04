module Demo.Checkbox exposing (..)

import Html exposing (..)
import Html.Attributes exposing (..)

checkboxes : Html msg
checkboxes =
    div [ class "checkbox" ]
    [ input [ type_ "checkbox", id "checkbox1" ] []
    , label [ for "checkbox1" ] [ ]
    ]
