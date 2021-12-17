//
//  DataManager.swift
//  CashappSpoof
//
//  Created by Ethan Keiser on 12/14/21.
//

import Foundation
struct Payment {
    let userName: String
    let amount: String
}

class DataManger {
    static let shared = DataManger()
    var payment = [Payment]()
}
