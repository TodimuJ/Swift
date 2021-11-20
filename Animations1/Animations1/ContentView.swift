//
//  ContentView.swift
//  Animations1
//
//  Created by Todimu Jenrola on 2021-11-20.
//

import SwiftUI

struct ContentView: View {
    
    @State private var isClicked : Bool = false
    
    var body: some View {
        GeometryReader{
            geometry in
            
            ZStack{
                
                LinearGradient(gradient: Gradient(colors: [Color.green, Color.blue, Color.white, Color.red]), startPoint: .leading, endPoint: .bottom)
                    .edgesIgnoringSafeArea(.all)
                Color.gray
                    .opacity(0.1)
                    .edgesIgnoringSafeArea(.all)
                
                Button(action: self.animation , label: {
                    Image(systemName: isClicked ? "gobackward" : "plus.circle.fill")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .foregroundColor(.red)
                        .frame(width: 60, height: 60, alignment: .center)
                })
                    .rotationEffect(isClicked ? .degrees(90) : .degrees(0))
                    .animation(.spring())
                    .offset(x: 0, y: isClicked ? (geometry.size.height)/2 - 350 : (geometry.size.height)/2 - 100)
                
                Color(isClicked ? .yellow : .white)
                    .frame(width: 100, height: 100, alignment: .center)
                    .rotation3DEffect(isClicked ? .degrees(180) : .degrees(0), axis: <#T##(x: CGFloat, y: CGFloat, z: CGFloat)#>)
//                    .rotationEffect(isClicked ? .degrees(90) : .degrees(0))
                    .offset(x: 0, y: isClicked ? -100 : 100)
                    .animation(.spring())
            }
            .frame(width: geometry.size.width, height: geometry.size.height, alignment: .center)


        }
    }
    
    
    func animation() {
        self.isClicked.toggle()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
