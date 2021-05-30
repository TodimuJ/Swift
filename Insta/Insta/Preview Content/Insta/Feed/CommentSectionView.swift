//
//  CommentSectionView.swift
//  Insta
//
//  Created by Todimu Jenrola on 2021-05-29.
//

import SwiftUI

struct CommentSectionView: View {
    
    var colWidth: CGFloat
//    var people: [Person]
    
    var body: some View {
        VStack{
            LazyVGrid(columns: [GridItem(.fixed(colWidth)), GridItem(.fixed(colWidth)), GridItem(.fixed(colWidth))]){
            HStack(spacing: 20){
                Image(systemName: "heart.fill")
                    .resizable()
                    .foregroundColor(Color(.systemRed))
                    .aspectRatio(contentMode: .fit)
                    .frame(width:20)

                Image(systemName: "message")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width:20)
                    .rotation3DEffect(.degrees(180),axis: (x: 0, y: 1, z: 0))

                Image(systemName: "paperplane")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width:20)
            }
            
            Spacer()
            
            Image(systemName: "bookmark")
                .aspectRatio(contentMode: .fit)
                .frame(width: 20, height: 30)
        }
//            HStack{
//                Text("Liked by me and \(people) others")
//                    .font(.system(size:13))
//            }
        }
    }
}
