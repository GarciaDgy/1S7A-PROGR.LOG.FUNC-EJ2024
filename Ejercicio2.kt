fun <T> filtrarLista(lista: List<T>, condicion: (T) -> Boolean): List<T> {
    return lista.filter { condicion(it) }
}

fun main() {
    val numeros = listOf(1, 2, 3, 4, 5, 6, 7, 8, 9, 10)

    // Ejemplo: Filtrar solo los números pares
    val numerosPares = filtrarLista(numeros) { it % 2 == 0 }

    // Imprimir el resultado
    println("Lista original: $numeros")
    println("Números pares: $numerosPares")
}
