//
//  CardTransactionView.swift
//  Wallet1
//
//  Created by Todimu Jenrola on 2022-07-30.
//

import Foundation
import SwiftUI

struct TransactionView: View {
    

    var body: some View {
        VStack(spacing: -20) {
            HStack{
                Text("Transfer Funds")
                Image(systemName: "arrow.right.arrow.left.circle.fill")
                    .foregroundColor(Color("cardColor"))
                Spacer()
                Text("Add Recipient")
                Image(systemName: "plus.circle.fill")
                    .foregroundColor(Color("cardColor"))

            }
//            .font(.headline)
            .font(.system(size: 15, weight: .bold))
            .padding(20)
            .padding(.bottom, 30)
            .foregroundColor(Color.white)
            .background(Color("transactionColor"))
            .cornerRadius(15)
            .offset(x:0, y:10)
            
//            LazyVStack {
//                ForEach(0..<6, id: \.self) { item in
//                    TransactionRow()
//                }
//            }
            
            
            TransactionRow()
                .background(Color.white)
                .cornerRadius(20)
        }
        .padding(.horizontal)
    }
}

struct CardTransaction_Previews: PreviewProvider {
    static var previews: some View {
        TransactionView()
            .previewLayout(.sizeThatFits)
    }
}
