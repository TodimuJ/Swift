//
//  TourApp.swift
//  Tour
//
//  Created by Todimu Jenrola on 2021-05-07.
//

import SwiftUI

@main
struct TourApp: App {
    @StateObject var locations = Locations()
    
    var body: some Scene {
        WindowGroup {
            TabView{
                NavigationView{
                    ContentView(location: locations.primary)
                }
                .tabItem {
                    Image(systemName: "airplane.circle.fill")
                    Text("Discover")
                }
                
                NavigationView{
                    WorldView()
                }
                .tabItem {
                    Image(systemName: "star.fill")
                    Text("Map")
                }
                
                NavigationView{
                    TipsView()
                }
                .tabItem {
                    Image(systemName: "list.bullet")
                    Text("Tips ")
                }
            }
            .environmentObject(locations) 
        }
    }
}
