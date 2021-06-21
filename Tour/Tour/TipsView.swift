//
//  TipsView.swift
//  Tour
//
//  Created by Todimu Jenrola on 2021-05-09.
//

import SwiftUI

struct TipsView: View {
    let tips: [Tip]

    var body: some View {
        List(tips, id: \.text, children: \.children){ tip in
            if tip.children != nil{
                Label(tip.text, systemImage: "quote.bubble")
                    .font(.headline)
            }else{
                Text(tip.text)
            }
        }
        .navigationTitle("Tips")
    }
    
    init() {
        let url = Bundle.main.url(forResource: "tips", withExtension: "json")!
        let data = try! Data(contentsOf: url)
        tips = try! JSONDecoder().decode([Tip].self, from: data)
        
    }
}

struct TipsView_Previews: PreviewProvider {
    static var previews: some View {
        TipsView()
    }
}
