module Enecuum.Language.Interpreter where

import           Universum
import qualified Enecuum.Language.FreeIO as L
import           Control.Monad.Free

interpretFreeIOL :: L.FreeIOF a -> IO a
interpretFreeIOL (L.FreeIO io next) = next <$> io

runFreeIOL :: L.FreeIOL a -> IO a
runFreeIOL = foldFree interpretFreeIOL