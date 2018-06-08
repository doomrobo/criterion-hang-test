module Main where

import qualified Criterion as C
import qualified Criterion.Main as C
import qualified Criterion.Measurement as C

main :: IO ()
main = do
  let b =  C.nf id (0 :: Int)
  -- If you uncomment the line below, the program will terminate within 30s
  --C.defaultMain [C.bench "id" b]
  x <- C.runBenchmark b 0.0
  print x
