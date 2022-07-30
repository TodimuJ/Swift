//
//  CardTypes.swift
//  Wallet1
//
//  Created by Todimu Jenrola on 2022-07-30.
//

import Foundation

struct CardType: Identifiable {
    var id: UUID = UUID()
    var image: String
    var number: String
    var balance: String
    var currency: String
}
