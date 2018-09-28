module Lib
    ( 
        someFunc, 
        doubleIt,
        doubleRange,
        rotateList
    ) where

import Data.List
import Data.Char
import Data.String

someFunc :: IO ()
someFunc = putStrLn "someFunc"

doubleIt :: Int -> Int
doubleIt x = x * 2

doubleRange :: Int -> [Int]
doubleRange x = [x * 2 | x <- [1..10]]

rotateList :: Int -> [a] -> [a]
rotateList rotations list = zipWith const (drop rotations (cycle list)) list

rotateList' :: Int -> [a] -> [a]
rotateList' rotations list = take (length list) $ drop rotations (cycle list)

modCheck x = filter (test) x
    where test x = mod x 2 == 0

filterByFirstLetter :: Char -> String -> [String] -> [String]
filterByFirstLetter l name acc  
    | name!!0 == l = name:acc
    | otherwise = acc

upperNames :: String -> String
upperNames (x:xs) = (toUpper x):xs
