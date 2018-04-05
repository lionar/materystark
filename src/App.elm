module App exposing (..)

import Demo.Buttons exposing (buttons)
import Demo.Checkbox exposing (checkboxes)
import Demo.Elevation as Elevation
import Demo.Lists exposing (lists)
import Demo.Menu as Menu
import Demo.Toolbar as Toolbar
import Demo.Typography exposing (typography)
import Html exposing (..)
import Html.Attributes exposing (class, href, type_)
import Html.Events exposing (onClick)
import Material.Attributes exposing (..)
import Material.Button exposing (iconbutton)
import Material.Icon exposing (icon)
import Navigation exposing (Location)
import Routing exposing (Route)
import Types exposing (..)


type alias Model =
    { drawer: Bool
    , menu: Bool
    , route: Route
    }


initialModel : Route -> Model
initialModel route =
    { drawer = True
    , menu = True
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


update : Msg -> Model -> ( Model, Cmd Msg )
update message model =
    case message of
        ToggleDrawer ->
            { model | drawer = not model.drawer } ! []

        ToggleMenu ->
            { model | menu = not model.menu } ! []

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
    [ div [ class "app-bar", toolbar, elevation 2 ]
        [ section []
            [ iconbutton [ onClick ToggleDrawer ] "menu"
            , h1 [ title ] [ text (pageTitle model.route) ]
            ]
        ]
    , section [ class "page" ]
        [ sidenav model
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
            Elevation.demo

        Routing.Buttons ->
            buttons

        Routing.Checkbox ->
            checkboxes

        Routing.Toolbar ->
            Toolbar.standard

        Routing.Menu ->
            Menu.standard

        Routing.NotFound ->
            h1 [ title ] [ text "Not found." ]



sidenav : Model -> Html msg
sidenav model =
    let
        state =
            if model.drawer then
                class ""
            else
                closed
    in
        div [ state, drawer, elevation 1 ]
        [ mainnav model
        ]


mainnav : Model -> Html msg
mainnav model =
    nav []
        [ ul [ list ]
            [ item model.route Routing.Typography "/#/typography" "text_fields" "Typography"
            , item model.route Routing.Lists "/#/lists" "view_list" "Lists"
            , item model.route Routing.Elevation "/#/elevation" "layers" "Elevation"
            , item model.route Routing.Buttons "/#/buttons" "add_circle_outline" "Buttons"
            , item model.route Routing.Checkbox "/#/checkbox" "check_box" "Checkbox"
            , item model.route Routing.Toolbar "/#/toolbar" "payment" "Toolbar"
            , item model.route Routing.Menu "/#/menu" "chrome_reader_mode" "Menu"
            ]
        ]


item : Route -> Route -> String -> String -> String -> Html msg
item current item link symbol label =
    let active =
        if current == item then
            "active"
        else
            ""
    in
        li [ class active ] [ a [ href link ] [ icon symbol, text label ] ]


pageTitle : Route -> String
pageTitle route =
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

        Routing.Menu ->
            "Menu"

        Routing.NotFound ->
            "Not found"
