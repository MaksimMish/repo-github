//: A UIKit based Playground for presenting user interface
  
import UIKit
import PlaygroundSupport

enum engineStart {

    case on
    case off
}

enum window {
    case open
    case close
}
enum trunkState {
    case full
    case empty
}

struct sportCar {
    let carBrand: String
    let carModel: String
    let yearOfCar: Int
    var trunkVolume : trunkState {
    willSet {
    if trunkVolume == .full {
    print("\(carBrand) \(carModel) багажник полон. ")
    } else {
    print("\(carBrand) \(carModel) багажник пуст. ")
            }
        }
    }
    
    var windowCar : window {
    willSet {
    if windowCar == .open {
    print(" У \(carBrand) \(carModel) открыты окна. ")
    } else {    
    print(" У \(carBrand) \(carModel) окна закрыты. ")
            }
        }
    }
    
    var  engineStarting : engineStart {
    willSet {
    if engineStarting == .on {
    print(" \(carBrand) \(carModel) двигатель запущен. " )
    } else {
    print("\(carBrand) \(carModel) двигатель выключен. ")
            }
        }
    }
}

struct trunkCar {
    let carBrand: String
    let carModel: String
    let yearOfCar: Int
    let numberOfWheels: Int
    let liftingCapacity: Int
    var trunkVolume : trunkState {
    willSet {
    if trunkVolume == .full {
    print("\(carBrand) \(carModel) кузов полон. ")
    } else {
    print("\(carBrand) \(carModel) кузов пуст. ")
            }
        }
    }
    
    var windowCar : window {
    willSet {
    if windowCar == .open {
    print(" У \(carBrand) \(carModel) открыты окна. ")
    } else {
    print(" У \(carBrand) \(carModel) окна закрыты. ")
            }
        }
    }
    
    var  engineStarting : engineStart {
    willSet {
    if engineStarting == .on {
    print(" \(carBrand) \(carModel) двигатель запущен. " )
    } else {
    print("\(carBrand) \(carModel) двигатель выключен. ")
            }
        }
    }
}


var firstCar = sportCar(carBrand: "bmw", carModel: "525", yearOfCar: 2020, trunkVolume: .empty, windowCar: .close , engineStarting: .on)
 
var secondCar = trunkCar(carBrand: "KAMAZ", carModel: "5320", yearOfCar: 2015, numberOfWheels: 6, liftingCapacity: 8000, trunkVolume: .full, windowCar: .close, engineStarting: .off)


firstCar.engineStarting = .off
firstCar.trunkVolume = .full
firstCar.windowCar = .open

secondCar.engineStarting = .off
secondCar.trunkVolume = .empty
secondCar.windowCar = .open

print( "Бренд и модель: \(firstCar.carBrand) \(firstCar.carModel)")
