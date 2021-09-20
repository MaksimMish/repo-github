
import UIKit
import PlaygroundSupport


enum communicationErrors: Error{
case noConnection
case zeroBalance
}
class mobile{
    var connection = Bool()
    var balance = Int()
    init(connection: Bool, balance: Int){
    self.connection = connection
    self.balance = balance
    }

func communicationStatus() throws{
    if connection == false{
        throw communicationErrors.noConnection
    }
}
func balancStatus() throws{
    if balance < 5{
        throw communicationErrors.zeroBalance
        }
    }
}

var iPhone = mobile(connection: false, balance: 3)
do{
    try iPhone.communicationStatus()
} catch communicationErrors.noConnection{
    print("Нет связи")
}
do{
    try iPhone.balancStatus()
} catch communicationErrors.zeroBalance{
    print("Недостаточно средств")
}
