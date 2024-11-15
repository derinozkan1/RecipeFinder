import SwiftUI

struct RecipeSteak: View {
    let recipeTitle: String
    let recipeDescription: String
    let ingredients: [String]
    let instructions: [String]
    let imageName: String

    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 16) {
                // Recipe Image
                AsyncImage(url: URL(string: imageName)) { image in
                    image
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(height: 250)
                        .clipped()
                        .cornerRadius(12)
                } placeholder: {
                    Rectangle()
                        .foregroundColor(.gray)
                        .frame(height: 250)
                        .cornerRadius(12)
                }
                
                // Recipe Title
                Text(recipeTitle)
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .padding(.horizontal)
                
                // Recipe Description
                Text(recipeDescription)
                    .font(.body)
                    .foregroundColor(.secondary)
                    .padding(.horizontal)
                
                // Ingredients Section
                Text("Ingredients")
                    .font(.headline)
                    .padding(.horizontal)
                
                VStack(alignment: .leading, spacing: 8) {
                    ForEach(ingredients, id: \.self) { ingredient in
                        Text("• \(ingredient)")
                    }
                }
                .padding(.horizontal)
                
                // Instructions Section
                Text("Instructions")
                    .font(.headline)
                    .padding(.horizontal)
                
                VStack(alignment: .leading, spacing: 8) {
                    ForEach(Array(instructions.enumerated()), id: \.offset) { index, instruction in
                        Text("\(index + 1). \(instruction)")
                    }
                }
                .padding(.horizontal)
                
                Spacer()
            }
        }
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct RecipeSteak_Previews: PreviewProvider {
    static var previews: some View {
        RecipeSteak(
            recipeTitle: "Grilled Steak Bruschetta",
            recipeDescription: "A savory and refreshing appetizer featuring grilled steak slices topped with a tomato, basil, and balsamic mixture, served on toasted baguette slices.",
            ingredients: [
                "2 steaks (such as ribeye or sirloin)",
                "1 tablespoon olive oil",
                "Salt and pepper to taste",
                "1 baguette, sliced into 1-inch pieces",
                "1 cup cherry tomatoes, diced",
                "1/4 cup fresh basil, chopped",
                "1/4 cup balsamic vinegar",
                "1 tablespoon olive oil (for topping)",
                "1 clove garlic, minced"
            ],
            instructions: [
                "Preheat the grill to medium-high heat.",
                "Brush steaks with olive oil and season with salt and pepper.",
                "Grill steaks for 4-5 minutes per side for medium-rare, or longer for desired doneness.",
                "While steaks are grilling, toast the baguette slices on the grill or in the oven until golden and crispy.",
                "In a bowl, combine diced tomatoes, basil, balsamic vinegar, olive oil, and minced garlic.",
                "Slice the grilled steaks into thin strips.",
                "To assemble, place a slice of grilled steak on each toasted baguette slice and top with the tomato-basil mixture.",
                "Serve immediately and enjoy!"
            ],
            imageName: "https://www.example.com/images/grilled-steak-bruschetta.jpg" // Replace with an actual image URL
        )
    }
}
