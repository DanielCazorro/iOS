import UIKit

/** 3. Colecciones de datos **/

// MARK: Arrays

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


// MARK: Dictionary

// Declarando un diccionario [key:value] y lo inicializamos a un diccionario vacío
var lettersDictionary: [Int:String] = [:]

lettersDictionary.count

let keyDictionary = 1
lettersDictionary[keyDictionary] = "Carta a Mónica"
lettersDictionary.count

lettersDictionary.isEmpty
lettersDictionary[keyDictionary]

// Intentamos obtener el valor de una clave inexistente, y nos da nil
lettersDictionary[10]

// Eliminamos el valor asociado a la clave escrita en forkey
lettersDictionary.removeValue(forKey: keyDictionary)
lettersDictionary[keyDictionary]
lettersDictionary.count

lettersDictionary = [1: "Carta a Rachel",
                     9: "Carta a Ross"]
lettersDictionary.count
lettersDictionary[5] = "Carta a Mónica"
lettersDictionary.count

// Devuelve todas las claves del diccionario
lettersDictionary.keys

// Accedemos a todos los valores del diccionario
lettersDictionary.values


// MARK: Set

// Declarando nuestra colección de datos del tipo Set, que contiene elementos del tipo String. Además lo inicializamos vacío
var lettersSet: Set<String> = []

lettersSet.count

// Insertamos un elemento en nuestro Set
lettersSet.insert("Carta a Mónica")
lettersSet.count
lettersSet.isEmpty

// Comprobamos si el Set contiene el elemento
lettersSet.contains("Carta a Mónica")
lettersSet.contains("Curso Swift")

// Eliminamos el elemento del Set
lettersSet.remove("Carta a Mónica")
lettersSet.count

lettersSet = ["Carta a Rachel",
              "Carta a Ross"]
lettersSet.count

// No podemos añadir elementos duplicados a un Set
lettersSet.insert("Carta a Rachel")
lettersSet.count

