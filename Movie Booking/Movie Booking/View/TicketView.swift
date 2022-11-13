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
                    //            .shadow(radius: 2)
                    
                    
                }
                
                Image("barcode")
                    .resizable()
                    .frame(width: 50, height: 50)
                
                
                
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
