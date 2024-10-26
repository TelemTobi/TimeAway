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
                .background(Color(.taBackground))
                .tabItem {
                    Label("Explore", systemImage: "globe.europe.africa")
                }
            
            Color.clear
                .background(Color(.taBackground))
                .tabItem {
                    Label("My Schedule", systemImage: "calendar")
                }
            
            ZStack {
                Color.clear
                
                VStack {
                    Text("Primary Text Color")
                        .foregroundStyle(.taPrimaryText)
                    
                    Text("Secondary Text Color")
                        .foregroundStyle(.taSecondayText)
                    
                    Button(action: {}) {
                        Text("Button Colors")
                            .fontWeight(.medium)
                            .foregroundStyle(.taButtonForeground)
                            .frame(maxWidth: .infinity, minHeight: 60)
                    }
                    .background(.taButtonBackground)
                    .clipShape(.rect(cornerRadius: 8))
                }
                .padding(.horizontal)
            }
            .background(Color(.taBackground))
            .tabItem {
                Label("Profile", systemImage: "person")
            }
        }
    }
}

#Preview {
    ContentView()
}
