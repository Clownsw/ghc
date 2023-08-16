{-# LANGUAGE TemplateHaskell #-}

module TH_spliceD1_Lib where
import Language.Haskell.TH

foo :: Q [Dec]
foo = sequence [funD (mkName "f")
       [
         clause
           (map visAP [varP $ mkName "c",varP $ mkName "c"])
           (normalB $ [| undefined |])
           []
       ]]
