-- Función que aplica otra función a cada elemento de la lista
aplicarFuncionLista :: (a -> b) -> [a] -> [b]
aplicarFuncionLista _ [] = []        -- Caso base: lista vacía, no hay elementos para aplicar la función
aplicarFuncionLista f (x:xs) = f x : aplicarFuncionLista f xs

-- Función que duplica un número
duplicar :: Int -> Int
duplicar x = x * 2

-- Lista de números
listaNumeros :: [Int]
listaNumeros = [1, 2, 3, 4, 5]

-- Función principal que imprime el resultado
main :: IO ()
main = do
  let resultado = aplicarFuncionLista duplicar listaNumeros
  putStrLn $ "Resultado: " ++ show resultado