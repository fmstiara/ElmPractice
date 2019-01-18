import Browser
import Html exposing (Html, button, div, text)
import Html.Events exposing (onClick)


main =
  Browser.sandbox { init = init_i, update = update, view = view }


-- MODEL

type alias Mode = Int

init_i : Mode
init_i =
  0


-- UPDATE

type Msg = Increment | Decrement | Reset

update : Msg -> Mode -> Mode
update msg model =
  case msg of
    Increment ->
      model + 1
    Decrement ->
      model - 1
    Reset ->
      model - model



-- VIEW

view : Mode -> Html Msg
view model =
  div []
    [ button [ onClick Decrement ] [ text "-" ]
    , div [] [ text (String.fromInt model) ]
    , button [ onClick Increment ] [ text "+" ]
    , button [ onClick Reset ] [ text "reset" ]
    ]