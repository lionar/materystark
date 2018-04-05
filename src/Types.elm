module Types exposing (..)

import Navigation exposing (Location)


type Msg
    = ToggleDrawer
    | ToggleMenu
    | OnLocationChange Location