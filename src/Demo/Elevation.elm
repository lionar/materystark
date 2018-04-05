module Demo.Elevation exposing (..)

import Html exposing (div, h1, Html, section, text)
import Html.Attributes exposing (class, id)
import Material.Attributes exposing (..)


demo: Html msg
demo =
    section [ id "elevation-demo" ]
    [ div [ card, elevation 1 ] [ text "1dp (.elevationz1)" ]
    , div [ card, elevation 2 ] [ text "2dp (.elevationz2)" ]
    , div [ card, elevation 3 ] [ text "3dp (.elevationz3)" ]
    , div [ card, elevation 4 ] [ text "4dp (.elevationz4)" ]
    , div [ card, elevation 5 ] [ text "5dp (.elevationz5)" ]
    , div [ card, elevation 6 ] [ text "6dp (.elevationz6)" ]
    , div [ card, elevation 7 ] [ text "7dp (.elevationz7)" ]
    , div [ card, elevation 8 ] [ text "8dp (.elevationz8)" ]
    , div [ card, elevation 9 ] [ text "9dp (.elevationz9)" ]
    , div [ card, elevation 10 ] [ text "10dp (.elevationz10)" ]
    , div [ card, elevation 11 ] [ text "11dp (.elevationz11)" ]
    , div [ card, elevation 12 ] [ text "12dp (.elevationz12)" ]
    , div [ card, elevation 13 ] [ text "13dp (.elevationz13)" ]
    , div [ card, elevation 14 ] [ text "14dp (.elevationz14)" ]
    , div [ card, elevation 15 ] [ text "15dp (.elevationz15)" ]
    , div [ card, elevation 16 ] [ text "16dp (.elevationz16)" ]
    , div [ card, elevation 17 ] [ text "17dp (.elevationz17)" ]
    , div [ card, elevation 18 ] [ text "18dp (.elevationz18)" ]
    , div [ card, elevation 19 ] [ text "19dp (.elevationz19)" ]
    , div [ card, elevation 20 ] [ text "20dp (.elevationz20)" ]
    , div [ card, elevation 21 ] [ text "21dp (.elevationz21)" ]
    , div [ card, elevation 22 ] [ text "22dp (.elevationz22)" ]
    , div [ card, elevation 23 ] [ text "23dp (.elevationz23)" ]
    , div [ card, elevation 24 ] [ text "24dp (.elevationz24)" ]
    ]
