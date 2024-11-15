import SwiftUI

struct RecipeCinnamon: View {
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

struct RecipeCinnamon_Previews: PreviewProvider {
    static var previews: some View {
        RecipeCinnamon(
            recipeTitle: "Overnight Cinnamon Apple French Toast Bake",
            recipeDescription: "A delicious and easy-to-make breakfast bake with layers of cinnamon, apples, and French toast, perfect for prepping the night before.",
            ingredients: [
                "1 loaf French bread, cubed",
                "2 cups milk",
                "4 large eggs",
                "1/4 cup brown sugar",
                "1 tsp cinnamon",
                "1/2 tsp nutmeg",
                "1 tsp vanilla extract",
                "1/4 tsp salt",
                "3 apples, peeled and sliced",
                "1 tbsp butter, melted",
                "1/4 cup maple syrup (for serving)"
            ],
            instructions: [
                "Grease a 9x13-inch baking dish and layer the cubed French bread in the dish.",
                "In a large bowl, whisk together the milk, eggs, brown sugar, cinnamon, nutmeg, vanilla extract, and salt.",
                "Pour the egg mixture evenly over the bread, pressing down to ensure all the bread is soaked.",
                "Top with sliced apples and drizzle with melted butter.",
                "Cover the baking dish with plastic wrap and refrigerate overnight.",
                "Preheat the oven to 350°F (175°C) the next morning.",
                "Bake the casserole, uncovered, for 45-50 minutes, until golden and set.",
                "Serve with maple syrup and enjoy!"
            ],
            imageName: "https://www.example.com/images/cinnamon-apple-french-toast.jpg" // Replace with an actual image URL
        )
    }
}
