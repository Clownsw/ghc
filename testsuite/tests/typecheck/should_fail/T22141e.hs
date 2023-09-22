{-# LANGUAGE NoDataKinds #-}
module T22141e where

import Data.Kind (Type)
import Data.Proxy (Proxy)

type D :: Proxy 42 -> Type
data D a
