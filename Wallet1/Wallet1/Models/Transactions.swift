//
//  Transactions.swift
//  Wallet1
//
//  Created by Todimu Jenrola on 2022-07-30.
//

import Foundation

struct Transactions: Identifiable {
    var id: UUID = UUID()
    var name: String
    var image: String
    var date: String
    var amount: String
}
