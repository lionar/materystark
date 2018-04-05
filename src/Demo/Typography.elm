module Demo.Typography exposing (..)

import Html exposing (div, h1, h2, h3, Html, p, text)
import Material.Attributes exposing (..)


typography: Html msg
typography =
    div [ card, elevationz1 ]
        [ h2 [ display4 ] [ text "Light112sp" ]
        , h2 [ display3 ] [ text "Regular56sp" ]
        , h3 [ display2 ] [ text "Regular45sp" ]
        , h3 [ display1 ] [ text "Regular34sp" ]
        , h1 [ headline ] [ text "Regular24sp" ]
        , h1 [ title ] [ text "Medium20sp" ]
        , h2 [ subheading ] [ text "Regular16sp" ]
        , p [ body2 ] [ text "Medium14sp" ]
        , p [ body1 ] [ text "Regular14sp" ]
        , p [ caption ] [ text "Regular12sp" ]
        ]
