import UIKit
// 1. Написать функцию, которая определяет, четное число или нет.


var numberArray  = [23, 44, 14, 88, 89, 43, 74, 27]

for sorting in numberArray {
    if sorting % 2 == 0 {
        print("\(sorting) четное число")
    } else {
        print("\(sorting) нечетное число")
    }
}


// 2. Написать функцию, которая определяет, делится ли число без остатка на 3.


for sortingTwo in numberArray {
    if sortingTwo % 3 == 0 {
        print("\(sortingTwo) число делится на 3")
    } else {
        print("\(sortingTwo) число не делится на 3")
    }
}


// 3. Создать возрастающий массив из 100 чисел.


var array = [Int] (1...100)
print(array)


// 4. Удалить из этого массива все четные числа и все числа, которые не делятся на 3.


var filterArray = array.filter({$0 % 2 != 0 && $0 %  3 == 0  })
print(filterArray)


// 5. Написать функцию, которая добавляет в массив новое число Фибоначчи, и добавить при помощи нее 100 элементов.


func fibonacciArray(_ n: Int) -> [Double] { // Если Int 100 элементов не добавляется
    var fibonacci: [Double] = [1, 1]
    (2...n).forEach {
    i in fibonacci.append(fibonacci[i - 1] + fibonacci[i - 2])
    }
    return fibonacci
}
print(fibonacciArray(100))


// 6. * Заполнить массив из 100 элементов различными простыми числами. Натуральное число, большее единицы, называется простым, если оно делится только на себя и на единицу. Для нахождения всех простых чисел не больше заданного числа n, следуя методу Эратосфена, нужно выполнить следующие шаги:

func primeNumbers(arrayPassed: [Int]) -> [Int] {
    var primes: [Int] = []
    var newArray = arrayPassed
    while let newP = newArray.first {
        primes.append(newP)
        newArray = newArray.filter { $0 % newP != 0 }
    }
    return primes
}
print(primeNumbers(arrayPassed: Array(2...100)))






