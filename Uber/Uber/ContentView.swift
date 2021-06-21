//
//  ContentView.swift
//  Uber
//
//  Created by Todimu Jenrola on 2021-06-15.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        NavigationView{
            ZStack{
                //            Color("uber")
                //                .edgesIgnoringSafeArea(.all)
                VStack{
                    Text("Uber")
                        .foregroundColor(Color.black)
                        .font(.system(size: 45))
                    
                    Image(systemName: "car.fill")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(height: 100)
                        .padding(.vertical, 60)
                    
                    Text("Move with safety")
                        .foregroundColor(.black)
                        .font(.system(size: 45))
                    
                }
                
//                Spacer()

                NavigationLink(destination: LoginView(),
                       label: {
                        HStack{
                        Text("Next Screen")
                            .frame(width: 350, height:50)
                            .foregroundColor(.white)
                            .background(Color.black)
                            .font(.system(size: 20, weight: .bold))
                        
                        Image(systemName: "arrow.forward")
                            .foregroundColor(.black)
                        }
                            
                       })
            }
        }
        
    }
}



struct LoginView: View {
    
    var body: some View {
        Text("Login View")
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
