import SwiftUI

struct RecipeEggsBenedict: View {
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

struct RecipeEggsBenedict_Previews: PreviewProvider {
    static var previews: some View {
        RecipeEggsBenedict(
            recipeTitle: "Eggs Benedict",
            recipeDescription: "A classic brunch dish featuring poached eggs on English muffins with Canadian bacon, topped with creamy Hollandaise sauce.",
            ingredients: [
                "4 English muffins, split",
                "4 slices Canadian bacon",
                "4 large eggs",
                "1 tbsp white vinegar",
                "1/2 cup unsalted butter, melted",
                "3 egg yolks",
                "1 tbsp lemon juice",
                "Salt and pepper to taste",
                "Chopped chives, for garnish"
            ],
            instructions: [
                "Toast the English muffins until golden and set aside.",
                "In a skillet, cook the Canadian bacon over medium heat until browned, then place on toasted muffin halves.",
                "Bring a pot of water to a gentle simmer and add vinegar. Carefully crack each egg into the water and poach for 3-4 minutes, until whites are set but yolks are runny. Remove with a slotted spoon and place on top of the bacon.",
                "In a bowl, whisk the egg yolks and lemon juice. Slowly add the melted butter while whisking until the mixture thickens. Season with salt and pepper.",
                "Drizzle the Hollandaise sauce over the poached eggs and garnish with chopped chives. Serve immediately."
            ],
            imageName: "https://www.example.com/images/eggs-benedict.jpg" // Replace with an actual image URL
        )
    }
}
