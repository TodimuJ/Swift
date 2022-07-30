//
//  Trend.swift
//  Wallet1
//
//  Created by Todimu Jenrola on 2022-07-30.
//

import Foundation

import SwiftUI


struct Trend: View{
    
    var body: some View {
        NavigationView{
            ScrollView(.vertical){
                CardList()
                TransactionView()
            }
            .background(Color.gray.opacity(0.15))
            .navigationTitle(Text("My Wallet"))
        }
    }
}
