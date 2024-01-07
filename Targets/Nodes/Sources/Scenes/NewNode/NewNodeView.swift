//
//  NewNodeView.swift
//  Nodes
//
//  Created by Murilo Araujo on 06/01/24.
//

import SwiftUI

struct NewNodeView: View {
    @State var name: String = ""
    
    var body: some View {
        content
            .navigationTitle("Node creation")
            .toolbar(content: {
                Button("Save") {
                    
                }
            })
    }
    
    var content: some View {
        Form {
            basicInformationForm
            modelInformationForm
        }
    }
    
    var basicInformationForm: some View {
        Section("Basic information") {
            HStack {
                Image(systemName: "person")
                    .frame(width: 50, height: 50)
                    .background(.gray, in: .circle)
                Spacer(minLength: 16)
                TextField("Node name", text: $name)
            }
        }
    }
    
    var modelInformationForm: some View {
        Section("Model") {
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                Text("Select model")
            })
        }
    }
}

#Preview {
    NavigationStack {
        NewNodeView()
    }
}
