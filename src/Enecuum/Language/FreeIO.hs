module Enecuum.Language.FreeIO where

import           Universum
import           Control.Monad.Free

data FreeIOF a where
    FreeIO :: IO a -> (a -> next) -> FreeIOF next

instance Functor FreeIOF where
    fmap g (FreeIO io next) = FreeIO io (g . next)

type FreeIOL = Free FreeIOF

freeIO :: IO a -> FreeIOL a
freeIO io = liftF $ FreeIO io identity 