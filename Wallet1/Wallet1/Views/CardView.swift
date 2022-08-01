//
//  CardView.swift
//  Wallet1
//
//  Created by Todimu Jenrola on 2022-07-30.
//

import Foundation
import SwiftUI

struct CardView: View {
    
    @State var isSelected: Bool
    
    var body: some View {
        
//        VStack(alignment: .leading){
//            HStack {
//                Spacer()
//                Image("visaIcon") //logo
//                    .resizable()
//                    .aspectRatio(contentMode: .fill)
//                    .frame(width: 30, height: 25)
//                    .foregroundColor(isSelected ? .white : .black)
////                    .background(Color.white)
////                    .cornerRadius(5)
//                    .padding(.top)
//                    .padding(.horizontal)
//            }
//            Spacer()
//            Spacer()
//            Spacer()
//            Text("Balance")
//                .font(.caption)
//                .foregroundColor(isSelected ? .white : .black)
//                .padding(.bottom)
//            HStack(alignment: .center){
//                Text("USD")
//                    .foregroundColor(isSelected ? .white : .black)
//                    .font(.caption)
//                Text("$23,456.97")
//                    .foregroundColor(isSelected ? .white : .black)
//                    .font(Font.headline.bold())
//            }
//            .padding(.bottom)
//            Spacer()
//            Text("**** **** **** 2061 ")
//                .font(.caption)
//                .padding(.bottom)
//                .foregroundColor(isSelected ? .white : .black)
////            Spacer()
//        }
//        .frame(width: 138, height: 165)
//        .padding(8)
//        .background(isSelected ? Color("cardColor") : .white)
//        .cornerRadius(20)
        
        CardList(isSelected: true)
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

