module Lib
    ( 
        someFunc, 
        doubleIt,
        doubleRange
    ) where

someFunc :: IO ()
someFunc = putStrLn "someFunc"

doubleIt :: Int -> Int
doubleIt x = x * 2

doubleRange :: Int -> [Int]
doubleRange x = [x * 2 | x <- [1..10]]