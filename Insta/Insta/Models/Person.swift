//
//  Person.swift
//  Insta
//
//  Created by Todimu Jenrola on 2021-05-28.
//

import Foundation

struct Person: Identifiable {
    var id: UUID = UUID()
    var name: String
    var image: String
    var likes: String
    var post: String
    var location: String
    var date: String
    var caption: String
    var comments: String
}

