-- 1. Suma de elementos en una lista
sumarLista :: [Int] -> Int
sumarLista = foldl (+) 0

-- 2. Factorial
factorial :: Int -> Int
factorial 0 = 1
factorial n = n * factorial (n - 1)

-- 3. Números pares
numerosPares :: Int -> [Int]
numerosPares n = [x | x <- [2,4..n]]

-- 4. Longitud de una cadena
longitudCadena :: String -> Int
longitudCadena = length

-- 5. Reverso de una lista
reversoLista :: [a] -> [a]
reversoLista [] = []
reversoLista (x:xs) = reversoLista xs ++ [x]

-- 6. Duplicar elementos de la lista
duplicarElementos :: [Int] -> [Int]
duplicarElementos xs = concatMap (\x -> [x,x]) xs

-- 7. Numeros pares de la lista
filtrarPares :: [Int] -> [Int]
filtrarPares = filter even

-- 8. Fibonacci
fibonacci :: Int -> Int
fibonacci 0 = 0
fibonacci 1 = 1
fibonacci n = fibonacci (n - 1) + fibonacci (n - 2)

-- 9. Divisores de un número
divisores :: Int -> [Int]
divisores n = [x | x <- [1..n], n `mod` x == 0]

-- 10. Palíndromo
esPalindromo :: String -> Bool
esPalindromo s = s == reverse s

main :: IO ()
main = do
  putStrLn "Suma de elementos en lista: "
  putStrLn (show . sumarLista $ [1, 2, 3, 4])

  putStrLn "Factorial de 5: "
  putStrLn (show . factorial $ 5)

  putStrLn "Números pares hasta 10: "
  putStrLn (show . numerosPares $ 10)
  
  putStrLn "Longitud de la cadena 'hola': "
  putStrLn (show . longitudCadena $ "hola")

  putStrLn "Reverso de la lista [1, 2, 3]: "
  putStrLn (show . reversoLista $ [1, 2, 3])

  putStrLn "Duplicados de la lista [4, 5, 6]: "
  putStrLn (show . duplicarElementos $ [4, 5, 6])

  putStrLn "Números pares de la lista [7, 8, 9, 10]: "
  putStrLn (show . filtrarPares $ [7, 8, 9, 10])

  putStrLn "Fibonacci número 7: "
  putStrLn (show . fibonacci $ 7)

  putStrLn "Divisores de 12: "
  putStrLn (show . divisores $ 12)

  putStrLn "¿'anana' es palíndromo?: "
  putStrLn (show . esPalindromo $ "anana")