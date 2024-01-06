//
//  AppView.swift
//  Nodes
//
//  Created by Murilo Araujo on 09/12/23.
//

import SwiftUI

struct AppView: View {
    @ObservedObject var router = Router()
    
    var body: some View {
        NavigationStack {
            HomeCoordinator(router: router)
        }
        .environmentObject(router)
    }
}

#Preview {
    AppView()
}
