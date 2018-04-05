module Demo.Toolbar exposing (..)

import Html exposing (..)
import Html.Attributes exposing (class, id)
import Material.Attributes exposing (..)
import Material.Button exposing (iconbutton)


standard : Html msg
standard =
    div [ id "toolbar-demo" ]
    [ section []
        [ h2 [ headline ] [ text "Single row" ]
        , div [ class "app-bar", toolbar, elevation 2 ]
            [ section []
                [ iconbutton [] "menu"
                , h1 [ title ] [ text "Title" ]
                ]
            ]
        ]
    , section []
        [ h2 [ headline ] [ text "Double row" ]
        , div [ class "app-bar", toolbar, elevation 2 ]
            [ section []
                [ iconbutton [] "menu"
                , h1 [ title ] [ text "Title" ]
                ]
            , section [] []
            ]
        ]
    ]

