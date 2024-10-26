//
//  ContentView.swift
//  TimeAway
//
//  Created by Telem Tobi on 25/10/2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            Color.clear
                .tabItem {
                    Label("Home", systemImage: "house")
                }
            
            Color.clear
                .tabItem {
                    Label("Plan", systemImage: "globe.europe.africa")
                }
            
            Color.clear
                .tabItem {
                    Label("Profile", systemImage: "person")
                }
        }
    }
}

#Preview {
    ContentView()
}
