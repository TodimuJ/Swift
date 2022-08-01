//
//  Profile.swift
//  Wallet1
//
//  Created by Todimu Jenrola on 2022-07-30.
//

import Foundation

import SwiftUI


struct Profile: View{
    
    var body: some View {
        NavigationView{
            ScrollView(.vertical){
                CardList()
                TransactionView()
            }
            .background(Color.red.opacity(0.45))
            .navigationTitle(Text("My Wallet"))
        }
    }
}
