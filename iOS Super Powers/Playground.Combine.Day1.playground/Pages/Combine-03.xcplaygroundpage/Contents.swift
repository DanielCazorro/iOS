//: [Previous](@previous)

import Combine

// MARK: - Operadores. Vamos a transformar los datos el publicador en el Strem hasta el suscriptor -
//          Se usa los PIPELINES (la salida del primero es la entrada del segundo)



print("------------------------------------------")
print("Ejercicio 1. Operadores de transformacion")
print("------------------------------------------")


let publisher1 = [1,2,3].publisher

let suscriber1 = publisher1
    // Operadores de transformación
    .map{ data in // Aquí recibo un INT
        // Quiero devolver un String, concatenando el símbolo del Euro
        "\(data) €"  // Aquí podríamos poner return "\(data) €", pero cuando solo hay una línea de código no es necesario poner return
    }
    .map{
        "Hola \($0)"
    }
/*   ESTE CÓDIGO ES IGUAL QUE EL SUPERIOR, SOLO QUE UTILIZAMOS $0 PARA QUE DEVUELVA EL PRIMER VALOR RECIBIDO
    .map{ data in
        "Hola \(data)"
    }
*/
    //Suscriptor
    .sink { data in
            // Suscriptor.... llega el dato...
        print("Recibo \(data)") // Aquí podríamos poner return print("Recibo \(data)"), pero cuando solo hay una línea de código no es necesario poner return
    }


print("-----------------------------------")
print("OPERADORES DE FILTRADO")
print("-----------------------------------")

let nums = [1,1,2,2,3,4,5,6,7,8,9].publisher

// Filtro multiplos de 3
nums
    .filter { $0.isMultiple(of: 3) }
    .sink {
        print("Múltiplos 3: \($0)")
    }

// Filtro eliminar duplicados
nums
    .removeDuplicates()
    .sink {
        print("Borrar duplicados: \($0)")
    }

// Filtro: Primer Resto a cero
nums
    .first { $0 % 3 == 0 }
    .sink {
        print("Primer valor: \($0)")
    }
// Filtro: Ultimo Resto a cero
nums
    .last { $0 % 3 == 0 }
    .sink {
        print("Último valor: \($0)")
    }


//: [Next](@next)
