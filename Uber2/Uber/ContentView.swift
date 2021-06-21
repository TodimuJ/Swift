//
//  ContentView.swift
//  Uber
//
//  Created by Todimu Jenrola on 2021-06-13.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
            ZStack{
                Color("uber")
                    .edgesIgnoringSafeArea(.all)
                
                GetStartedView()
                    .offset(y:-60)
            }
        }
        .navigationBarHidden(true)
    }
}

struct GetStartedView : View {
    var body: some View {
        VStack{
            VStack(spacing: 50){
                Text("Uber")
                    .font(.system(size: 34, weight: .semibold))
                    .foregroundColor(.white)
                    .padding(.bottom, 30)
                
                Image(systemName: "car.fill")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(height:180)
                    .foregroundColor(Color.black)
                
                Text("Move with safety")
                    .font(.system(size: 34, weight: .semibold))
                    .foregroundColor(.white)
                    .padding(.top, 30)
                
            }
            .padding(.vertical, 80)
            
            Spacer()
            
            NavigationLink(destination: LoginView(),
                           label: {
                            Button(action: {}){
                                HStack{
                                    
                                    Text("Get Started")
                                        .foregroundColor(.white)
                                        .font(.system(size: 24, weight: .medium))
                                    
                                    Image(systemName: "arrow.forward")
                                        .foregroundColor(.white)
                                        .font(.system(size:30))
                                }
                                
                            }
                            .frame(width: 300)
                            .padding(.vertical, 20)
                            .background(Color.black)
//                            .padding(.horizontal, 20)
                           })
            
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
