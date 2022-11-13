//
//  ContentView.swift
//  Movie Booking
//
//  Created by Todimu Jenrola on 2022-11-10.
//

import SwiftUI

struct ContentView: View {
    var body: some View {

        TabView{
//            NavigationView{
                HomeView()
                        .tabItem{
                            Label("Home", systemImage:"house.fill")
                        }
                        .toolbar(.visible, for: .tabBar)
//                        .toolbarBackground(Color.yellow, for: .tabBar)
//                        .toolbar(.visible, for: .tabBar)
//            }
            
            ReserveView()
            .tabItem {
                Label("Search", systemImage:"magnifyingglass")
            }
            .toolbar(.visible, for: .tabBar)
            
            
            VStack{
                
            }
        .tabItem {
            Label("Saved", systemImage:"bookmark.fill")
        }
        .toolbar(.visible, for: .tabBar)
            
            VStack{
                
            }
        .tabItem {
            Label("Profile", systemImage:"person.fill")
        }
        .toolbar(.visible, for: .tabBar)
            
        }
        .ignoresSafeArea(.all)
        .accentColor(.black)

//        ReserveView()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
