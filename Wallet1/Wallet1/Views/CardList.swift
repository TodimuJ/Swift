//
//  CardList.swift
//  Wallet1
//
//  Created by Todimu Jenrola on 2022-07-30.
//

import Foundation
import SwiftUI

struct CardList: View {
    
    @State var isSelected: Bool = false
    
    let card: [CardType] = [
        CardType(image:"visaIcon", number:"**** **** **** 2061", balance:"$137,448.23", currency:"USD"),
        CardType(image:"mastercard", number:"**** **** **** 4055", balance:"$227,689.83", currency:"CAD"),
        CardType(image:"mastercard", number:"**** **** **** 1972", balance:"$46,548.39", currency:"EUR"),
        CardType(image:"visaIcon", number:"**** **** **** 5558", balance:"$678,221.53", currency:"CAD")
    ]
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false){
            LazyHStack {
//                ForEach(0..<4, id: \.self) { item in
//                    CardView(isSelected: item == 0)
                
                ForEach(card, id: \.id){ item in
                    
                    VStack(alignment: .leading){
                        HStack {
                            Spacer()
                            Image("\(item.image)") //logo
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: 30, height: 25)
                                .foregroundColor(item.currency == "USD" ? .white : .black)
            //                    .background(Color.white)
            //                    .cornerRadius(5)
                                .padding(.top)
                                .padding(.horizontal)
                        }
                        Spacer()
                        Spacer()
                        Spacer()
                        Text("Balance")
                            .font(.caption)
                            .foregroundColor(item.currency == "USD" ? .white : .black)
                            .padding(.bottom)
                        HStack(alignment: .center){
                            Text("\(item.currency)")
                                .foregroundColor(item.currency == "USD" ? .white : .black)
                                .font(.caption)
                            Text("\(item.balance)")
                                .foregroundColor(item.currency == "USD" ? .white : .black)
                                .font(Font.headline.bold())
                        }
                        .padding(.bottom)
                        Spacer()
                        Text("\(item.number)")
                            .font(.caption)
                            .padding(.bottom)
                            .foregroundColor(item.currency == "USD" ? .white : .black)
            //            Spacer()
                    }
                    .frame(width: 138, height: 165)
                    .padding(8)
                    .background(item.currency == "USD" ? Color("cardColor") : Color.white)
                    .cornerRadius(20)
                    .shadow(color: Color.gray.opacity(0.3), radius:5, x:5, y:10)
                }
            }
            .padding(10)
        }
    }
}


struct CardList_Previews: PreviewProvider {
    static var previews: some View {
        Group{
        CardList(isSelected: true)
                .previewLayout(.sizeThatFits)
        
        CardList(isSelected: false)
                .previewLayout(.sizeThatFits)
        }
    }
}
