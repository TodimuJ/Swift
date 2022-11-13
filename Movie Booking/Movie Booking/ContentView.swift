//
//  ContentView.swift
//  Movie Booking
//
//  Created by Todimu Jenrola on 2022-11-10.
//

import SwiftUI

class Theme {
    static func navigationBarColors(background : UIColor?,
       titleColor : UIColor? = nil, tintColor : UIColor? = nil ){
        
        let navigationAppearance = UINavigationBarAppearance()
        navigationAppearance.configureWithOpaqueBackground()
        navigationAppearance.backgroundColor = background ?? .clear
        
        navigationAppearance.titleTextAttributes = [.foregroundColor: titleColor ?? .black]
        navigationAppearance.largeTitleTextAttributes = [.foregroundColor: titleColor ?? .black]
       
        UINavigationBar.appearance().standardAppearance = navigationAppearance
        UINavigationBar.appearance().compactAppearance = navigationAppearance
        UINavigationBar.appearance().scrollEdgeAppearance = navigationAppearance

        UINavigationBar.appearance().tintColor = tintColor ?? titleColor ?? .black
    }
}


struct ContentView: View {
    
    init(){
       Theme.navigationBarColors(background: .clear, titleColor: .white)
    }
    
    var body: some View {

        NavigationView{
            TabView{
                //            NavigationView{
                HomeView()
                    .tabItem{
                        Label("Home", systemImage:"house.fill")
                    }
//                    .toolbar(.visible, for: .tabBar)
                //                        .toolbarBackground(Color.yellow, for: .tabBar)
                //                        .toolbar(.visible, for: .tabBar)
                //            }
                
                VStack{
                    
                }
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
//            .ignoresSafeArea(.all)
            .accentColor(.black)
        }

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
