//
//  CardView.swift
//  Wallet1
//
//  Created by Todimu Jenrola on 2022-07-30.
//

import Foundation
import SwiftUI

struct CardView: View {
    
    var body: some View {
        VStack(alignment: .leading){
            HStack {
                Spacer()
                Image("") //logo
            }
            Spacer()
            Text("Balance")
                .font(.caption)
            HStack {
                Text("USD")
                    .font(.caption)
                    .fontWeight(.bold)
                Text("$23,456.97")
                    .font(.headline)
            }
            Spacer()
            Text("**** **** **** 2061 ")
                .font(.caption)
            Spacer()
        }
        .padding(8)
        .background(Color.blue)
        .cornerRadius(20)
        .frame(width: 145, height: 145)
        
    }
}


struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView()
    }
}
