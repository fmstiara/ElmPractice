module Hello exposing (..)

import Html exposing (text)

main =
  text "Hello"


-- 無名関数
-- \x -> x + 1

add1 : Int -> Int
add1 x =
  x + 1

add : Int -> Int -> Int
add x y =
  x + y

name = --定数は,引数をとらない関数。
  "Sam"

divide : Float -> Float -> Float
divide x y =
  x / y

switch : (a, b) -> (b, a)
switch (x, y) =
  (y, x)

-- 部分適用
-- add2 = add 2とすると、引数をひとつだけ入れたものを用意できる。

-- 　ユニオン型
type Answer = Yes | No | Other String
-- respond : Answer -> String
-- respond answer =

-- 型エイリアス
type alias PlayerId = Int

type alias PlayerName = String

-- label: PlayerId -> PlayerName と関数を描くことができる。

-- label: {id: Int, name: String} -> Stringも型エイリアスを使うとスッキリ書ける

type alias Player =
  {
    id: Int,
    name: String
  }
-- label: Player -> String
-- レコードに対する型エイリアスは、コンストラクタ関数として使用できる。
-- Player 1 "Sam" ==> {id = 1, name = "Sam"}

type alias Message something =
  {
    code: String,
    body: something
  }
-- somethingという型変数を持った型エイリアス
-- somethingには任意の方を入れられる

-- readMessage: Message String -> String
-- readMessage message =

-- readMessage: Message () -> Stringとすると空を示せる
-- ()をユニット型という