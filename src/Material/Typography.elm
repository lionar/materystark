module Material.Typography exposing (..)

import Html exposing (h1, h2, h3, Html, p, text)
import Html.Attributes exposing (class)


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
