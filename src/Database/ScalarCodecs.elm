-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module Database.ScalarCodecs exposing (..)

import Database.Scalar exposing (defaultCodecs)
import Json.Decode as Decode exposing (Decoder)


type alias Bundesland =
    Database.Scalar.Bundesland


type alias Date =
    Database.Scalar.Date


type alias Id =
    Database.Scalar.Id


type alias Ressourcenart =
    Database.Scalar.Ressourcenart


codecs : Database.Scalar.Codecs Bundesland Date Id Ressourcenart
codecs =
    Database.Scalar.defineCodecs
        { codecBundesland = defaultCodecs.codecBundesland
        , codecDate = defaultCodecs.codecDate
        , codecId = defaultCodecs.codecId
        , codecRessourcenart = defaultCodecs.codecRessourcenart
        }
