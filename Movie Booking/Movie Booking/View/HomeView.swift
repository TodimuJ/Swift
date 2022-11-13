//
//  HomeView.swift
//  Movie Booking
//
//  Created by Todimu Jenrola on 2022-11-12.
//

import Foundation
import SwiftUI


struct HomeView: View {
    
//    self.view.backgroundColor = UIColor(patternImage: UIImage(named: "homeBackground.png")!)
    
    var body: some View {
        VStack{
            Text("Choose Movie")
                .font(.system(size: 25))
                .fontWeight(.bold)
//            Spacer()
            SearchBarView()
//            Spacer()
            ComingSoonView()
                .padding(.top)
            
            NowPlayingView()
            
            TopMoviesView()
            
            Spacer()
        }
        .background(Color.gray.opacity(0.4))
//        .background(LinearGradient(gradient: Gradient(colors: [.blue , .gray, .blue]),
//                               startPoint: .topLeading,
//                               endPoint: .bottomTrailing))
    }
}

struct TopMoviesView: View {
    
    @State var topMovies: [String] = ["equalizer", "aquaman", "infinity_war", "harry_potter", "end_game", "creed2", "vendetta", "sherlock", "inception", "interstellar", "avatar", "titanic", "lotr"]
    
    var body: some View {
        
        
        
    }
}

struct NowPlayingView: View {
    
    @State var nowPlaying: [String] = ["black_adam", "wakanda", "the_menu", "sonic", "mom", "morbius"]
    
    var body: some View {
        VStack{
            Text("Now Playing")
                .font(.headline)
                .foregroundColor(.black)
                .padding(.horizontal, 20)
            
            ScrollView(.horizontal, showsIndicators: false){
                HStack(spacing: 10){
                    ForEach(nowPlaying.indices, id: \.self){ index in
                        Image(nowPlaying[index])
                            .resizable()
//                            .scaledToFit()
                            .frame(width:100, height: 130)
                            .cornerRadius(15)
                    }
                }
                .padding(.horizontal)
            }
            
            
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
        .cornerRadius(15)
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
            .overlay(
                Text("COMING SOON")
                    .foregroundColor(.black)
                    .fontWeight(.semibold)
                    .font(.headline)
                    .frame(width:150, height:30)
                    .background(Color.white.opacity(0.9))
                    .cornerRadius(8)
                    .offset(x:90, y:-80)

            )
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
