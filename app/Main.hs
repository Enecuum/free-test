module Main where

import Universum
import Interpreters
import Tests

main :: IO ()
main = runFreeIOL $ test2
