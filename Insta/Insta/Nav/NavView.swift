//
//  NavView.swift
//  Insta
//
//  Created by Todimu Jenrola on 2021-05-27.
//

import SwiftUI

struct NavView: View {
    var colWidth: CGFloat
    
    var body: some View {
        HStack{
            LazyVGrid(columns: [GridItem(.fixed(colWidth)), GridItem(.fixed(colWidth)), GridItem(.fixed(colWidth))]){
            Text("Picgram")
                .font(Font.custom("candice", size:25))
//                .font(.system(size:20))
            
            Spacer()
            
            HStack(spacing: 20){
            Image(systemName: "plus.app")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width:20, height: 20)
//                .rotationEffect(.degrees(-20))
            
            Image(systemName: "heart")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width:20, height: 20)
//                .rotationEffect(.degrees(-20))
            
            Image(systemName: "message")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width:20, height: 20)
//                .rotationEffect(.degrees(-20))
            }
            
        }
        }
        .padding(.top, 1)
        .padding(.horizontal, 12)
    }
}

//struct NavView_Previews: PreviewProvider {
//    static var previews: some View {
//        NavView()
//    }
//}
