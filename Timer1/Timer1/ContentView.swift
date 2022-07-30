//
//  ContentView.swift
//  Timer1
//
//  Created by Todimu Jenrola on 2021-09-10.
//

import SwiftUI

let defaultTimeRemaining : CGFloat = 10
let lineWidth : CGFloat = 40
let radius : CGFloat = 150

struct ContentView: View {
    @State private var isActive = false
    @State private var timeRemaining : CGFloat = defaultTimeRemaining
    let timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
    
    var body: some View {
        ZStack{
            Color.gray.opacity(0.3)
            .ignoresSafeArea(.all) // Ignore just for the color
            
            GeometryReader { geometry in
        Text("Countdown Timer")
            .position(x: geometry.size.width/2 , y: 40)
            .font(.system(size:40, weight: .medium))
                
            }
        
        VStack(spacing : 40){
            
            ZStack{
                Circle()
                    .stroke(Color.gray .opacity(0.2), style: StrokeStyle(lineWidth: lineWidth, lineCap: .round))
                Circle()
                    .trim(from: 0, to: 1 - ((defaultTimeRemaining - timeRemaining)/defaultTimeRemaining))
                    .stroke(timeRemaining > 6 ? Color.green : timeRemaining > 3 ? Color.yellow : Color.red, style: StrokeStyle(lineWidth: lineWidth, lineCap: .round))
                    .rotationEffect(.degrees(-90))
                    .animation(.easeInOut)
                Text("\( Int(timeRemaining))")
                    .font(.largeTitle)
            }
            .frame(width: radius * 2, height: radius * 2)
            
            HStack(spacing : 25){
                
                Label("\(isActive ?  "Pause" : "Play")", systemImage:  (isActive ?  "pause.fill" : "play.fill"))
                    .frame(width:150, height: 50)
                    .background(Color.white)
                    .cornerRadius(9)
                    .foregroundColor(isActive ? .red : .yellow)
                    .font(.title)
                    .onTapGesture(perform: {
                        isActive.toggle()
                    })
                
                
                Label("Reset", systemImage: "repeat")
                    .frame(width:150, height: 50)
                    .background(Color.white)
                    .cornerRadius(9)
                    .foregroundColor(.black)
                    .font(.title)
                    .onTapGesture(perform: {
                        isActive = false
                        timeRemaining = defaultTimeRemaining
                    })
            }
        }
        .onReceive(timer, perform: { _ in
            guard isActive else { return }
            
            if timeRemaining > 0 {
                timeRemaining -= 1
            }
            else {
                isActive = false
                timeRemaining = defaultTimeRemaining
            }
        })
        
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
