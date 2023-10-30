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

print("SumNumber: (nums: array1)")
SumNumber(nums: array1)
print("SumNumber: (nums: array2")
SumNumber(nums: array2)
print("SumNumber: (nums: [])")
SumNumber(nums: [])
