module App exposing (..)

import Demo.Elevation exposing (elevation)
import Demo.Typography exposing (typography)
import Html exposing (..)
import Html.Attributes exposing (class, href, type_)
import Html.Events exposing (onClick)
import Material.Button as Button
import Material.Icon as Icon
import Navigation exposing (Location)
import Routing


type alias Model =
    { open: Bool
    , route: Routing.Route
    }

initialModel: Routing.Route -> Model
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
        , h1 [ class "title" ] [ text "Materystark®" ]
        ]
    , section [ class "page" ]
        [ drawer model
        , main_ []
            [ page model
            ]
        ]
    ]

page : Model -> Html Msg
page model =
    case model.route of
        Routing.Typography ->
            typography

        Routing.Lists ->
            h1 [ class "title" ] [ text "Lists" ]

        Routing.Elevation ->
            elevation

        Routing.NotFound ->
            h1 [] [ text "Not found." ]


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
        [ mainnav
        ]

mainnav: Html msg
mainnav =
    nav []
        [ ul [ class "list" ]
            [ li [ class "active" ] [ a [ href "/#/typography" ] [ Icon.basic "text_fields", text "Typography" ] ]
            , li [] [ a [ href "/#/lists" ] [ Icon.basic "view_list", text "Lists" ] ]
            , li [] [ a [ href "/#/elevation" ] [ Icon.basic "layers", text "Elevation" ] ]
            , li [] [ a [ href "/#/buttons" ] [ Icon.basic "add_circle_outline", text "Buttons" ] ]
            ]
        ]
