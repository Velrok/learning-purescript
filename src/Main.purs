module Main where

import Prelude

import Data.AddressBook (Address, showAddress, showEntry)
import Effect
import Effect.Console (log)
import Math (sqrt, pi)

main :: Effect Unit
main = do
  let home = { street: "6 Highfield Green", city: "Epping", state: "UK" }
  let me = {firstName: "Waldemar", lastName: "Schwan", address: home}
  log (showEntry me)
  log (show  "OK!")
