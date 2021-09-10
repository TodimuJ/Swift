//
//  ContentView.swift
//  App Search
//
//  Created by Todimu Jenrola on 2021-06-20.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
        Color(.red)
            .edgesIgnoringSafeArea(.all)
        
            Circle()
                .foregroundColor(.white)
                .frame(width: 200)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
