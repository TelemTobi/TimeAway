//
//  HomeNavigator.swift
//  TimeAway
//
//  Created by Telem Tobi on 29/10/2024.
//

import Foundation
import ComposableArchitecture

@Reducer
struct HomeNavigator {
    
    @ObservableState
    struct State: Equatable {
        var selectedTab: Tab = .explore
    }
    
    enum Action: ViewAction, Equatable {
        enum View: Equatable {
        }
        
        case view(View)
        case setSelectedTab(Tab)
    }
    
    var body: some ReducerOf<Self> {
        Reduce { state, action in
            switch action {
            case let .view(viewAction):
                return reduceViewAction(&state, viewAction)
                
            case let .setSelectedTab(newValue):
                state.selectedTab = newValue
                return .none
            }
        }
    }
    
    private func reduceViewAction(_ state: inout State, _ viewAction: Action.View) -> Effect<Action> {
        switch viewAction {
        }
    }
}

extension HomeNavigator {
    enum Tab {
        case explore, schedule, profile
        
        var title: String {
            switch self {
            case .explore: "Explore"
            case .schedule: "My Schedule"
            case .profile: "Profile"
            }
        }
    }
}
