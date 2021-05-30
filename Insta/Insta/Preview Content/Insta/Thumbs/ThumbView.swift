//
//  ThumbView.swift
//  Insta
//
//  Created by Todimu Jenrola on 2021-05-29.
//

import SwiftUI

struct ThumbView: View {
    
    var people: [Person]
    
    var body: some View {
        VStack(alignment: .leading){
            LazyHStack{
                VStack{
//                    Image(systemName: "person.crop.circle.badge.checkmark")
                    ZStack{
                    Image("mec")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width:55, height: 55)
                        .clipShape(Circle())
                        .overlay(Circle().stroke(Color.white))
//                        .rotation3DEffect(.degrees(180),axis: (x: 0, y: 1, z: 0))
//                        .opacity(0.5)
//                        .foregroundColor(.gray)
//                        .colorInvert()
                        
                       Image(systemName: "plus.circle.fill")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .foregroundColor(Color("plusBlue"))
                        .frame(width: 20)
                        .offset(x: 20, y: 17)
                    }
                    
                    
                    Text("Your Story")
                        .font(.system(size:12))
//                        .foregroundColor(.secondary)
//                        .offset(y:-20)
                }
                
                ForEach(people, id: \.id) { person in
                    VStack{
                        Image(person.image)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width:55)
                            .clipShape(Circle())
                            .overlay(Circle().stroke(Color("gradient"), lineWidth: 2))
                        
                        Text(person.name)
                            .font(.system(size:12))
                            .foregroundColor(.black)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.center)
                    }
                    
                }
            }
//            .offset(y:-22)
        }
        .padding(.top, 1)
    }
}
