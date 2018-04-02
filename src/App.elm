module App exposing (..)

import Html exposing (..)
import Html.Attributes exposing (class, type_)
import Html.Events exposing (onClick)
import Material.Button as Button
import Material.Card exposing (card)
import Material.Icon as Icon

type alias Model =
    Bool


init : ( Model, Cmd Msg )
init =
    ( True, Cmd.none )



-- UPDATE


type Msg
    = Toggle


update : Msg -> Model -> ( Model, Cmd Msg )
update message model =
    case message of
        toggle ->
            ( not model, Cmd.none )


-- VIEW

view : Model -> Html Msg
view model =
    div []
    [ div [ class "toolbar elevationz2" ] 
        [ Button.icon "menu" [ onClick Toggle ]
        , h1 [ class "title" ] [ text "Materystark®" ]
        ]
    , section [ class "page" ]
        [ drawer model
        , main_ [] 
            [ typography
            , Button.fab
            , input [ type_ "checkbox" ] [ ]
            ]
        ]
    ]

drawer: Model -> Html msg
drawer model =
    let
        classes =
            if model then
                "drawer elevationz1" 
            else
                "drawer closed elevationz1" 
    in
        div [ class classes ] 
        [ mainnav
        ]
   
mainnav: Html msg
mainnav =
    nav [] 
        [ ul [ class "list" ] 
            [ li [ class "active" ] [ a [] [ Icon.basic "text_fields", text "Typography" ] ]
            , li [] [ a [] [ Icon.basic "view_list", text "Lists" ] ]
            , li [] [ a [] [ Icon.basic "layers", text "Elevation" ] ]
            , li [] [ a [] [ Icon.basic "add_circle_outline", text "Buttons" ] ]
            ]
        ]
    
typography: Html msg
typography =
    card
        [ h2 [ class "display4" ] [ text "Light112sp" ]
        , h2 [ class "display3" ] [ text "Regular56sp" ]
        , h3 [ class "display2" ] [ text "Regular45sp" ]
        , h3 [ class "display1" ] [ text "Regular34sp" ]
        , h3 [ class "headline" ] [ text "Regular24sp" ]
        , h1 [ class "title" ] [ text "Medium20sp" ]
        , h2 [ class "subheading" ] [ text "Regular16sp" ]
        , p [ class "body2" ] [ text "Medium14sp" ]
        , p [ class "body1" ] [ text "Regular14sp" ]
        , p [ class "caption" ] [ text "Regular12sp" ]
        ]