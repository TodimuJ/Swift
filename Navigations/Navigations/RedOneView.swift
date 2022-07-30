//
//  ContentView.swift
//  Navigations
//
//  Created by Todimu Jenrola on 2021-05-18.
//

import SwiftUI

struct RedOneView: View {
    var body: some View{
        NavigationView{
            VStack{
                CircleNumberView(color: .red, number: 1, radius: 200)
                    .navigationTitle("Red One")
                    .offset(y: -60)
                NavigationLink(destination: BlueTwoView(color: .blue),
                    label: {
                        Text("Next Screen")
                            .bold()
                            .frame(width: 280, height: 50)
                            .background(Color.blue)
                            .foregroundColor(Color.white)
                            .cornerRadius(10)
                        
                    })
            }
        }
        .accentColor(Color(.label) )
    }
}


struct BlueTwoView: View {
    
    var color: Color
    
    var body: some View{
        VStack{
            CircleNumberView(color: color, number: 2, radius: 275)
                .navigationTitle("Blue Two ")
                .offset(y: -60)
            NavigationLink(destination: GreenThreeView(color: .green),
                           label: {
                            Text("Next Screen")
                                .bold()
                                .frame(width: 280, height: 50)
                                .background(Color.green)
                                .foregroundColor(Color.white)
                                .cornerRadius(10)
                           })
        }
    }
}

struct GreenThreeView: View {
    
    var color: Color
    
    var body: some View{
        VStack{
            CircleNumberView(color: color, number: 3, radius: 320)
                .navigationTitle("Green Three ")
                .offset(y: -60)
            NavigationLink(destination: FinalView(),
                           label: {
                            Text("Next Screen")
                                .bold()
                                .frame(width: 280, height: 50)
                                .background(Color.yellow)
                                .foregroundColor(Color.white)
                                .cornerRadius(10)
                           })
        }
    }
}

struct FinalView: View {
    
    var body: some View {
        ZStack{
            VStack{
                Image("room")
                    .resizable()
                    .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            }
            
            VStack{
                Text("Final Page")
                    .bold()
                    .foregroundColor(.white)
            }
            .font(.system(size: 40))
            .offset(y: 200)
            
        }
    }
}

struct CircleNumberView: View{
    var color: Color
    var number: Int
    var radius: CGFloat
    
    var body: some View{
        ZStack{
            Circle()
                .frame(width: radius, height: radius)
                .foregroundColor(color)
            Text("\(number)")
                .foregroundColor(.white)
                .font(.system(size: 70, weight: .bold))
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        RedOneView()
            
    }
}
