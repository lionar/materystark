module Demo.Elevation exposing (..)

import Html exposing (div, h1, Html, section, text)
import Html.Attributes exposing (class, id)
import Material.Card exposing (card)
import Material.Elevation exposing (..)

elevation: Html msg
elevation =
    section [ id "elevation-demo" ]
    [ div [ card, elevationz1 ] [ text "1dp (.elevationz1)" ]
    , div [ card, elevationz2 ] [ text "2dp (.elevationz2)" ]
    , div [ card, elevationz3 ] [ text "3dp (.elevationz3)" ]
    , div [ card, elevationz4 ] [ text "4dp (.elevationz4)" ]
    , div [ card, elevationz5 ] [ text "5dp (.elevationz5)" ]
    , div [ card, elevationz6 ] [ text "6dp (.elevationz6)" ]
    , div [ card, elevationz7 ] [ text "7dp (.elevationz7)" ]
    , div [ card, elevationz8 ] [ text "8dp (.elevationz8)" ]
    , div [ card, elevationz9 ] [ text "9dp (.elevationz9)" ]
    , div [ card, elevationz10 ] [ text "10dp (.elevationz10)" ]
    , div [ card, elevationz11 ] [ text "11dp (.elevationz11)" ]
    , div [ card, elevationz12 ] [ text "12dp (.elevationz12)" ]
    , div [ card, elevationz13 ] [ text "13dp (.elevationz13)" ]
    , div [ card, elevationz14 ] [ text "14dp (.elevationz14)" ]
    , div [ card, elevationz15 ] [ text "15dp (.elevationz15)" ]
    , div [ card, elevationz16 ] [ text "16dp (.elevationz16)" ]
    , div [ card, elevationz17 ] [ text "17dp (.elevationz17)" ]
    , div [ card, elevationz18 ] [ text "18dp (.elevationz18)" ]
    , div [ card, elevationz19 ] [ text "19dp (.elevationz19)" ]
    , div [ card, elevationz20 ] [ text "20dp (.elevationz20)" ]
    , div [ card, elevationz21 ] [ text "21dp (.elevationz21)" ]
    , div [ card, elevationz22 ] [ text "22dp (.elevationz22)" ]
    , div [ card, elevationz23 ] [ text "23dp (.elevationz23)" ]
    , div [ card, elevationz24 ] [ text "24dp (.elevationz24)" ]
    ]
