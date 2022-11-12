//
//  HomeView.swift
//  Movie Booking
//
//  Created by Todimu Jenrola on 2022-11-12.
//

import Foundation
import SwiftUI


struct HomeView: View {
    var body: some View {
        VStack{
            Text("Choose Movie")
//            Spacer()
            SearchBarView()
//            Spacer()
            ComingSoonView()
            Spacer()
            
        }
    }
}

struct SearchBarView: View {
    var body: some View {
        HStack(spacing: 15){
            Image(systemName: "magnifyingglass")
                .resizable()
                .scaledToFit()
                .frame(width:20, height:20)
                .font(.system(size: 23, weight: .bold))
                .foregroundColor(.gray)
                
            
            Text("Search")
                .font(.title3)
                .fontWeight(.semibold)
                .foregroundColor(.gray)
            
            Spacer()
            
            Image(systemName: "mic.fill")
                .resizable()
                .scaledToFit()
                .frame(width:20, height:20)
                .font(.system(size: 23, weight: .bold))
                .foregroundColor(.gray)
            
        }
        .padding(.horizontal)
        .frame(width: 360, height: 40)
        .background(Color.gray.opacity(0.25))
        .cornerRadius(10)
    }
}

struct ComingSoonView: View {
    var body: some View {
        Image("creed3")
            .resizable()
            .scaledToFit()
            .cornerRadius(10)
            .padding(.horizontal)
            .overlay(
                Text("Creed III")
                    .foregroundColor(.white)
                    .fontWeight(.semibold)
                    .offset(x:-130, y:80)
                
            )
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
