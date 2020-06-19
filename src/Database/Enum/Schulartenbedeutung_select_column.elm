-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module Database.Enum.Schulartenbedeutung_select_column exposing (..)

import Json.Decode as Decode exposing (Decoder)


{-| select columns of table "schulartenbedeutung"

  - Bundesland - column name
  - Schulart - column name
  - Schulart\_intern - column name

-}
type Schulartenbedeutung_select_column
    = Bundesland
    | Schulart
    | Schulart_intern


list : List Schulartenbedeutung_select_column
list =
    [ Bundesland, Schulart, Schulart_intern ]


decoder : Decoder Schulartenbedeutung_select_column
decoder =
    Decode.string
        |> Decode.andThen
            (\string ->
                case string of
                    "bundesland" ->
                        Decode.succeed Bundesland

                    "schulart" ->
                        Decode.succeed Schulart

                    "schulart_intern" ->
                        Decode.succeed Schulart_intern

                    _ ->
                        Decode.fail ("Invalid Schulartenbedeutung_select_column type, " ++ string ++ " try re-running the @dillonkearns/elm-graphql CLI ")
            )


{-| Convert from the union type representing the Enum to a string that the GraphQL server will recognize.
-}
toString : Schulartenbedeutung_select_column -> String
toString enum =
    case enum of
        Bundesland ->
            "bundesland"

        Schulart ->
            "schulart"

        Schulart_intern ->
            "schulart_intern"


{-| Convert from a String representation to an elm representation enum.
This is the inverse of the Enum `toString` function. So you can call `toString` and then convert back `fromString` safely.

    Swapi.Enum.Episode.NewHope
        |> Swapi.Enum.Episode.toString
        |> Swapi.Enum.Episode.fromString
        == Just NewHope

This can be useful for generating Strings to use for <select> menus to check which item was selected.

-}
fromString : String -> Maybe Schulartenbedeutung_select_column
fromString enumString =
    case enumString of
        "bundesland" ->
            Just Bundesland

        "schulart" ->
            Just Schulart

        "schulart_intern" ->
            Just Schulart_intern

        _ ->
            Nothing
