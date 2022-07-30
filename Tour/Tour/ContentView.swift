//
//  ContentView.swift
//  Tour
//
//  Created by Todimu Jenrola on 2021-05-07.
//

import SwiftUI

struct ContentView: View {
    let location: Location
    
    var body: some View {
//        Text("Hello, world! This is my first Swift project.")
//            .padding()
//        Vstack{}
        ScrollView{
//            Image("highlands")
            Image(location.heroPicture)
                .resizable()
                .scaledToFit()
                 
//            Text("The Highlands")
            Text(location.name)
                .font(.title)
                .bold()
                .multilineTextAlignment(.center)
            
//            Text("United Kingdom")
            Text(location.country)
                .font(.title)
                .foregroundColor(.secondary)
            
            Text(location.description)
                .padding(.horizontal)
            
            Text("Did you know ...")
                .font(.title3)
                .bold()
                .padding(.top)
            
            Text(location.more)
                .padding(.horizontal)
            
        }
        .navigationTitle("Discover")
    
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            ContentView(location: Locations().primary)
        }
    }
}
