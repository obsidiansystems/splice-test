{-# LANGUAGE DeriveGeneric #-}

module Testlib.Types.Gen where

import GHC.Generics
import Data.Aeson

data PersonGen =
  PersonGen String String
  deriving (Eq, Show, Generic)

instance ToJSON PersonGen
instance FromJSON PersonGen
