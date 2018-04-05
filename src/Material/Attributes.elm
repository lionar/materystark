module Material.Attributes exposing (..)

import Html exposing (Html)
import Html.Attributes exposing (class)


card : Html.Attribute msg
card =
    class "card"


closed : Html.Attribute msg
closed =
    class "closed"


disabled : Html.Attribute msg
disabled =
    Html.Attributes.disabled True


drawer : Html.Attribute msg
drawer =
    class "drawer"


elevation : Int -> Html.Attribute msg
elevation level =
    let
        ele = "elevationz" ++ (toString level)
    in
        class ele


flat : Html.Attribute msg
flat =
    class "flat"


list : Html.Attribute msg
list =
    class "list"


menu : Html.Attribute msg
menu =
    class "menu"


raised : Html.Attribute msg
raised =
    class "raised"


toolbar : Html.Attribute msg
toolbar =
    class "toolbar"


-- Typography

display4 : Html.Attribute msg
display4 =
    class "display4"


display3 : Html.Attribute msg
display3 =
    class "display3"


display2 : Html.Attribute msg
display2 =
    class "display2"


display1 : Html.Attribute msg
display1 =
    class "display1"


headline : Html.Attribute msg
headline =
    class "headline"


title : Html.Attribute msg
title =
    class "title"


subheading : Html.Attribute msg
subheading =
    class "subheading"


body2 : Html.Attribute msg
body2 =
    class "body2"


body1 : Html.Attribute msg
body1 =
    class "body1"


caption : Html.Attribute msg
caption =
    class "caption"

--
