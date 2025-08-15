//
//  MainTabview.swift
//  InstragranClon
//
//  Created by German David Vertel Narvaez on 8/08/25.
//

import SwiftUI

struct MainTabview: View {
    var body: some View {
        TabView{
            FeedView()
                .tabItem{
                    Image(systemName: "house")
                }
            
            SearchView()
                .tabItem{
                    Image(systemName: "magnifyingglass")
                }
            
            Text("Upload Post")
                .tabItem{
                    Image(systemName: "plus.square")
                }
            
            Text("Notifications")
                .tabItem {
                    Image(systemName: "heart")
                }
            
            ProfileView()
                .tabItem {
                    Image(systemName: "person")
                }
        }
    
    }
}

#Preview {
    MainTabview()
}
