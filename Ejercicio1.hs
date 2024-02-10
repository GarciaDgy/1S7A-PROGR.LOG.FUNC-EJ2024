import qualified Data.Map as Map

-- Función para aplicar descuento a un precio
aplicarDescuento :: Double -> Double -> Double
aplicarDescuento descuento precio = precio - (precio * descuento / 100)

-- Función para aplicar el IVA a un precio
aplicarIVA :: Double -> Double -> Double
aplicarIVA iva precio = precio + (precio * iva / 100)

-- Función para aplicar descuentos o IVA a los productos de la cesta
aplicarDescuentosIVA :: Map.Map String Double -> (Double -> Double) -> Double
aplicarDescuentosIVA cesta funcion = sum $ Map.elems $ Map.map funcion cesta

-- Ejemplo de uso
main :: IO ()
main = do
  let cesta = Map.fromList [("Producto1", 10.0), ("Producto2", 20.0), ("Producto3", 30.0)]
  
  -- Aplicar descuento del 5%
  let precioFinalConDescuento = aplicarDescuentosIVA cesta (\precio -> aplicarDescuento 5 precio)
  putStrLn $ "Precio final con descuento: " ++ show precioFinalConDescuento

  -- Aplicar IVA del 10%
  let precioFinalConIVA = aplicarDescuentosIVA cesta (\precio -> aplicarIVA 10 precio)
  putStrLn $ "Precio final con IVA: " ++ show precioFinalConIVA