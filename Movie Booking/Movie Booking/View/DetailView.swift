//
//  DetailView.swift
//  Movie Booking
//
//  Created by Todimu Jenrola on 2022-11-12.
//

import Foundation
import SwiftUI

struct DetailView: View {
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: false, content: {
            LazyVStack(spacing: 15, pinnedViews: [.sectionFooters], content: {
                
//                HStack{
//
//                    Button(action: {}, label: {
//                        Image(systemName: "chevron.left")
//                            .font(.title2)
//                    })
//
//                    Spacer()
//
//                    Button(action: {}, label: {
//                        Image(systemName: "bookmark")
//                            .font(.title2)
//                    })
//                }
//                .overlay (
                    Text("Movie Details")
                        .font(.title2)
                        .fontWeight(.semibold)
                        .foregroundColor(.white)
//                )
//                .padding()
//                .foregroundColor(.white)
                
                ZStack {
                    
                    RoundedRectangle(cornerRadius: 12)
                        .fill(Color.white.opacity(0.2))
                        .padding(.horizontal)
                        .offset(y: 10)
                    
                    Image("wakanda")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: renderRectangle().width/1.5, height:renderRectangle().height/2, alignment: .center)
                        .cornerRadius(10)
                    
                }
                .frame(width: renderRectangle().width/1.45, height:renderRectangle().height/2, alignment: .center)
                .padding(.top, 10)
                
                
                VStack(alignment:.leading, spacing: 15, content: {
                    
                    Text("Black Panther: Wakanda Forever")
                        .font(.title2)
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                    
                    
                    Text("Director: Ryan Coogler")
                        .foregroundColor(.white)
                        .font(.title2)
                        .fontWeight(.semibold)
                    
//                    Text("IMDb 8.5/10 Rotten Tomatoes: 93%")
//                        .foregroundColor(.white)
//
                    
                    LazyVGrid(columns: [GridItem(.adaptive(minimum: 80))], alignment: .leading, content:{
                        
                        ForEach(genre,id: \.self){text in
                            
                            Text(text)
                                .font(.caption)
                                .padding(.vertical, 10)
                                .frame(maxWidth: .infinity)
                                .foregroundColor(.white)
                                .background(Color("wakandaColor").opacity(0.6))
                                .clipShape(Capsule())
                            
                        }
                    })
                    .padding(.top, 10)
                    
                    
                    Text("About:")
                        .font(.title2)
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .padding(.vertical, 10)
                    
                    Text(about)
                        .foregroundColor(.white)
                    
                    NavigationLink(destination: ReserveView(), label: {
                       Text("Book Now")
                            .font(.title3)
                            .fontWeight(.semibold)
                            .foregroundColor(Color.white)
                            .frame(width: 300, height: 40, alignment: .center)
                            .background(Color.blue)
                            .cornerRadius(10)
                            .padding(.horizontal)
                            
                            
                    })
                    
                    
                    
                })
                .padding(.top, 30)
                .padding(.horizontal)
                .padding(.leading, 10)
                .frame(maxWidth: .infinity, alignment: .leading)
            })
        })
//        .background(Color.black.opacity(0.7))
        .background(LinearGradient(gradient: Gradient(colors: [Color.black.opacity(0.9) , .black.opacity(0.5), Color.black.opacity(0.9)]),
                               startPoint: .topTrailing,
                               endPoint: .bottomLeading))
    }
}


struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView()
    }
}

extension View {
    func renderRectangle()->CGRect{
        return UIScreen.main.bounds
    }
}
