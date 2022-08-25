{-# LANGUAGE DeriveGeneric #-}

module Gen.Testlib.Types where

import GHC.Generics
import Data.Aeson

import Testlib.Types

data PersonGen =
  PersonGen Person Person
  deriving (Eq, Show, Generic)

instance ToJSON PersonGen
instance FromJSON PersonGen
