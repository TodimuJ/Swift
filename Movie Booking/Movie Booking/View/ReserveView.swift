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
            
            Text("Choose Seats")
                .font(.title2)
                .fontWeight(.semibold)
                .foregroundColor(.white)
            )
            .padding()
            
            // Get width of screen
            GeometryReader{reader in
                let width = reader.frame(in: .global).width
                
                Path {path in
                    // Make a curve for the theatre screen
                    path.move(to: CGPoint(x:0, y:50))
                    path.addCurve(to: CGPoint(x:width, y:50), control1: CGPoint(x:width/2, y:0), control2: CGPoint(x:width, y:50))
                }
                .stroke(Color.white, lineWidth: 3)
            }
            .frame(height: 50)
            .padding(.top,20)
            .padding(.horizontal,30)
            
            
            // Create theatre seats
        })
        .background(Color("reserveBackground"))
    }
}

struct ReserveView_Previews: PreviewProvider{
    static var previews: some View{
        ReserveView()
    }
}
