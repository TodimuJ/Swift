//
//  ContentView.swift
//  Insta
//
//  Created by Todimu Jenrola on 2021-05-27.
//

import SwiftUI

struct ContentView: View {
    let people: [Person] = [
        Person(name: "cristiano", image: "p1", likes: "6,388,908",  post: "football", location: "Lisbon, Portugal", date: "May 30, 2021", caption: "All time best!", comments: "423,998"),
        Person(name: "drake", image: "p2", likes: "1,326,789", post: "drake", location: "The Six", date: "May 30, 2021", caption: "How I go from 6 to 23 like I'm LeBron?", comments: "378,567"),
        Person(name: "olivia", image: "p7", likes: "345,678", post: "drive", location: "drivers license - Original Audio", date: "May 30, 2021", caption: "I got my driver's license last week...", comments: "23,454"),
        Person(name: "borris", image: "p4", likes: "5,677", post: "kent", location: "Kent, United Kingdom", date: "May 30, 2021", caption: "Streets empty with this lockdown ;)", comments: "99"),
        Person(name: "codex", image: "p5", likes: "1,284", post: "desk", location: "Madrid, Spain", date: "May 30, 2021", caption: "New setup, who dis?", comments: "23")
//        Person(name: "person6", image: "p6", likes: "954", post: "desk1", location: "Venice, Italy", date: "", caption: "", comments: ""),
//        Person(name: "person7", image: "p3", likes: "12,309", post: "", location: "", date: "", caption: "", comments: ""),
//        Person(name: "person8", image: "p8", likes: "28,546", post: "", location: "London, United Kingdom", date: "", caption: "", comments: ""),
//        Person(name: "person9", image: "p9", likes: "37,903", post: "", location: "Emirates Stadium", date: "", caption: "", comments: "")
    ]
    
    init() {
//        UITabBar.appearance().tintColor = UIColor.white
        UITabBar.appearance().unselectedItemTintColor = UIColor.black
//        UITabBar.appearance().isTranslucent = true
//        UITabBar.appearance().tintColor = UIColor(red: 1, green: 1, blue: 1, alpha: 1)
    }

    
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
                                    
                                    HStack{
                                        Text("Liked by you and \(person.likes) others")
                                            .fontWeight(.semibold)
                                        
                                        Spacer()
                                    }
                                    .padding(.horizontal, 10)
                                    
                                    HStack{
                                        Text("\(person.name)")
                                            .fontWeight(.semibold)
                                        
                                        Text("\(person.caption)")
                                        Spacer()
                                    }
                                    .padding(.top, 1)
                                    .padding(.horizontal, 10)
                                    
                                    HStack{
                                        Text("View all \(person.comments) comments")
                                            .font(.system(size: 15))
                                            .foregroundColor(.secondary)
                                        
                                        Spacer()
                                    }
                                    .padding(.top, 1)
                                    .padding(.horizontal, 12)
                                
                                    HStack{
                                        Text("\(person.date)")
                                            .font(.system(size: 14))
                                            .foregroundColor(.secondary)
                                        
                                        Spacer()
                                    }
                                    .padding(.top, 1)
                                    .padding(.horizontal, 10)

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
            .accentColor(.black)

        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
