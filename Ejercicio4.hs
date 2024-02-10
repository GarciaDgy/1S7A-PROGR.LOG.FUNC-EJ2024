import qualified Data.Map as Map
import Data.Char (toUpper)

-- Función para obtener la calificación correspondiente a una nota
obtenerCalificacion :: Double -> String
obtenerCalificacion nota
  | nota >= 95 = "Excelente"
  | nota >= 85 = "Notable"
  | nota >= 75 = "Bueno"
  | nota >= 70 = "Suficiente"
  | otherwise = "Desempenio insuficiente"

-- Función para procesar el diccionario de asignaturas y notas
procesarCalificaciones :: Map.Map String Double -> Map.Map String String
procesarCalificaciones diccionarioNotas =
  Map.fromList [(map toUpper asignatura, obtenerCalificacion nota) | (asignatura, nota) <- Map.toList diccionarioNotas]

-- Ejemplo de uso
main :: IO ()
main = do
  let notasAlumno = Map.fromList [("Automatas", 100.0), ("Calculo Diferencial", 94.0), ("Ingles", 80.0), ("Programacion Web", 72.0), ("Redes", 30.0)]
  let calificaciones = procesarCalificaciones notasAlumno
  print calificaciones
