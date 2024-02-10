fun clasificarCalificaciones(calificaciones: List<Int>): List<String> {
    return calificaciones.map { calificacion ->
        when (calificacion) {
            in 95..100 -> "Excelente"
            in 85..94 -> "Notable"
            in 75..84 -> "Bueno"
            in 70..74 -> "Suficiente"
            else -> "Desempeño insuficiente"
        }
    }
}

fun main() {
    val calificaciones = listOf(100,93,78,73,50,96,89,80,70,40)

    val clasificaciones = clasificarCalificaciones(calificaciones)

    println("Calificaciones originales: $calificaciones")
    println("Clasificación: $clasificaciones")