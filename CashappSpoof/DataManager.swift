//
//  DataManager.swift
//  CashappSpoof
//
//  Created by Ethan Keiser on 12/14/21.
//

import Foundation
struct Payment {
    let userName: String
    let amount: Int
}
extension String {
    static func toCurrency(_ am: Int) -> String {
        var Amount = NSNumber(integerLiteral: am)
        var currencyFormatter = NumberFormatter()
        currencyFormatter.usesGroupingSeparator = true
        currencyFormatter.numberStyle = .currency
        currencyFormatter.locale = Locale.current

        return currencyFormatter.string(from: Amount)!
    }
}
class DataManger {
    static let shared = DataManger()
    var totalFunds = 20531
   
    var payment = [Payment(userName: "Franco Furry", amount: 1000),
                    Payment(userName: "Roger Wilson", amount: 500),
                    Payment(userName: "Ben Cur", amount: 750),
                    Payment(userName: "Kyle", amount: 300),
                    Payment(userName: "Oscar", amount: 2000),
                    Payment(userName: "Stephanie Belgan", amount: 455),
                    Payment(userName: "Franco Furry", amount: 730),
                    Payment(userName: "Ape", amount: 1200),
                   Payment(userName: "Christian Miller", amount: 1600),
                   Payment(userName: "Timothy", amount: 5000),
                   Payment(userName: "Sara", amount: 1800),
                   Payment(userName: "Emily Wilson", amount: 1700),
                   Payment(userName: "Kyle", amount: 600),
                   Payment(userName: "Roger Wilson", amount: 5600),
                   Payment(userName: "Stephanie", amount: 100),
                   Payment(userName: "Franco Furry", amount: 1200)
        ]
}
