//
//  ContentView.swift
//  Wallet1
//
//  Created by Todimu Jenrola on 2022-07-30.
//

import SwiftUI

struct ContentView: View {
    init() {
        UITabBar.appearance().backgroundColor = UIColor(.black.opacity(1))
        UITabBar.appearance().barTintColor = UIColor(Color("transactionColor"))
    }
    
    let gradient = LinearGradient(colors: [.orange, .green],
                                  startPoint: .topLeading,
                                  endPoint: .bottomTrailing)
    
    var body: some View {
        TabView {
            SelectCard()
            .tabItem{Label("Home", systemImage: "house")}
            
            Trend()
            .tabItem{Label("Trend", systemImage: "chart.bar.fill")}
            
            Wallet()
            .tabItem{Label("Wallet", systemImage: "dollarsign.square")}
            
            Profile()
            .tabItem{Label("Profile", systemImage: "person")}
        }
        .accentColor(Color("cardColor"))
//        .tabViewStyle(PageTabViewStyle())
//        .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .never))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
