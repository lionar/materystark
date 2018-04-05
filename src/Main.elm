module Main exposing (main)

import App exposing (..)
import Types exposing (..)
import Navigation

main : Program Never Model Msg
main =
    Navigation.program OnLocationChange
        { init = init
        , update = update
        , view = view
        , subscriptions = always Sub.none
        }
