//: A UIKit based Playground for presenting user interface
  
import UIKit
import PlaygroundSupport

enum sportMode {
    case on,off
}

enum trunk {
    case full, empty
}
 
class Car {
    var brand: String
    var model: String
    var release: Int
    init(brand: String, model: String, release: Int){
        self.brand = brand
        self.model = model
        self.release = release
    }
    
}

class TrunkCar : Car {
    var luggage: trunk
    init(brand: String, model: String, release: Int, luggage: trunk) {
        self.luggage = luggage
        super.init(brand: brand, model: model, release: release)
    }
    func truncSpase() {
        if luggage == .full {
            print("Кузов полон")
        }else{
            print("Кузов пуст")
        }
    }
}

class SportCar : Car {
    var goFast: sportMode
    init(brand: String, model: String, release: Int, goFast: sportMode ) {
        self.goFast = goFast
        super.init(brand: brand, model: model, release: release)
    }
    func statesSportMode() {
        if goFast == .on {
            print("Спорт режим включен")
        }else{
            print("Спорт режим выключен")
        }
    }
}



let toyota = SportCar(brand: "Toyota", model: "raw4", release:  2012, goFast: .off)
let kamaz = TrunkCar(brand: "kamaz", model:"220-12", release: 1998, luggage: .empty)

kamaz.truncSpase()
toyota.statesSportMode()
