module Demo.Elevation exposing (..)

import Html exposing (h1, Html, section, text)
import Html.Attributes exposing (class, id)
import Material.Card exposing (card)

elevation: Html msg
elevation =
    section [ id "elevation-demo" ]
    [ card 1 [] [ text "1dp (.elevationz1)" ]
    , card 2 [] [ text "2dp (.elevationz2)" ]
    , card 3 [] [ text "3dp (.elevationz3)" ]
    , card 4 [] [ text "4dp (.elevationz4)" ]
    , card 5 [] [ text "5dp (.elevationz5)" ]
    , card 6 [] [ text "6dp (.elevationz6)" ]
    , card 7 [] [ text "7dp (.elevationz7)" ]
    , card 8 [] [ text "8dp (.elevationz8)" ]
    , card 9 [] [ text "9dp (.elevationz9)" ]
    , card 10 [] [ text "10dp (.elevationz10)" ]
    , card 11 [] [ text "11dp (.elevationz11)" ]
    , card 12 [] [ text "12dp (.elevationz12)" ]
    , card 13 [] [ text "13dp (.elevationz13)" ]
    , card 14 [] [ text "14dp (.elevationz14)" ]
    , card 15 [] [ text "15dp (.elevationz15)" ]
    , card 16 [] [ text "16dp (.elevationz16)" ]
    , card 17 [] [ text "17dp (.elevationz17)" ]
    , card 18 [] [ text "18dp (.elevationz18)" ]
    , card 19 [] [ text "19dp (.elevationz19)" ]
    , card 20 [] [ text "20dp (.elevationz20)" ]
    , card 21 [] [ text "21dp (.elevationz21)" ]
    , card 22 [] [ text "22dp (.elevationz22)" ]
    , card 23 [] [ text "23dp (.elevationz23)" ]
    , card 24 [] [ text "24dp (.elevationz24)" ]
    ]
