module Main exposing (main)

import Browser
import Helpers.Data exposing (availableBundesland)
import Helpers.LocalStorage exposing (initWithStorage, updateWithStorage)
import Messages exposing (Msg(..))
import Model exposing (HttpStatus(..), Model)
import Set
import Update exposing (update)
import View exposing (view)


main =
    Browser.element
        { init = initWithStorage initialModel initialCommands
        , update = updateWithStorage
        , view = view
        , subscriptions = \_ -> Sub.none
        }



-- INIT


initialModel : Model
initialModel =
    { showDevWarning = True
    , showForm = True
    , bundesland = Nothing
    , schulart = Nothing
    , klassenstufen = Set.empty
    , fächer = []
    , availableBundesland = availableBundesland
    , availableSchulart =
        HttpNotRequested
    , availableKlassenstufen = HttpNotRequested
    }


initialCommands : List (Cmd Msg)
initialCommands =
    []
