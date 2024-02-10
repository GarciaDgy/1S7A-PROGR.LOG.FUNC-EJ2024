import Data.List

-- Función para calcular la media de una lista de números
media :: [Double] -> Double
media xs = sum xs / fromIntegral (length xs)

-- Función para calcular la desviación estándar de una lista de números
desviacionEstandar :: [Double] -> Double
desviacionEstandar xs = sqrt (sum (map (\x -> (x - m)^2) xs) / fromIntegral (length xs))
  where m = media xs

-- Función para encontrar valores atípicos en una muestra
valoresAtipicos :: [Double] -> [Double]
valoresAtipicos xs = filter (\x -> puntuacionTipica x > 3 || puntuacionTipica x < -3) xs
  where
    m = media xs
    sd = desviacionEstandar xs
    puntuacionTipica x = (x - m) / sd

-- Ejemplo de uso
main :: IO ()
main = do
  let muestra = [2.0,5.0,18.0,150.0,200.0,306.0]
      atipicos = valoresAtipicos muestra
  putStrLn $ "Muestra original: " ++ show muestra
  putStrLn $ "Valores atípicos: " ++ show 