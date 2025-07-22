import SwiftUI

@main
struct GraceApp: App {
    let permissions = PermissionsManager()
    let checker = UmbrellaChecker()

    var body: some Scene {
        WindowGroup {
            ContentView().onAppear {
                permissions.requestPermissions()
                checker.start()
                scheduleDailyCheck()
            }
        }
    }
}