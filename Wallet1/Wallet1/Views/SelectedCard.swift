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
            ScrollView(.vertical){
                CardView(isSelected: true)
                TransactionView()
            }
//            .background(Color.gray.opacity(0.2))
            .background(LinearGradient(colors: [.gray.opacity(0.15), .gray.opacity(0.2)],
                                       startPoint: .topLeading,
                                       endPoint: .bottomLeading))
            .navigationTitle(Text("My Wallet"))
        }
    }
}
