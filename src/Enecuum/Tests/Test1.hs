module Enecuum.Tests.Test1 where

import           Universum
import           Data.Time.Clock

import qualified Enecuum.Language.FreeIO as L

test1 :: Int -> L.FreeIOL ()
test1 i = do
    t1 <- L.freeIO getCurrentTime
    L.freeIO $ putTextLn $ "Counter: " <> show i
    t2 <- L.freeIO getCurrentTime
    L.freeIO $ putTextLn $ "Time " <> show (diffUTCTime t1 t2)
    test1 $ i + 1