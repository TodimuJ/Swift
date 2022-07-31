//
//  TransactionRow.swift
//  Wallet1
//
//  Created by Todimu Jenrola on 2022-07-30.
//

import Foundation
import SwiftUI

struct TransactionRow: View {
    
    let transaction: [Transactions] = [
        Transactions(name:"Apple Music", image:"appleMusic", date:"Aug 1 2022 2:03", amount:"-$7.99"),
        Transactions(name:"Emirates", image:"emirates", date:"Jul 30 2022 15:48", amount:"-$5,798.65"),
        Transactions(name:"Starbucks", image:"starbucks", date:"Jul 29 2022 18:39", amount:"-$3.56"),
        Transactions(name:"Elon-Tesla", image:"tesla", date:"Jul 25 2022 3:01", amount:"$9,999.99"),
        Transactions(name:"Spotify", image:"spotify", date:"Jul 19 2022 2:03", amount:"-$12.99"),
        Transactions(name:"Nike", image:"nike", date:"Jul 14 2022 16:22", amount:"-$233.50"),
        Transactions(name:"Asos", image:"asos", date:"Jul 12 2022 13:42", amount:"-$497.89")
    ]
    
    var body: some View {
        LazyVStack{
//        HStack {
            ForEach(transaction, id: \.id){ item in
                HStack{
                Image("\(item.image)")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 30, height: 30)
                    .padding(5)
                    
                VStack(alignment: .leading) {
                    Text("\(item.name)")
                        .font(.headline)
                    Text("\(item.date)")
                        .font(.caption)
                        .foregroundColor(Color(.secondaryLabel))
                }
                Spacer()
                Text("\(item.amount)")
                    .font(.headline)
                }
                .padding(.bottom, 20)
//            }
        }
                
//            Image("visaIcon")
//                .resizable()
//                .aspectRatio(contentMode: .fit)
//                .frame(width: 30, height: 20)
//                .padding(5)
//
//            VStack(alignment: .leading) {
//                Text("Dribble")
//                    .font(.headline)
//                Text("1 Jul 2022 13:47")
//                    .font(.caption)
//                    .foregroundColor(Color(.secondaryLabel))
//            }
//            Spacer()
//            Text("-$59.99")
//                .font(.headline)
        }
        .padding()
    }
}


struct TransactionRow_Previews: PreviewProvider {
    static var previews: some View {
        TransactionRow()
            .previewLayout(.sizeThatFits)
    }
}
