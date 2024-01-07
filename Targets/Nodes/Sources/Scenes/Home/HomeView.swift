//
//  HomeView.swift
//  Nodes
//
//  Created by Murilo Araujo on 09/12/23.
//

import SwiftUI

struct HomeView: View {
    @StateObject var presenter: HomePresenter
    var newItemTapped: (() -> Void)?
    
    var body: some View {
        content
            .frame(minWidth: 600, minHeight: 500)
            .toolbar(content: {
                NavigationLink(value: HomeCoordinator.Destination.newNode) {
                    Image(systemName: "plus")
                }
                Button {
                    
                } label: {
                    Image(systemName: "gearshape.fill")
                }
            })
            .navigationTitle("Nodes")
    }
    
    var content: some View {
        Text("No nodes for now, create a new one")
    }
}

#Preview {
    NavigationStack {
        HomeView(presenter: HomePresenter())
    }
}
