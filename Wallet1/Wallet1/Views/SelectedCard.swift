//
//  SelectedCard.swift
//  Wallet1
//
//  Created by Todimu Jenrola on 2022-07-30.
//

import Foundation
import SwiftUI


struct SelectCard: View{
    
    var body: some View {
        NavigationView{
            CardList()
            ScrollView(.vertical){
                TransactionView()
            }
            .background(Color.gray.opacity(0.15))
            .navigationTitle(Text("My Wallet"))
        }
    }
}
