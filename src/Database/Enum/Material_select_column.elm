-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module Database.Enum.Material_select_column exposing (..)

import Json.Decode as Decode exposing (Decoder)


{-| select columns of table "material"

  - Downvotes - column name
  - Link - column name
  - Materialart - column name
  - Materialbeschreibung - column name
  - Materialeintragsdatum - column name
  - Materialtestdatum - column name
  - Materialtitel - column name
  - Upvotes - column name

-}
type Material_select_column
    = Downvotes
    | Link
    | Materialart
    | Materialbeschreibung
    | Materialeintragsdatum
    | Materialtestdatum
    | Materialtitel
    | Upvotes


list : List Material_select_column
list =
    [ Downvotes, Link, Materialart, Materialbeschreibung, Materialeintragsdatum, Materialtestdatum, Materialtitel, Upvotes ]


decoder : Decoder Material_select_column
decoder =
    Decode.string
        |> Decode.andThen
            (\string ->
                case string of
                    "downvotes" ->
                        Decode.succeed Downvotes

                    "link" ->
                        Decode.succeed Link

                    "materialart" ->
                        Decode.succeed Materialart

                    "materialbeschreibung" ->
                        Decode.succeed Materialbeschreibung

                    "materialeintragsdatum" ->
                        Decode.succeed Materialeintragsdatum

                    "materialtestdatum" ->
                        Decode.succeed Materialtestdatum

                    "materialtitel" ->
                        Decode.succeed Materialtitel

                    "upvotes" ->
                        Decode.succeed Upvotes

                    _ ->
                        Decode.fail ("Invalid Material_select_column type, " ++ string ++ " try re-running the @dillonkearns/elm-graphql CLI ")
            )


{-| Convert from the union type representing the Enum to a string that the GraphQL server will recognize.
-}
toString : Material_select_column -> String
toString enum =
    case enum of
        Downvotes ->
            "downvotes"

        Link ->
            "link"

        Materialart ->
            "materialart"

        Materialbeschreibung ->
            "materialbeschreibung"

        Materialeintragsdatum ->
            "materialeintragsdatum"

        Materialtestdatum ->
            "materialtestdatum"

        Materialtitel ->
            "materialtitel"

        Upvotes ->
            "upvotes"


{-| Convert from a String representation to an elm representation enum.
This is the inverse of the Enum `toString` function. So you can call `toString` and then convert back `fromString` safely.

    Swapi.Enum.Episode.NewHope
        |> Swapi.Enum.Episode.toString
        |> Swapi.Enum.Episode.fromString
        == Just NewHope

This can be useful for generating Strings to use for <select> menus to check which item was selected.

-}
fromString : String -> Maybe Material_select_column
fromString enumString =
    case enumString of
        "downvotes" ->
            Just Downvotes

        "link" ->
            Just Link

        "materialart" ->
            Just Materialart

        "materialbeschreibung" ->
            Just Materialbeschreibung

        "materialeintragsdatum" ->
            Just Materialeintragsdatum

        "materialtestdatum" ->
            Just Materialtestdatum

        "materialtitel" ->
            Just Materialtitel

        "upvotes" ->
            Just Upvotes

        _ ->
            Nothing
