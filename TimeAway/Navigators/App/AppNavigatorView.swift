//
//  AppNavigatorView.swift
//  TimeAway
//
//  Created by Telem Tobi on 29/10/2024.
//

import SwiftUI
import ComposableArchitecture

@ViewAction(for: AppNavigator.self)
struct AppNavigatorView: View {
    
    @Bindable var store: StoreOf<AppNavigator>
    
    var body: some View {
        switch store.scope(state: \.root, action: \.root).state {
        case let .home(state):
            HomeNavigatorView(
                store: StoreOf<HomeNavigator>(
                    initialState: state,
                    reducer: HomeNavigator.init
                )
            )
            
        default:
            EmptyView()
        }
    }
}
