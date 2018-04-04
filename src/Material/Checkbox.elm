module Material.Checkbox exposing (..)

import Html exposing (..)
import Html.Attributes exposing (..)

checkbox: Html msg
checkbox =
    div [ class "checkbox" ]
        [ input [ type_ "checkbox", id "checkbox1" ] []
        , label [ for "checkbox1" ] [ ]
        ]
