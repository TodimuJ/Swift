//
//  CardList.swift
//  Wallet1
//
//  Created by Todimu Jenrola on 2022-07-30.
//

import Foundation
import SwiftUI

struct CardList: View {
    
    let card: [CardType] = [
        CardType(image:"visa", number:"appleMusic", balance:"$137,448.23", currency:"USD"),
        CardType(image:"visa", number:"appleMusic", balance:"$137,448.23", currency:"USD"),
        CardType(image:"visa", number:"appleMusic", balance:"$137,448.23", currency:"USD"),
        CardType(image:"visa", number:"appleMusic", balance:"$137,448.23", currency:"USD"),
    ]
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false){
            LazyHStack {
                ForEach(0..<4, id: \.self) { item in
                    CardView(isSelected: item == 0)
                        .shadow(color: Color.gray.opacity(0.3), radius:5, x:5, y:10)
                }
            }
            .padding(10)
        }
    }
}
