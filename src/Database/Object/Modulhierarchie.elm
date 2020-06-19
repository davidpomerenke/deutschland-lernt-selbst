-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module Database.Object.Modulhierarchie exposing (..)

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


{-| An object relationship
-}
module_ :
    SelectionSet decodesTo Database.Object.Module
    -> SelectionSet decodesTo Database.Object.Modulhierarchie
module_ object_ =
    Object.selectionForCompositeField "module" [] object_ identity


untermodul : SelectionSet String Database.Object.Modulhierarchie
untermodul =
    Object.selectionForField "String" "untermodul" [] Decode.string
