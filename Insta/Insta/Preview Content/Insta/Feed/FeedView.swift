//
//  FeedView.swift
//  Insta
//
//  Created by Todimu Jenrola on 2021-05-29.
//

import SwiftUI

struct FeedView: View {
    
    var person: Person
    
    var body: some View {
        HStack{
            Image(person.image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width:30)
                .padding(2)
                .clipShape(Circle())
                .overlay(Circle().stroke(Color("gradient"), lineWidth: 2))
                
            
            VStack(alignment: .leading){
                Text(person.name)
                    .font(.system(size: 12, weight: .semibold))
                
                Text(person.location)
                    .font(.system(size: 10))
            }
            
            Spacer()
                
                Image(systemName: "ellipsis")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 15)
                    .padding(.trailing, 10)

        }
    }
}
