{-# LANGUAGE NoDataKinds #-}
{-# LANGUAGE UnboxedTuples #-}
module T22141c where

import Data.Kind (Type)
import Data.Proxy (Proxy)

type D :: Proxy (# Type, Type #) -> Type
data D a
