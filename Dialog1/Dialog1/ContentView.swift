//
//  ContentView.swift
//  Dialog1
//
//  Created by Todimu Jenrola on 2021-12-08.
//

import SwiftUI

struct ContentView: View {
    
    @State private var isShowingAlert = false
    
    var body: some View {
        Button {
            isShowingAlert = true
        } label: {
            Label("Delete", systemImage: "trash.fill")
        }
        .buttonStyle(.bordered)
        .tint(.pink)
        .controlSize(.large)
        .alert("Are you sure?", isPresented : $isShowingAlert){
            Button("Delete", role: .destructive){
                print("Item Deleted")
            }
        }
    }

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
