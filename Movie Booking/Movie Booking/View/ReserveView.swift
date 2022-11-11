//
//  ReserveView.swift
//  Movie Booking
//
//  Created by Todimu Jenrola on 2022-11-10.
//

import Foundation
import SwiftUI

struct ReserveView: View {
    
    @State var booked : [Int] = [4,5,12,16,18,20,28,31]
    @State var selected : [Int] = []
    @State var seatImage = "selected"
    
    var body: some View{
        ScrollView(.vertical, showsIndicators: false, content: {
            
            HStack {
                
                Button(action: {}, label: {
                    Image(systemName: "arrow.left")
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
                .shadow(color:.white, radius: 5)
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
                        
                        // Print out selected seat
//                        let seat = index >= 17 ? index - 1 : index
                        let seat = index
                        SeatView(index: index, seat: index,  booked: $booked, selected: $selected, seatImage: $seatImage)      .contentShape(Rectangle())
                            .onTapGesture {
                                // Check if seat already selected, else add to array and change color
                                if selected.contains(seat){
                                    selected.removeAll{(removeSeat) -> Bool in
                                        return removeSeat == seat
                                    }
                                    return
                                }
                                // Add selected seat
                                selected.append(seat)                            }
                    }
                    
                })

                LazyHGrid(rows: column1, spacing: 5, content: {

                    ForEach(middle,id: \.self){index in
                        // Print out selected seat
//                        let seat = index >= 17 ? index - 1 : index
                        let seat = index
                        SeatView(index: index, seat: index,  booked: $booked, selected: $selected, seatImage: $seatImage)
                            .contentShape(Rectangle())
                            .onTapGesture {
                                
                                // Check if seat already selected, else add to array and change color
                                if selected.contains(seat){
                                    selected.removeAll{(removeSeat) -> Bool in
                                        return removeSeat == seat
                                    }
                                    return
                                }
                                // Add selected seat
                                selected.append(seat)
                            }
                    }

                })
                
                LazyHGrid(rows: columns, spacing: 10, content: {

                    ForEach(bottom,id: \.self){index in
                        // Print out selected seat
//                        let seat = index >= 17 ? index - 1 : index
                        let seat = index
                        SeatView(index: index, seat: index,  booked: $booked, selected: $selected, seatImage: $seatImage)
                            .contentShape(Rectangle())
                            .onTapGesture {
                                seatImage = "available"
                                // Check if seat already selected, else add to array and change color
                                if selected.contains(seat){
                                    
                                    selected.removeAll{(removeSeat) -> Bool in
                                        
                                        return removeSeat == seat
                                    }
                                    
                                    return
                                }
                                // Add selected seat
                                
                                selected.append(seat)
                            }
                    }

                })
            
            }
            .padding()
            .padding(.top,40)
            
            
            HStack(spacing:40) {
                Text("Available")
                    .overlay(
                        Circle()
                            .frame(width:10)
                            .offset(x:-50, y:0)
                            .foregroundColor(Color.white)
                    )
                Text("Reserved")
                    .overlay(
                        Circle()
                            .frame(width:10)
                            .offset(x:-50, y:0)
                            .foregroundColor(Color("reservedSeat"))
                    )
                Text("Selected")
                    .overlay(
                        Circle()
                            .frame(width:10)
                            .offset(x:-50, y:0)
                            .foregroundColor(Color("selectedSeat"))
                    )
            }
            .padding(.top, 30)
            
        })
//        .background(Color("reserveBackground"))
        .background(Color.gray)
    }
}


struct SeatView: View {
    var index: Int
    var seat: Int
    
    @Binding var booked: [Int]
    @Binding var selected: [Int]
    @Binding var seatImage: String
    
    
    var body:some View {
        ZStack{
//            RoundedRectangle(cornerRadius: 4)
            Image(seatImage)
                .resizable()
                .frame(width:50, height:50)
                .foregroundColor(booked.contains(index) ? Color("reservedSeat") : Color.white)
//                .foregroundColor(selected.contains(seat) ? Color("reservedSeat") : Color.clear)
                .opacity(index==2 || index==6 || index==9 || index==17 || index==26 || index==41 ? 0 : 1)
        }
//        .disabled(booked.contains(seat))
    }
}



struct ReserveView_Previews: PreviewProvider{
    static var previews: some View{
        ReserveView()
    }
}
