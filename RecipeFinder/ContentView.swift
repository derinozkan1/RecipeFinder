import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            ZStack {
                // Light Purple Background
                Color(red: 0.85, green: 0.75, blue: 1.0) // Light purple color
                    .ignoresSafeArea()

                VStack {
                    Spacer()

                    // Logo Image at the center of the screen
                    Image("logoImage") // Make sure the image name matches your logo image
                        .resizable()
                        .scaledToFit()
                        .frame(width: 350, height: 350) // Adjust size as necessary
                    
                    Spacer()
                    
                    // Login Button - Navigates to RecipeListScreen
                    NavigationLink(destination: RecipeListScreen()) {
                        Text("Start")
                            .font(Font.custom("Sofia Pro", size: 16).weight(.bold))
                            .padding()
                            .frame(maxWidth: 300) // Set max width for the button
                            .background(Color(red: 0.38, green: 0.02, blue: 0.32)) // Dark purple color
                            .cornerRadius(16)
                            .foregroundColor(.white)
                    }
                    .frame(height: 54) // Set fixed height for the button
                    
                    Spacer()
                }
                .frame(maxWidth: .infinity, alignment: .center) // Ensure all content is centered
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
