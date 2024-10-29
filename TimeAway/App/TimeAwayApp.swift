//
//  TimeAwayApp.swift
//  TimeAway
//
//  Created by Telem Tobi on 25/10/2024.
//

import SwiftUI
import ComposableArchitecture

@main
struct TimeAwayApp: App {
    var body: some Scene {
        WindowGroup {
            AppNavigatorView(
                store: StoreOf<AppNavigator>(
                    initialState: .init(),
                    reducer: AppNavigator.init
                )
            )
        }
    }
}
