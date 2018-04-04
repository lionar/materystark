module Material.Typography exposing (..)

import Html exposing (h1, h2, h3, Html, p, text)
import Html.Attributes exposing (class)


display4 : List (Html.Attribute msg) -> String -> Html msg
display4 attributes value =
    h2 (List.append [ class "display4" ] attributes) [ text value ]

display3 : List (Html.Attribute msg) -> String -> Html msg
display3 attributes value =
    h2 (List.append [ class "display3" ] attributes) [ text value ]

display2 : List (Html.Attribute msg) -> String -> Html msg
display2 attributes value =
    h3 (List.append [ class "display2" ] attributes) [ text value ]

display1 : List (Html.Attribute msg) -> String -> Html msg
display1 attributes value =
    h3 (List.append [ class "display1" ] attributes) [ text value ]

headline : List (Html.Attribute msg) -> String -> Html msg
headline attributes value =
    h1 (List.append [ class "headline" ] attributes) [ text value ]

title : List (Html.Attribute msg) -> String -> Html msg
title attributes value =
    h1 (List.append [ class "title" ] attributes) [ text value ]

subheading : List (Html.Attribute msg) -> String -> Html msg
subheading attributes value =
    h3 (List.append [ class "subheading" ] attributes) [ text value ]

body2 : List (Html.Attribute msg) -> String -> Html msg
body2 attributes value =
    p (List.append [ class "body2" ] attributes) [ text value ]

body1 : List (Html.Attribute msg) -> String -> Html msg
body1 attributes value =
    p (List.append [ class "body1" ] attributes) [ text value ]

caption : List (Html.Attribute msg) -> String -> Html msg
caption attributes value =
    p (List.append [ class "caption" ] attributes) [ text value ]
