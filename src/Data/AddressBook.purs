module Data.AddressBook where

import Prelude

import Control.Plus (empty)
import Data.List (List(..), filter, head)
import Data.Maybe (Maybe)

type Entry =
  { firstName :: String
  , lastName  :: String
  , address   :: Address}

type Address =
  { street :: String
  , city   :: String
  , state  :: String}

type AddressBook = List Entry

showEntry :: Entry -> String
showEntry e =
  e.lastName <> ", " <>
  e.firstName <> ": " <>
  showAddress e.address

showAddress :: Address -> String
showAddress a =
  a.street <> ", " <> a.city <> ", " <> a.state

emptyBook :: AddressBook
emptyBook = empty

insertEntry :: Entry -> AddressBook -> AddressBook
insertEntry = Cons

findEntry :: String -> String -> AddressBook -> Maybe Entry
findEntry firstN lastN addressB =
  (filter f >>> head) addressB
  where
    f = (\e -> e.firstName == firstN && e.lastName == lastN )

