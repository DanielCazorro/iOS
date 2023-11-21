import UIKit

/** 3. Colecciones de datos **/

var letters: [String] = []

// Nos muestra el número de Strings que tiene mi array
letters.count

// Añadae un String al array
letters.append("Carta a Mónica")
letters.count

// Añade otro String al array
letters.append("Carta a Joey")
letters.count

// Accede a los elementos de la lista (siempre empezamos en el 0)
letters[1]

// Elimina un elemento de la lista: El que se encuentra en la posición indicada
letters.remove(at: 0)
letters.count
letters

// Nos da un boolean. True si está vacía
letters.isEmpty

// Elimina todos los elementos del array
letters.removeAll()
letters.isEmpty


// Aquí creamos el array ya con sus elementos
var lettersPrice = [9.99, 3.99, 1.99, 0.99]
lettersPrice.append(0.10)

// Podemos añadir un conjunto de elementos
lettersPrice.append(contentsOf: [100.9,90.9,80.9])
lettersPrice.sort()
