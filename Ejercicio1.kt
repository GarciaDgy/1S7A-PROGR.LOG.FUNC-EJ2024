import kotlin.math.*

fun main() {
    println("Calculadora Científica")
    println("1. Seno")
    println("2. Coseno")
    println("3. Tangente")
    println("4. Exponencial")
    println("5. Logaritmo Neperiano")

    print("Seleccione la función (1-5): ")
    val opcion = readLine()?.toIntOrNull()

    if (opcion != null && opcion in 1..5) {
        print("Ingrese el valor: ")
        val valor = readLine()?.toDoubleOrNull()

        if (valor != null) {
            when (opcion) {
                1 -> imprimirTabla("Seno", valor) { x -> sin(x) }
                2 -> imprimirTabla("Coseno", valor) { x -> cos(x) }
                3 -> imprimirTabla("Tangente", valor) { x -> tan(x) }
                4 -> imprimirTabla("Exponencial", valor) { x -> exp(x) }
                5 -> imprimirTabla("Logaritmo Neperiano", valor) { x -> ln(x) }
            }
        } else {
            println("Error: Ingrese un valor numérico válido.")
        }
    } else {
        println("Error: Seleccione una opción válida (1-5).")
    }
}

fun imprimirTabla(nombreFuncion: String, valor: Double, funcion: (Double) -> Double) {
    println("Tabla de $nombreFuncion para valores de 1 a $valor:")
    println("-------------------------------")
    println("|   Valor   |   $nombreFuncion   |")
    println("-------------------------------")

    for (i in 1..valor.toInt()) {
        val resultado = funcion(i.toDouble())
        println("|   $i       |   $resultado       |")
    }

    println("-------------------------------")
}
