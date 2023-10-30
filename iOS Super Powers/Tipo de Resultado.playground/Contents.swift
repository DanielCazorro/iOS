import UIKit

// MARK: - Tipo de resultado -

// MARK: Sin Control de errores

enum ErrorSum {
    case arrayEmpty, 
         dataInvalid
}

let array1 = [5,5,5,5,4,1,2,3]
let array2 = [-5,6,7,7,-4,3,2,5]

func SumNumber(nums: [Int]) -> Int? {
    if nums.isEmpty {
        print("The number is empty")
        return nil
    }
    
    // Esta fucnión comprueba que alguno no sea menor que cero
    if !(nums.allSatisfy { $0 >= 0 }) {
        print("Some number value is less than zero")
        return nil
    }
    
    return nums.reduce(0, +)
}

SumNumber(nums: array1)
SumNumber(nums: array2)
SumNumber(nums: [])

// En caso de error nos devuelve nil pero no sabemos que es lo que ha pasado

print("----------------------\n----------------------")

// MARK: Control de errores do/catch

enum ErrorSumDoCatch:Error {
    case arrayEmpty2, invalidData
}

let array3 = [5,5,5,5,4,1,2,3]
let array4 = [-5,6,7,7,-4,3,2,5]

func SumNumberDoCatch(nums: [Int]) throws -> Int {
    if nums.isEmpty {
        throw ErrorSumDoCatch.arrayEmpty2
    }
    
    if !(nums.allSatisfy { $0 >= 0 }) {
        throw ErrorSumDoCatch.invalidData
    }
    
    return nums.reduce(0,+)
}

do {
    let sum4 = try SumNumberDoCatch(nums: array3)
    let sum5 = try SumNumberDoCatch(nums: array4)
    let sum6 = try SumNumberDoCatch(nums: [])
    
} catch ErrorSumDoCatch.arrayEmpty2 {
    print("Array Empty")
} catch ErrorSumDoCatch.invalidData {
    print("Array Data Invalid")
} catch {
    print("\(error)")
}
