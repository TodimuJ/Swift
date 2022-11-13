//
//  TicketView.swift
//  Movie Booking
//
//  Created by Todimu Jenrola on 2022-11-13.
//

import Foundation
import SwiftUI

struct TicketView: View {
    @State var isLoading = false
    
    var body:some View {
        
        ZStack{
            VStack{
                ZStack{
                    VStack(spacing: 0){
                        VStack(spacing:4){
                            Text("Black Panther")
                                .fontWeight(.bold)
                            Text("Wakanda Forever")
                        }
                        .padding(EdgeInsets(top:20, leading:30, bottom:0, trailing: 30))
                        .frame(width:250, height: 325, alignment: .top)
                        .foregroundColor(.white)
                        .background(
                            Image("wakanda")
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .cornerRadius(18)
                        )
                        .shadow(radius: 5)
                        .overlay(
                            Circle()
                                .foregroundColor(.white.opacity(1))
                                .frame(width:50, height: 50)
                                .offset(x:-120, y:180)
                        )
                        .overlay(
                            Circle()
                                .foregroundColor(.white.opacity(1))
                                .frame(width:50, height: 50)
                                .offset(x:120, y:180)
                        )
                    }
                    .frame(height: 460)
                    .font(.footnote)
                }
                
                HStack{
                    Image("location")
                        .resizable()
                        .foregroundColor(.red.opacity(0.8))
                        .frame(width:20, height: 20)
                    
                    Text("Cineplex Cinemas Yonge-Dundas")
//                        .font(.subheadline)
                }
                
                Image("barcode")
                    .resizable()
                    .frame(width: 75, height: 75)
                    .padding(.bottom)
                
                
                HStack(spacing: 50){
                    VStack{
                        Text("Nov 19")
                        Text("Date")
                    }
                    
                    VStack{
                        Text("19:15")
                        Text("Time")
                    }
                    
                    VStack{
                        Text("G3")
                        Text("Seat")
                    }
                    
                    VStack{
                        Text("$25")
                        Text("Price")
                    }
                }
                .font(.subheadline)
                .foregroundColor(.primary)
                
                Text("Cancel Ticket")
                     .font(.title3)
                     .fontWeight(.semibold)
                     .foregroundColor(Color.black)
                     .frame(width: 300, height: 40, alignment: .center)
                     .background(Color.white)
                     .overlay(
                         RoundedRectangle(cornerRadius: 10)
                             .stroke(.black, lineWidth: 2)
                     )
                     .padding(.horizontal)
                     .padding(.top, 70)
                
                Spacer()
            }
            
            
            
            
            if isLoading {
                ZStack {
                    Color(.systemBackground)
                        .ignoresSafeArea()
                        .opacity(1)
                    
                    ProgressView()
                        .progressViewStyle(CircularProgressViewStyle(tint: .blue))
                        .scaleEffect(3)
                }
            }
        }
        .onAppear{bookTicketScreen()}
    }
    
    func bookTicketScreen(){
        isLoading = true
        DispatchQueue.main.asyncAfter(deadline: .now() + 3){
            isLoading = false
        }
    }
}


struct TicketView_Previews: PreviewProvider{
    static var previews: some View{
        TicketView()
    }
}
