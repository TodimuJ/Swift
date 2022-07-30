//
//  HomeView.swift
//  Twitter
//
//  Created by Todimu Jenrola on 2021-06-02.
//

import SwiftUI

struct HomeView: View {
    let tweet: Tweet
    
    var body: some View {
        HStack{
            Button(action: {}){
                Image(systemName: "message")
            }
            Text(tweet.replies > 0 ? "\(tweet.replies)" : "")
            Spacer()
            
            Button(action: {}){
                Image(systemName: "arrow.2.squarepath")
            }
            Text(tweet.retweets > 0 ? "\(tweet.retweets)" : "")
            Spacer()
            
            Button(action: {}){
                Image(systemName: "heart")
            }
            Text(tweet.likes > 0 ? "\(tweet.likes)" : "")
            Spacer()
            
            Button(action: {}){
                Image(systemName: "square.and.arrow.up")
            }
            
            
        }
    }
}

//struct HomeView_Previews: PreviewProvider {
//    static var previews: some View {
//        HomeView()
//    }
//}
