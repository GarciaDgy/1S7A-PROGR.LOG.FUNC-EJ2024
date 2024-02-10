fun clasificarNotas(notas: Map<String, Int>): Map<String, String> {
    val clasificacion = mutableMapOf<String, String>()

    for ((asignatura, nota) in notas) {
        val clasificacionAsignatura = when (nota) {
            in 95..100 -> "Excelente"
            in 85..94 -> "Notable"
            in 75..84 -> "Bueno"
            in 70..74 -> "Suficiente"
            else -> "Desempeño insuficiente"
        }
        clasificacion[asignatura.toUpperCase()] = clasificacionAsignatura
    }

    return clasificacion
}

fun main() {
    val notasAlumno = mapOf("Lenguajes" to 66, "Redes" to 78, "Programacion Web" to 88, "Inglés" to 95, "Sistemas" to 73)

    val clasificacionNotas = clasificarNotas(notasAlumno)

    println("Notas originales: $notasAlumno")
    println("Clasificación: $clasificacionNotas")
}