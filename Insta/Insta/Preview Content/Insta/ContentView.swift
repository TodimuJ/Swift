//
//  ContentView.swift
//  Insta
//
//  Created by Todimu Jenrola on 2021-05-27.
//

import SwiftUI

struct ContentView: View {
    let people: [Person] = [
        Person(name: "cristiano", image: "p1", likes: "2,388,908",  post: "football", location: "Lisbon, Portugal"),
        Person(name: "champagn...", image: "p2", likes: "1,326,789", post: "drake", location: "The Six"),
        Person(name: "person3", image: "p3", likes: "345,678", post: "drive", location: "drivers license - Original Audio"),
        Person(name: "person4", image: "p4", likes: "5,677", post: "kent", location: "Kent, United Kingdom"),
//        Person(name: "person5", image: "p5", likes: "1,284", post: "", location: "Madrid, Spain"),
//        Person(name: "person6", image: "p6", likes: "954", post: "", location: "Venice, Italy"),
//        Person(name: "person7", image: "p7", likes: "12,309", post: "", location: ""),
//        Person(name: "person8", image: "p8", likes: "28,546", post: "", location: "London, United Kingdom"),
//        Person(name: "person9", image: "p9", likes: "37,903", post: "", location: "Emirates Stadium")
    ]
    
    var body: some View {
        GeometryReader{ geometry in
            let colWidth = geometry.size.width / 3
            
            TabView{
                NavigationView{
                    VStack{
                         NavView(colWidth: colWidth)
                        
                        
                        ScrollView{
                                ThumbView(people: people)
                            
                            LazyVStack{
                                ForEach(people, id: \.id){ person in
                                    
                                    FeedView(person: person)
                                    
                                    Image(person.post)
                                        .resizable()
                                        .scaledToFit()
                                    
                                    CommentSectionView(colWidth: colWidth)

                                }
                            }

                        }
                    }
                    .navigationBarHidden(true)
                }
                .tabItem {
                    Image(systemName: "house.fill")
                    
                }
                
                NavigationView{
                    VStack{
                        
                    }
                }
                .tabItem {
                    Image(systemName: "magnifyingglass")
                    
                }
                
                NavigationView{
                    VStack{
                        
                    }
                }
                .tabItem {
                    Image(systemName: "play.rectangle")
                    
                }
                
                NavigationView{
                    VStack{
                        
                    }
                }
                .tabItem {
                    Image(systemName: "bag")
                    
                }
                
                NavigationView{
                    VStack{
                        
                    }
                }
                .tabItem {
                    Image(systemName: "person.crop.circle")
                    
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
