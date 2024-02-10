-- Función para calcular el módulo de un vector
moduloVector :: [Double] -> Double
moduloVector vector = sqrt $ sum $ map (^2) vector

-- Ejemplo de uso
main :: IO ()
main = do
  let vectorEjemplo = [3.0, 4.0]
  let modulo = moduloVector vectorEjemplo
  print modulo