//: Playground - noun: a place where people can play

import Foundation

// Loops
var sum = 0
for index in 1...4 {
    sum += index
    //sum is (0 + 1 + 2 + 3 + 4 = 10)
}
sum = 0
for _ in 1..<4 {
    sum += 1
    // sum is (0 + 1 + 1 + 1 = 3)
}

let strArray = ["a", "b", "c", "d"]
for letter in strArray {
    print(letter)
}
print("\n")

// Optionals
var anOptionalInt: Int?
print(anOptionalInt)
//print(anOptional!) //Fatal error
anOptionalInt = 2
print(anOptionalInt)
print(anOptionalInt!)

if let unwrappedOptionalInt = anOptionalInt {
    print(unwrappedOptionalInt)
}
print("\n")

func guardTest() {
    guard let aNumber = anOptionalInt else {
        print("anOptionalInt is nil")
        return
    }
    // Do stuff with aNumber here
    print(aNumber)
}
anOptionalInt = nil
guardTest()

anOptionalInt = 5
guardTest()

// Functions
func addTwoInts(a: Int, b: Int) -> Int {
    return a + b
}
let result = addTwoInts(a: 5, b: 6)
print("\n")

// Tuples as return types
func minMax(array: [Int]) -> (min: Int, max: Int) {
    var currentMin = array[0]
    var currentMax = array[0]
    for value in array[1..<array.count] {
        if value < currentMin {
            currentMin = value
        } else if value > currentMax {
            currentMax = value
        }
    }
    return (currentMin, currentMax)
}
let bounds = minMax(array: [8, -6, 2, 109, 3, 71])
print("min is \(bounds.min) and max is \(bounds.max)")

// Variable parameters
func arithmeticMean(_ numbers: Double...) -> Double {
    var total: Double = 0
    for number in numbers {
        total += number
    }
    return total / Double(numbers.count)
}
arithmeticMean(1, 2, 3, 4, 5)
arithmeticMean(25, 75)

// Closures
func backward(_ s1: String, _ s2: String) -> Bool {
    return s1 > s2
}

let fruits = ["Apple", "Strawberry", "Banana", "Orange", "Kiwi"]
let backwardFruits = fruits.sorted(by: backward)
print(backwardFruits)
let forwardFruits = fruits.sorted(by: { $0 < $1 })
print("\(forwardFruits)\n")


