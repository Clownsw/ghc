{-# LANGUAGE NoDataKinds #-}
{-# LANGUAGE UnboxedSums #-}
module T22141d where

import Data.Kind (Type)
import Data.Proxy (Proxy)

type D :: Proxy (# Type | Type #) -> Type
data D a
