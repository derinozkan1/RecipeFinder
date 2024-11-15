import SwiftUI

@main
struct RecipeFinderApp: App {
    // Optionally, you can add environment objects here
    @StateObject var recipeData = RecipeData() // Example of an environment object for shared data

    var body: some Scene {
        WindowGroup {
            // Pass environment object or any initial setup here
            ContentView()
                .environmentObject(recipeData) // Share the recipe data across views
        }
    }
}

// Example of an environment object for shared data (if needed)
class RecipeData: ObservableObject {
    @Published var recipes: [String] = []
}
