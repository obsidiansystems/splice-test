{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE StandaloneDeriving #-}
{-# LANGUAGE TemplateHaskell #-}
{-# OPTIONS_GHC -fno-warn-orphans #-}

module Common.Api where

import GHC.Generics
import Testlib.Types
import Data.Aeson as Aeson
import Data.Aeson.TH

data ComplexType = ComplexType
  { complexPerson :: Person
  , complexOtherPerson :: Person
  }
  deriving (Eq, Show, Generic)

deriveJSON defaultOptions ''ComplexType

commonStuff :: String
commonStuff = "Here is a string defined in Common.Api"
