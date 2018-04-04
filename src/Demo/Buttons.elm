module Demo.Buttons exposing (..)

import Html exposing (h1, Html, section, text)
import Html.Attributes exposing (class)
import Material.Button as Button exposing (fab)
import Material.Card exposing (card)


buttons: Html msg
buttons =
    card 1 []
        [ section []
            [ h1 [ class "title" ] [ text "FAB" ]
            , fab "add"
            ]
        , section []
            [ h1 [ class "title" ] [ text "Icon button" ]
            , Button.icon "menu" []
            ]
        , section []
            [ h1 [ class "title" ] [ text "Flat button" ]
            , Button.flat [] [ text "Flat" ]
            ]
        , section []
            [ h1 [ class "title" ] [ text "Raised button" ]
            , Button.raised [] [ text "Raised" ]
            ]
        ]
