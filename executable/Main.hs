-- executable/Main.hs
module Main (main) where 


import System.Random
import Simpleguess (guess)

main :: IO ()
main = do putStrLn "Guess a number between 0 and 100"
          n <- getLine
          randomNumber <- randomRIO (1, 100)
          result <- guess (read n) randomNumber
          print result
