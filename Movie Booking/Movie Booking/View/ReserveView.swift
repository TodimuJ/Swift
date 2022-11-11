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
            
            let totalSeats = 42
            let top = 0..<(totalSeats-24)
            let middle = (totalSeats-24)..<(totalSeats-18)
            let bottom = (totalSeats-18)..<totalSeats
        
//            HStack(spacing: 20){
//
//                let columns = Array(repeating: GridItem(.flexible(), spacing: 2),count: 8)
//
//                // Left side of theatre
//                LazyVGrid(columns: columns, spacing: 2, content: {
//
//                    ForEach(0..<totalSeats){index in
//                        SeatView(index: index)
//                    }
//
//                })
//
//                // Right side of theatre
////                LazyVGrid(columns: columns, spacing: 10, content: {
////
////                    ForEach(rightSide,id: \.self){index in
////                        SeatView(index: index)
////                    }
////
////                })
//
//            }
//            .padding()
//            .padding(.top,40)
            
            VStack(spacing: 20){
                
                let columns = Array(repeating: GridItem(.flexible(), spacing: 30),count: 3)
                let column1 = Array(repeating: GridItem(.flexible(), spacing: 30),count: 1)
            
                // Left side of theatre
                LazyHGrid(rows: columns, spacing: 10, content: {
                    
                    ForEach(top,id: \.self){index in
                        SeatView(index: index)
                    }
                    
                })

                LazyHGrid(rows: column1, spacing: 5, content: {

                    ForEach(middle,id: \.self){index in
                        SeatView(index: index)
                    }

                })
                
                LazyHGrid(rows: columns, spacing: 10, content: {

                    ForEach(bottom,id: \.self){index in
                        SeatView(index: index)
                    }

                })
            
            }
            .padding()
            .padding(.top,40)
            
        })
        .background(Color("reserveBackground"))
    }
}


struct SeatView: View {
    var index: Int
    var body:some View {
        ZStack{
//            RoundedRectangle(cornerRadius: 4)
            Image("selected")
                .resizable()
                .frame(width:50, height:50)
                .foregroundColor(Color.white)
                .opacity(index==2 || index==6 || index==9 || index==17 || index==26 || index==41 ? 0 : 1)
        }
    }
}



struct ReserveView_Previews: PreviewProvider{
    static var previews: some View{
        ReserveView()
    }
}
