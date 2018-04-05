module Material.Button exposing (..)

import Html exposing (button, Html, text)
import Html.Attributes exposing (class)
import Material.Icon as Icon


disabled : Html.Attribute msg
disabled =
    Html.Attributes.disabled True


fab : String -> List (Html.Attribute msg) -> Html msg
fab icon attributes =
    button (List.append [ class "fab" ] attributes ) [ Icon.basic icon ]


flat : Html.Attribute msg
flat =
    class "flat"


iconbutton : List (Html.Attribute msg) -> String -> Html msg
iconbutton attributes symbol =
    button (List.append [ class "icon" ] attributes)
    [ Icon.basic symbol
    ]


raised : Html.Attribute msg
raised =
    class "raised"
