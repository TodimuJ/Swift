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
                Button(action: self.animation , label: {
                    Image(systemName: "plus.circle.fill")
                        .resizable()
                        .frame(width: 60, height: 60, alignment: .center)
                        .rotationEffect(isClicked ? .degrees(90) : .degrees(0))
                        .animation(.spring())
                    
                })
                
                Color
                    .black
                    .frame(width: 100, height: 100, alignment: .center)
                    .offset(x: 0, y: (geometry.size.height)/2 + 100)
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
