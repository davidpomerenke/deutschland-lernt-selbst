-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module Database.Object.Lehrplan exposing (..)

import Database.InputObject
import Database.Interface
import Database.Object
import Database.Scalar
import Database.ScalarCodecs
import Database.Union
import Graphql.Internal.Builder.Argument as Argument exposing (Argument)
import Graphql.Internal.Builder.Object as Object
import Graphql.Internal.Encode as Encode exposing (Value)
import Graphql.Operation exposing (RootMutation, RootQuery, RootSubscription)
import Graphql.OptionalArgument exposing (OptionalArgument(..))
import Graphql.SelectionSet exposing (SelectionSet)
import Json.Decode as Decode


bundesland : SelectionSet (Maybe Database.ScalarCodecs.Bundesland) Database.Object.Lehrplan
bundesland =
    Object.selectionForField "(Maybe ScalarCodecs.Bundesland)" "bundesland" [] (Database.ScalarCodecs.codecs |> Database.Scalar.unwrapCodecs |> .codecBundesland |> .decoder |> Decode.nullable)


fach : SelectionSet (Maybe String) Database.Object.Lehrplan
fach =
    Object.selectionForField "(Maybe String)" "fach" [] (Decode.string |> Decode.nullable)


klassenstufe : SelectionSet (Maybe Int) Database.Object.Lehrplan
klassenstufe =
    Object.selectionForField "(Maybe Int)" "klassenstufe" [] (Decode.int |> Decode.nullable)


lehrplanid : SelectionSet (Maybe Int) Database.Object.Lehrplan
lehrplanid =
    Object.selectionForField "(Maybe Int)" "lehrplanid" [] (Decode.int |> Decode.nullable)


schulart : SelectionSet (Maybe String) Database.Object.Lehrplan
schulart =
    Object.selectionForField "(Maybe String)" "schulart" [] (Decode.string |> Decode.nullable)
