lessThan20 :: Int -> String
lessThan20 n |
    n > 0 && n < 20 =
    let answers = words ("One Two Three Four Five Six Seven Eight Nine Ten Eleven Twelve Thirteen Fourteen Fifteen Sixteen Seventeen Eighteen Nineteen")
    in answers !! (n-1)

tens :: Int -> String
tens n | n >= 2 && n <= 9 = answers !! (n-2)
    where
        answers = words("Twenty Thirty Forty Fifty Sixty Seventy Eighty Ninety")

number :: Int -> String
number n 
    | n `mod` 3 == 0 && n `mod` 5 == 0 = "FizzBuzz!"
    | n `mod` 3 == 0 = "Fizz!"
    | n `mod` 5 == 0 = "Buzz!"
    | 1 <= n && n < 20 = lessThan20 n 
    | n `mod` 10 == 0 && n < 100 = tens (n `div` 10)
    | n < 100 = tens (n `div` 10) ++ " " ++ lessThan20 (n `mod` 10)

main :: IO ()
main = do
    putStrLn $ "Number 30: " ++ number 30
    putStrLn $ "Number 50: " ++ number 50
    putStrLn $ "Number 75: " ++ number 75
    putStrLn $ "Number 47: " ++ number 47