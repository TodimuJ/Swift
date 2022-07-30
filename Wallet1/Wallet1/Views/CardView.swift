//
//  CardView.swift
//  Wallet1
//
//  Created by Todimu Jenrola on 2022-07-30.
//

import Foundation
import SwiftUI

struct CardView: View {
    
    @State var isSelected : Bool = false
    
    var body: some View {
        VStack(alignment: .leading){
            HStack {
                Spacer()
                Image("visaIcon") //logo
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 30, height: 25)
                    .foregroundColor(isSelected ? .white : .black)
//                    .background(Color.white)
//                    .cornerRadius(5)
                    .padding(.top)
            }
            Spacer()
            Spacer()
            Spacer()
            Text("Balance")
                .font(.caption)
                .foregroundColor(isSelected ? .white : .black)
//                .padding(.top)
            HStack(alignment: .center){
                Text("USD")
                    .foregroundColor(isSelected ? .white : .black)
                    .font(.caption)
                Text("$23,456.97")
                    .foregroundColor(isSelected ? .white : .black)
                    .font(Font.headline.bold())
            }
            .padding(.bottom)
//            Spacer()
            Text("**** **** **** 2061 ")
                .font(.caption)
                .padding()
                .foregroundColor(isSelected ? .white : .black)
//            Spacer()
        }
        .frame(width: 145, height: 145)
        .padding(8)
        .background(isSelected ? Color("cardColor") : .white)
        .cornerRadius(20)
    }
}


struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        Group{
        CardView(isSelected: true)
                .previewLayout(.sizeThatFits)
        
        CardView(isSelected: false)
                .previewLayout(.sizeThatFits)
        }
    }
}

