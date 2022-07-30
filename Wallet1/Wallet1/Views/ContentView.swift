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
        UITabBar.appearance().barTintColor = UIColor(Color("transactionColor")) //UIColor(.black.opacity(0.9))
    }
    
    
    let gradient = LinearGradient(colors: [.orange, .green],
                                  startPoint: .topLeading,
                                  endPoint: .bottomTrailing)
    
    var body: some View {
        TabView {
            NavigationView{
                ScrollView(.vertical){
                    CardList()
                    TransactionView()
                }
                .background(Color.gray.opacity(0.15))
                .navigationTitle(Text("My Wallet"))
            }
            .tabItem{Label("Home", systemImage: "house")}
            
            VStack{
            }
            .tabItem{Label("Trend", systemImage: "chart.bar.fill")}
            VStack{
            }
            .tabItem{Label("Wallet", systemImage: "dollarsign.square")}
            VStack{
            }
            .tabItem{Label("Profile", systemImage: "person")}
        }
        .accentColor(Color("cardColor"))
//        .tabViewStyle(PageTabViewStyle())
//        .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .never))
    }
}


struct CardList: View {
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false){
            LazyHStack {
                ForEach(0..<4, id: \.self) { item in
                    CardView(isSelected: item == 0)
                        .shadow(color: Color.gray.opacity(0.3), radius:5, x:5, y:10)
                }
            }
            .padding(10)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
