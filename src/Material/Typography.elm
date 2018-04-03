module Material.Typography exposing (..)

import Html exposing (h1, h2, h3, Html, p, text)
import Html.Attributes exposing (class)


display4 : String -> Html msg
display4 value =
    h2 [ class "display4" ] [ text value ]

display3 : String -> Html msg
display3 value =
    h2 [ class "display3" ] [ text value ]

display2 : String -> Html msg
display2 value =
    h3 [ class "display2" ] [ text value ]

display1 : String -> Html msg
display1 value =
    h3 [ class "display1" ] [ text value ]

headline : String -> Html msg
headline value =
    h1 [ class "headline" ] [ text value ]

title : String -> Html msg
title value =
    h1 [ class "title" ] [ text value ]

subheading : String -> Html msg
subheading value =
    h3 [ class "subheading" ] [ text value ]

body2 : String -> Html msg
body2 value =
    p [ class "body2" ] [ text value ]

body1 : String -> Html msg
body1 value =
    p [ class "body1" ] [ text value ]

caption : String -> Html msg
caption value =
    p [ class "caption" ] [ text value ]