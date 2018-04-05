module Demo.Buttons exposing (..)

import Html exposing (button, div, h1, Html, section, text)
import Material.Attributes exposing (..)
import Material.Button exposing (fab, iconbutton)


buttons: Html msg
buttons =
    div [ card, elevationz1 ]
        [ section []
            [ h1 [ title ] [ text "FAB" ]
            , fab [] "add"
            ]
        , section []
            [ h1 [ title ] [ text "Icon button" ]
            , iconbutton [] "menu"
            ]
        , section []
            [ h1 [ title ] [ text "Flat button" ]
            , button [ flat ] [ text "Flat" ]
            ]
        , section []
            [ h1 [ title ] [ text "Raised button" ]
            , button [ raised ] [ text "Raised" ]
            ]
        , section []
            [ h1 [ title ] [ text "Disabled button" ]
            , button [ raised, disabled ] [ text "Raised" ]
            ]
        ]


