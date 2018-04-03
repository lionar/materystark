module Demo.Typography exposing (..)

import Html exposing (h1, h2, h3, Html, p, text)
import Html.Attributes exposing (class)
import Material.Card exposing (card)

typography: Html msg
typography =
    card 1 []
        [ h2 [ class "display4" ] [ text "Light112sp" ]
        , h2 [ class "display3" ] [ text "Regular56sp" ]
        , h3 [ class "display2" ] [ text "Regular45sp" ]
        , h3 [ class "display1" ] [ text "Regular34sp" ]
        , h3 [ class "headline" ] [ text "Regular24sp" ]
        , h1 [ class "title" ] [ text "Medium20sp" ]
        , h2 [ class "subheading" ] [ text "Regular16sp" ]
        , p [ class "body2" ] [ text "Medium14sp" ]
        , p [ class "body1" ] [ text "Regular14sp" ]
        , p [ class "caption" ] [ text "Regular12sp" ]
        ]
