module Enecuum.Tests.Test2 where

import           Universum
import           Data.Time.Clock

import qualified Enecuum.Language.FreeIO as L

test2 :: L.FreeIOL ()
test2 = forM_ [1..] $ \i -> do
    t1 <- L.freeIO getCurrentTime
    L.freeIO $ putTextLn $ "Counter: " <> show i
    t2 <- L.freeIO getCurrentTime
    L.freeIO $ putTextLn $ "Time " <> show (diffUTCTime t1 t2)
