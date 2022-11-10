//
//  ReserveView.swift
//  Movie Booking
//
//  Created by Todimu Jenrola on 2022-11-10.
//

import Foundation
import SwiftUI

struct ReserveView: View {
    var body: some View{
        ScrollView(.vertical, showsIndicators: false, content: {
            
            HStack {
                
                Button(action: {}, label: {
                    Image(systemName: "chevron.left")
                        .font(.title2)
                        .foregroundColor(.white)
                })
                
                Spacer()
                
            }
            .overlay(
            
            Text("Select Seats")
                .font(.title2)
                .fontWeight(.semibold)
                .foregroundColor(.white)
            )
            .padding()
        })
        .background(Color(.gray)).ignoresSafeArea()
    }
}

struct ReserveView_Previews: PreviewProvider{
    static var previews: some View{
        ReserveView()
    }
}
