-- Función que devuelve una lista de pares con las palabras y sus longitudes
lengthWords :: String -> [(String, Int)]
lengthWords sentence = zip (words sentence) (map length (words sentence))

-- Ejemplo de uso
main :: IO ()
main = do
  let resultado = lengthWords "Ejercicios de haskell"
  print resultado