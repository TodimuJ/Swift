//
//  ContentView.swift
//  Test1
//
//  Created by Todimu Jenrola on 2021-05-26.
//

import SwiftUI

struct RedOneView: View {
    var body: some View {
        NavigationView{
            VStack{
                CircleView(color: .red, number: 1, radius: 200)
                    .navigationTitle("Red One")
                    .offset(y:-60)

                NavigationLink(destination: BlueTwoView(),
                       label: {
                        Text("Next Screen")
                            .frame(width: 280, height: 50)
                            .foregroundColor(.white)
                            .background(Color.blue)
                            .cornerRadius(12)
                       })
            }
        }
        .accentColor(Color(.label))
        
    }
}


struct BlueTwoView: View {
    
    var body: some View{
        VStack{
            CircleView(color: .blue, number: 2, radius: 250)
                .navigationTitle("Blue Two")
                .offset(y:-60)

            NavigationLink(destination: GreenThreeView(),
                   label: {
                    Text("Next Screen")
                        .frame(width: 280, height: 50)
                        .foregroundColor(.white)
                        .background(Color.green)
                        .cornerRadius(12)
                   })
        }
    }
}

struct GreenThreeView: View {
    
    var body: some View{
        VStack{
            CircleView(color: .green, number: 3, radius: 300)
                .navigationTitle("Green Three")
                .offset(y:-60)

            NavigationLink(destination: OrangeFourView(),
                   label: {
                    Text("Next Screen")
                        .frame(width: 280, height: 50)
                        .foregroundColor(.white)
                        .background(Color.orange)
                        .cornerRadius(12)
                   })
        }
    }
}

struct OrangeFourView: View {
    
    var body: some View{
        VStack{
            CircleView(color: .green, number: 4, radius: 350)
                .navigationTitle("Orange Four")
                .offset(y:-60)

                    Text("Sike")
                        .frame(width: 280, height: 50)
                        .foregroundColor(.white)
                        .background(Color.red)
                        .cornerRadius(12)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        RedOneView()
    }
}

struct CircleView: View {
    
    var color: Color
    var number: Int
    var radius: CGFloat
    
    var body: some View {
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
