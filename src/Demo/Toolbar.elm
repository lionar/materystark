module Demo.Toolbar exposing (..)

import Html exposing (..)
import Html.Attributes exposing (class)
import Material.Attributes exposing (..)
import Material.Button exposing (iconbutton)


standard : Html msg
standard =
    div [ class "app-bar", toolbar, elevation 2 ]
        [ section []
            [ iconbutton [] "menu"
            , h1 [ title ] [ text "Title" ]
            ]
        ]
