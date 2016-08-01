-- library/Simpleguess.hs
module Simpleguess (guess) where


guess :: Int -> Int -> IO Bool
guess inputNumber systemNumber
    | inputNumber == systemNumber = do putStrLn "You're right!"
                                       return True
    | inputNumber < systemNumber = guessOnceMore inputNumber systemNumber "My number is bigger..."
    | inputNumber > systemNumber = guessOnceMore inputNumber systemNumber "My number is smaller..."
    | otherwise = guessOnceMore inputNumber systemNumber "Bzzzzz wrong!"

guessOnceMore :: Int -> Int -> String -> IO Bool
guessOnceMore inputNumber systemNumber msg = do putStrLn msg
                                                inpStr <- getLine
                                                guess (read inpStr) systemNumber

