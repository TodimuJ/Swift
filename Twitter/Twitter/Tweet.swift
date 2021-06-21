//
//  Tweet.swift
//  Twitter
//
//  Created by Todimu Jenrola on 2021-06-02.
//

import Foundation

struct Tweet: Identifiable {
    let id: UUID = UUID()
    let authorName: String
    let authorUsername: String
    let timestamp: String
    let post: String
    let replies: Int
    let retweets: Int
    let likes: Int
}
