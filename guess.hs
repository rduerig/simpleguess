import System.Random

main :: IO ()
main = do putStrLn "Guess a number between 0 and 100"
          n <- getLine
          randomNumber <- randomRIO (1, 100)
          putStrLn ("Hint, it's just " ++ (show randomNumber))
          guess (read n) randomNumber

guess :: Int -> Int -> IO ()
guess inputNumber systemNumber = 
        if (inputNumber == systemNumber)
           then do putStrLn "You're right!"
                   return ()
           else do putStrLn "Bzzzzz wrong!"
                   inpStr <- getLine
                   guess (read inpStr) systemNumber
