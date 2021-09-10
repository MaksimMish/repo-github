//: A UIKit based Playground for presenting user interface
  
import UIKit
import PlaygroundSupport

enum window {
    case open, closed
}

enum engine {
    case on, off
}

enum sportMode {
    case on,off
}

enum trunk {
    case full, empty
}
 
protocol Car {
    var brand: String {get}
    var model: String {get}
    var release: Int{get}
    var windowState: window {get set}
    var engineState: engine {get set}

}

extension Car {
    mutating func changeEngineState(engineState: engine){
        self.engineState = engineState
    }
    mutating func changeWindowState(windowState: window){
        self.windowState = windowState
    }
}

class basicCar: Car {
    var brand: String
    var model: String
    var release: Int
    var windowState: window
    var engineState: engine
    init (brand: String, model: String, release: Int, windowState: window, engineState: engine){
        self.brand = brand
        self.model = model
        self.release = release
        self.windowState = windowState
        self.engineState = engineState
    }
    
}

class TrunkCar: basicCar, CustomStringConvertible{
    var trunkState: trunk = .empty
    var description: String{
        return "\(brand) \(model) двигатель \(engineState), окна \(windowState), кузов \(trunkState) выпущен в \(release) году "
    }
}

class SportCar: basicCar, CustomStringConvertible{
    var goFast: sportMode = .off
    var description: String{
        return "\(brand) \(model) двигатель \(engineState), окна \(windowState), спорт режим \(goFast) выпущен в \(release) году "
    }
}

var toyta = SportCar(brand: "Toyta", model:"RAW4", release: 2012, windowState:.closed, engineState: .off)
var kamaz = TrunkCar(brand: "kamaz", model: "21019", release: 1998, windowState: .closed, engineState: .off)

print(kamaz)
print(toyta)

kamaz.trunkState = trunk.full
toyta.goFast = sportMode.on

print(toyta)
print(kamaz)






