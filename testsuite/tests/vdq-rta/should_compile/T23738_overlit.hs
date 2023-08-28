{-# LANGUAGE RequiredTypeArguments #-}
{-# LANGUAGE ExplicitNamespaces #-}
{-# LANGUAGE DataKinds #-}

-- Non-overloaded string literals checked in T23738_basic.
{-# LANGUAGE OverloadedStrings #-}

module T23738_overlit where

checkEq :: forall a b -> (a ~ b) => ()
checkEq (type _) (type _) = ()

result :: ()
result =
  checkEq
  {- type syntax: -} (type "Hello")
  {- term syntax: -}       "Hello"