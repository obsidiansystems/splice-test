{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE TemplateHaskell #-}

module Gen.Testlib.Types where

import GHC.Generics
import Data.Aeson
import Data.Aeson.TH

import Testlib.Types

data PersonGen =
  PersonGen Person Person
  deriving (Eq, Show, Generic)

deriveJSON defaultOptions ''PersonGen
