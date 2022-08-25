{-# LANGUAGE DeriveGeneric #-}

module Testlib.Types where

import GHC.Generics
import Data.Aeson

data Person =
  Person String String
  deriving (Eq, Show, Generic)

instance ToJSON Person
instance FromJSON Person
