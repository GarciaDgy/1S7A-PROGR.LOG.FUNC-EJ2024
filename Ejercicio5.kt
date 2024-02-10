fun buscarInmuebles(inmuebles: List<Map<String, Any>>, presupuesto: Double): List<Map<String, Any>> {
    val inmueblesFiltrados = mutableListOf<Map<String, Any>>()

    for (inmueble in inmuebles) {
        val precio = calcularPrecio(inmueble)
        if (precio <= presupuesto) {
            val inmuebleConPrecio = inmueble.toMutableMap()
            inmuebleConPrecio["precio"] = precio
            inmueblesFiltrados.add(inmuebleConPrecio)
        }
    }

    return inmueblesFiltrados
}

fun calcularPrecio(inmueble: Map<String, Any>): Double {
    val metros = inmueble["metros"] as Int
    val habitaciones = inmueble["habitaciones"] as Int
    val garaje = if (inmueble["garaje"] as Boolean) 1 else 0
    val antiguedad = 2024 - (inmueble["año"] as Int)

    val precioBase = (metros * 1000 + habitaciones * 5000 + garaje * 15000).toDouble()
    val factorAntiguedad = 1 - antiguedad / 100.0

    return if (inmueble["zona"] == "A") {
        precioBase * factorAntiguedad
    } else {
        precioBase * factorAntiguedad * 1.5
    }
}

fun main() {
    val inmuebles = listOf(
        mapOf("año" to 2000, "metros" to 100, "habitaciones" to 3, "garaje" to true, "zona" to "A"),
        mapOf("año" to 2012, "metros" to 60, "habitaciones" to 2, "garaje" to true, "zona" to "B"),
        mapOf("año" to 1980, "metros" to 120, "habitaciones" to 4, "garaje" to false, "zona" to "A"),
        mapOf("año" to 2005, "metros" to 75, "habitaciones" to 3, "garaje" to true, "zona" to "B"),
        mapOf("año" to 2015, "metros" to 90, "habitaciones" to 2, "garaje" to false, "zona" to "A")
    )

    val presupuesto = 120000.0
    val inmueblesFiltrados = buscarInmuebles(inmuebles, presupuesto)

    println("Inmuebles encontrados:")
    for (inmueble in inmueblesFiltrados) {
        println(inmueble)
    }
}
