//
//  ContentView.swift
//  Wallet1
//
//  Created by Todimu Jenrola on 2022-07-30.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ScrollView{
            LazyHStack {
                ForEach(0..<10, id: \.self) { item in
                    CardView(isSelected: item == 0)
                        .shadow(color: .gray, radius: 10)
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
