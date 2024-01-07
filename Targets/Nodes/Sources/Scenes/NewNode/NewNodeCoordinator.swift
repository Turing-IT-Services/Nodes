//
//  NewNodeCoordinator.swift
//  Nodes
//
//  Created by Murilo Araujo on 06/01/24.
//

import Foundation
import SwiftUI

struct NewNodeCoordinator: View, Coordinator {
    var router: Router
    
    init(router: Router) {
        self.router = router
    }
    
    var body: some View {
        NewNodeView()
    }
}
