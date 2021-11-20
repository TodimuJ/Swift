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
        Button(action: {}, label: {
            Image(systemName: "plus.circle.fill")
                .resizable()
                .frame(width: 60, height: 60, alignment: .center)
        })
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
