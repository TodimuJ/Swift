//
//  Tip.swift
//  Tour
//
//  Created by Todimu Jenrola on 2021-05-09.
//

import Foundation

struct Tip: Decodable {
    let text: String
    let children: [Tip]?
    
}
