import SwiftUI

struct RecipeBlueberry: View {
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

struct RecipeBlueberry_Previews: PreviewProvider {
    static var previews: some View {
        RecipeBlueberry(
            recipeTitle: "Blueberry Pancakes",
            recipeDescription: "Fluffy, golden blueberry pancakes that are perfect for starting the day off right. Serve with syrup, butter, and a handful of fresh blueberries.",
            ingredients: ["1 cup all-purpose flour", "2 tbsp sugar", "2 tsp baking powder", "1/2 tsp salt", "1 egg", "1 cup milk", "2 tbsp melted butter", "1 tsp vanilla extract", "1/2 cup fresh or frozen blueberries"],
            instructions: ["In a bowl, whisk together the flour, sugar, baking powder, and salt.", "In another bowl, beat the egg and add the milk, melted butter, and vanilla extract.", "Combine the wet and dry ingredients and stir until just combined.", "Fold in the blueberries.", "Heat a griddle or pan over medium heat and lightly grease it.", "Pour 1/4 cup of batter onto the griddle for each pancake.", "Cook until bubbles form on the surface, then flip and cook until golden brown.", "Serve with syrup, butter, and fresh blueberries."],
            imageName: "https://www.simplyrecipes.com/thmb/Za5vj_czJk_V4n7Dltg6v-zdNmY=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/Simply-Recipes-Pancakes-LEAD-1-2a8b5e1833034b54b64f070e9b102c09.jpg"
        )
    }
}
