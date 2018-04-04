module App exposing (..)

import Demo.Buttons exposing (buttons)
import Demo.Checkbox exposing (checkboxes)
import Demo.Elevation exposing (elevation)
import Demo.Lists exposing (lists)
import Demo.Typography exposing (typography)
import Html exposing (..)
import Html.Attributes exposing (class, href, type_)
import Html.Events exposing (onClick)
import Material.Button as Button
import Material.Icon as Icon
import Navigation exposing (Location)
import Routing exposing (Route)


type alias Model =
    { open: Bool
    , route: Route
    }

initialModel: Route -> Model
initialModel route =
    { open = True
    , route = route
    }


init : Location -> ( Model, Cmd Msg )
init location =
    let
        currentRoute =
            Routing.parseLocation location
    in
        initialModel currentRoute ! []



-- UPDATE


type Msg
    = Toggle
    | OnLocationChange Location


update : Msg -> Model -> ( Model, Cmd Msg )
update message model =
    case message of
        Toggle ->
            { model | open = not model.open } ! []

        OnLocationChange location ->
            let
                newRoute =
                    Routing.parseLocation location
            in
                { model | route = newRoute } ! []


-- VIEW

view : Model -> Html Msg
view model =
    div []
    [ div [ class "toolbar elevationz2" ]
        [ Button.icon "menu" [ onClick Toggle ]
        , h1 [ class "title" ] [ text (title model.route) ]
        ]
    , section [ class "page" ]
        [ drawer model
        , main_ []
            [ page model.route
            ]
        ]
    ]

page : Route -> Html Msg
page route =
    case route of
        Routing.Typography ->
            typography

        Routing.Lists ->
            lists

        Routing.Elevation ->
            elevation

        Routing.Buttons ->
            buttons

        Routing.Checkbox ->
            checkboxes

        Routing.Toolbar ->
            h1 [ class "Title" ] [ text "Toolbar" ]

        Routing.NotFound ->
            h1 [ class "title" ] [ text "Not found." ]


drawer: Model -> Html msg
drawer model =
    let
        classes =
            if model.open then
                "drawer elevationz1"
            else
                "drawer closed elevationz1"
    in
        div [ class classes ]
        [ mainnav model
        ]

mainnav: Model -> Html msg
mainnav model =
    nav []
        [ ul [ class "list" ]
            [ item model.route Routing.Typography "/#/typography" "text_fields" "Typography"
            , item model.route Routing.Lists "/#/lists" "view_list" "Lists"
            , item model.route Routing.Elevation "/#/elevation" "layers" "Elevation"
            , item model.route Routing.Buttons "/#/buttons" "add_circle_outline" "Buttons"
            , item model.route Routing.Checkbox "/#/checkbox" "check_box" "Checkbox"
            , item model.route Routing.Toolbar "/#/toolbar" "payment" "Toolbar"
            ]
        ]

item: Route -> Route -> String -> String -> String -> Html msg
item current item link icon label =
    let active =
        if current == item then
            "active"
        else
            ""
    in
        li [ class active ] [ a [ href link ] [ Icon.basic icon, text label ] ]


title: Route -> String
title route =
    case route of
        Routing.Typography ->
            "Typography"
        Routing.Lists ->
            "Lists"
        Routing.Elevation ->
            "Elevation"
        Routing.Buttons ->
            "Buttons"
        Routing.Checkbox ->
            "Checkbox"
        Routing.Toolbar ->
            "Toolbar"
        Routing.NotFound ->
            "Not found"