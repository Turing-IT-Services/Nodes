import SwiftUI
import NodesUI

@main
struct NodesApp: App {
    @ObservedObject var router = Router()
    
    var app: some View {
        NavigationStack {
            HomeCoordinator(router: router)
        }
        .environmentObject(router)
    }
    
    var body: some Scene {
        WindowGroup {
            app
        }
    }
}
