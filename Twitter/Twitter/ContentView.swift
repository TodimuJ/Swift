//
//  ContentView.swift
//  Twitter
//
//  Created by Todimu Jenrola on 2021-06-02.
//

import SwiftUI

extension Color{
    static var twitterBlue: Color = Color(red: 29/255, green:  161/255, blue: 241/255)
}

struct ContentView: View {
    
    private let tweets: [Tweet] =
    [
        Tweet(authorName: "Jack Dawson", authorUsername: "jack", timestamp: "3m", post: "Twitter Blues is coming!", replies: 2, retweets: 0, likes: 0),
        Tweet(authorName: "Jack Dawson", authorUsername: "jack", timestamp: "3m", post: "Twitter Blues is coming!", replies: 2, retweets: 0, likes: 0),
        Tweet(authorName: "Jack Dawson", authorUsername: "jack", timestamp: "3m", post: "Twitter Blues is coming!", replies: 2, retweets: 0, likes: 0),
        Tweet(authorName: "Jack Dawson", authorUsername: "jack", timestamp: "3m", post: "Twitter Blues is coming!", replies: 2, retweets: 0, likes: 0),
        Tweet(authorName: "Jack Dawson", authorUsername: "jack", timestamp: "3m", post: "Twitter Blues is coming!", replies: 2, retweets: 0, likes: 0),
        Tweet(authorName: "Jack Dawson", authorUsername: "jack", timestamp: "3m", post: "Twitter Blues is coming!", replies: 2, retweets: 0, likes: 0),
        Tweet(authorName: "Jack Dawson", authorUsername: "jack", timestamp: "3m", post: "Twitter Blues is coming!", replies: 2, retweets: 0, likes: 0),
        Tweet(authorName: "Jack Dawson", authorUsername: "jack", timestamp: "3m", post: "Twitter Blues is coming!", replies: 2, retweets: 0, likes: 0),
        Tweet(authorName: "Jack Dawson", authorUsername: "jack", timestamp: "3m", post: "Twitter Blues is coming!", replies: 2, retweets: 0, likes: 0)
    ]
    
    @State private var current = 0
    
    var body: some View {
        ZStack{
            TabView(selection: $current){
                FeedView(tweets: tweets)
                    .tabItem {
                        Image(systemName: "house.fill")
                    }
                    .tag(0)
                
                Text("Tab1")
                    .tabItem {
                        Image(systemName: "magnifyingglass")
                    }
                    .tag(1)
                
                Text("Tab1")
                    .tabItem {
                        Image(systemName: "bell")
                    }
                    .tag(2)
                
                Text("Tab1")
                    .tabItem {
                        Image(systemName: "envelope")
                    }
                    .tag(3)
            }
            .accentColor(.twitterBlue)
            
            VStack{
                Spacer()
                HStack{
                    Spacer()
                    NewTweet()
                        .padding(.bottom, 65)
                        .padding(.trailing)
                }
            }
        }
    }
}

struct FeedView: View {
    var tweets: [Tweet]
    
    var body: some View{
        NavigationView{
            List(tweets){tweet in
                TweetView(tweet: tweet)
            }
            .listStyle(PlainListStyle())
            .navigationBarTitle("Pigeon", displayMode: .inline)
            .navigationBarItems(
                leading:
                    Button(action: {}){
                        Image(systemName: "person.crop.circle.fill")
                            .foregroundColor(.twitterBlue)
                    },
                
                trailing:
                    Button(action: {}){
                        Image(systemName: "moon.stars")
                            .foregroundColor(.twitterBlue)
                    }
            )
        }
    }
}

struct NewTweet: View {
    var body: some View{
        Button(action: {}){
            Image(systemName: "pencil")
                .font(.largeTitle)
                .foregroundColor(.white)
                .padding()
        }
        .background(Color.twitterBlue)
        .mask(Circle())
        .shadow(radius: 5)
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
