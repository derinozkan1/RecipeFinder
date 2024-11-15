import SwiftUI

struct RecipeDetailView: View {
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

struct RecipeDetailView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeDetailView(
            recipeTitle: "Egg & Avocado Toast",
            recipeDescription: "A healthy and delicious toast with creamy avocado and a perfectly cooked egg. Great for breakfast or a quick snack!",
            ingredients: ["1 slice of whole-grain bread", "1/2 avocado, sliced", "1 egg", "Salt and pepper to taste", "Optional: red pepper flakes, olive oil drizzle"],
            instructions: ["Toast the bread until golden brown.", "Cook the egg to your preference (fried or poached).", "Spread the avocado slices on the toast.", "Place the cooked egg on top of the avocado.", "Season with salt, pepper, and red pepper flakes, if desired.", "Drizzle with olive oil for extra flavor."],
            imageName: "https://www.eatingwell.com/thmb/YyDgEnCRdMgseMiHvHO7fPe0gtc=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/EWL-Jammy-Eggs-Avocado-Toast-step--055-6ec9d4014b5443c3af37af130a49ac6b.jpg"
        )
    }
}
