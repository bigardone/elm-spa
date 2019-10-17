module Components.Navbar exposing (view)

import Generated.Route as Route exposing (Route)
import Html exposing (..)
import Html.Attributes as Attr


view : Html msg
view =
    header [ Attr.class "navbar" ]
        (List.map viewLink
            [ ( "Homepage", Route.Homepage () )
            , ( "Counter", Route.Counter () )
            , ( "Random", Route.Random () )
            , ( "My user", Route.Users_Slug "ryan" )
            , ( "My user's post", Route.Users_Slug_Posts_Slug { user = "ryan", post = 123 } )
            ]
        )


viewLink : ( String, Route ) -> Html msg
viewLink ( label, route ) =
    a
        [ Attr.href (Route.toPath route)
        , Attr.style "margin-right" "1rem"
        ]
        [ text label
        ]