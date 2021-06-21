//
//  TweetView.swift
//  Twitter
//
//  Created by Todimu Jenrola on 2021-06-02.
//

import SwiftUI

struct TweetView: View {
    let tweet: Tweet
    
    var body: some View {
        HStack(alignment: .top){
             Image(systemName: "person.crop.circle.fill")
                .font(.system(size: 55))
                .padding(.top)
                .padding(.trailing, 5)
                .foregroundColor(.twitterBlue)
            
            VStack(alignment: .leading){
                HStack{
                    Text(tweet.authorName)
                        .bold()
                        .lineLimit(1)
                    
                    Text("@\(tweet.authorUsername)•\(tweet.timestamp)")
                        .lineLimit(1)
                        .truncationMode(.middle)
                        .foregroundColor(.gray)
                }
                .padding(.top, 5)
                
                Text(tweet.post)
                    .lineLimit(nil)
                    .multilineTextAlignment(.leading)
                
                HomeView(tweet: tweet)
                    .foregroundColor(.gray)
                    .padding(.vertical, 10)
                    .padding(.trailing, 30)
            }
        }
    }
}



//struct TweetView_Previews: PreviewProvider {
//    static var previews: some View {
//        TweetView()
//    }
//}
