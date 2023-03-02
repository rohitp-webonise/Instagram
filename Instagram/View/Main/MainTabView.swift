//
//  MainTabView.swift
//  Instagram
//
//  Created by Rohit Patil on 28/02/23.
//

import SwiftUI

struct MainTabView: View {
    var body: some View {
        NavigationView{
            TabView{
                FeedView()
                    .tabItem {
                        Image(systemName: "house")
                        
                    }
                
                SearchView()
                    .tabItem {
                        Image(systemName: "magnifyingglass")
                    }
                
                UploadPostView()
                    .tabItem {
                        Image(systemName: "plus.square")
                    }
                
                ReelsView()
                    .tabItem {
                        Image(systemName: "video")
                    }
                
                ProfileView()
                    .tabItem {
                        Image(systemName: "person")
                    }
            }
            .navigationTitle("Home")
            .navigationBarTitleDisplayMode(.inline)
            .accentColor(.black)
            
        }
        
    }
}

struct MainTabView_Previews: PreviewProvider {
    static var previews: some View {
        MainTabView()
    }
}
