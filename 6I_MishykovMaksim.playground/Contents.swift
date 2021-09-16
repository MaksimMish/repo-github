//: A UIKit based Playground for presenting user interface



import UIKit
import PlaygroundSupport


struct Queue<T> {
    var internalArray = [T]()
    var count: Int{
        return internalArray.count
    }
    mutating func add(item: T){
        internalArray.append(item)
    }
    mutating func add(item: [T]){
        self.internalArray.append(contentsOf: item)
    }
    mutating func remove() -> T?{
        if internalArray.count > 0 {
            return internalArray.removeFirst()
        } else {
            return nil
        }
    }
    
    func filter(array: [T], predicateSomeClosure: (T) -> Bool) -> [T]{
        var tmpArray = [T]()
        for element in array{
            if predicateSomeClosure(element){
                tmpArray.append(element)
            }
        }
        return tmpArray
    }
    
    subscript(index: Int) -> T?{
        if index > internalArray.count || index < 0{
            return nil
        }else{
            return internalArray[index]
        }
    }
}
var queue = Queue<Int>()
queue.add(item: [13,44,345,434,6765,5645,3457,865334])
print(queue)
let filterQueue = queue.filter(array: queue.internalArray) {(i: Int) -> Bool in
    return i % 2 == 0
}
print(filterQueue)
queue.count

