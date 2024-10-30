//
//  HomeNavigatorView.swift
//  TimeAway
//
//  Created by Telem Tobi on 29/10/2024.
//

import SwiftUI
import ComposableArchitecture

@ViewAction(for: HomeNavigator.self)
struct HomeNavigatorView: View {
    
    @Bindable var store: StoreOf<HomeNavigator>
    
    var body: some View {
        TabView(selection: $store.selectedTab.sending(\.setSelectedTab)) {
            Color.clear
                .background(Color(.taBackground))
                .tabItem { Label("Explore", systemImage: "globe.europe.africa") }
                .tag(HomeNavigator.Tab.explore)
        
            Color.clear
                .background(Color(.taBackground))
                .tabItem { Label("My Schedule", systemImage: "calendar") }
                .tag(HomeNavigator.Tab.schedule)
            
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
            .tabItem { Label("Profile", systemImage: "person") }
            .tag(HomeNavigator.Tab.profile)
        }
    }
}
