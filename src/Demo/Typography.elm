module Demo.Typography exposing (..)

import Html exposing (h1, h2, h3, Html, p, text)
import Material.Card exposing (card)
import Material.Typography exposing (..)

typography: Html msg
typography =
    card 1 []
        [ display4 "Light112sp"
        , display3 "Regular56sp"
        , display2 "Regular45sp"
        , display1 "Regular34sp"
        , headline "Regular24sp"
        , title "Medium20sp"
        , subheading "Regular16sp"
        , body2 "Medium14sp"
        , body1 "Regular14sp"
        , caption "Regular12sp"
        ]
