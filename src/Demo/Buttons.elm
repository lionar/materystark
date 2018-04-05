module Demo.Buttons exposing (..)

import Html exposing (button, div, h1, Html, section, text)
import Html.Attributes exposing (class)
import Material.Button as Button exposing (disabled, fab, flat, iconbutton, raised)
import Material.Card exposing (card)
import Material.Elevation exposing (elevationz1)

buttons: Html msg
buttons =
    div [ card, elevationz1 ]
        [ section []
            [ h1 [ class "title" ] [ text "FAB" ]
            , fab "add" []
            ]
        , section []
            [ h1 [ class "title" ] [ text "Icon button" ]
            , iconbutton [] "menu"
            ]
        , section []
            [ h1 [ class "title" ] [ text "Flat button" ]
            , button [ flat ] [ text "Flat" ]
            ]
        , section []
            [ h1 [ class "title" ] [ text "Raised button" ]
            , button [ raised ] [ text "Raised" ]
            ]
        , section []
            [ h1 [ class "title" ] [ text "Disabled button" ]
            , button [ raised, disabled ] [ text "Raised" ]
            ]
        ]


