//
//  AppNavigator.swift
//  TimeAway
//
//  Created by Telem Tobi on 27/10/2024.
//

import Foundation
import ComposableArchitecture

@Reducer
struct AppNavigator {
    
    @ObservableState
    struct State: Equatable {
        var root: Root.State = .initial
        
        init() {
            self.root = .home(HomeNavigator.State())
        }
    }
    
    enum Action: ViewAction, Equatable {
        enum View: Equatable {
        }
        
        case view(View)
        case root(Root.Action)
    }
    
    var body: some ReducerOf<Self> {
        Reduce { state, action in
            switch action {
            case let .view(viewAction):
                return reduceViewAction(&state, viewAction)
                
            case .view, .root:
                return .none
            }
        }
    }
    
    private func reduceViewAction(_ state: inout State, _ viewAction: Action.View) -> Effect<Action> {
        switch viewAction {
            
        }
    }
}

extension AppNavigator {
    @Reducer
    struct Root {
        
        @ObservableState
        enum State: Equatable {
            case initial
            case home(HomeNavigator.State)
        }
        
        enum Action: Equatable {
            case initial
            case home(HomeNavigator.Action)
        }
        
        var body: some ReducerOf<Self> {
            Scope(state: \.home, action: \.home, child: HomeNavigator.init)
        }
    }
}
