//
//  HomeCoordinator.swift
//  Nodes
//
//  Created by Murilo Araujo on 06/01/24.
//

import Foundation
import SwiftUI

struct HomeCoordinator: View, Coordinator {
    enum Destination: Hashable {
        case newNode
        case settings
    }

    var router: Router
    
    init(router: Router) {
        self.router = router
    }
    
    var body: some View {
        HomeView(presenter: HomePresenter())
            .navigationDestination(for: Destination.self) { destination in
                switch destination {
                case .newNode:
                    startNewNode()
                case .settings:
                    startNewNode()
                }
            }
    }
    
    @ViewBuilder
    private func startNewNode() -> some View {
        NewNodeCoordinator(router: router)
    }
}
