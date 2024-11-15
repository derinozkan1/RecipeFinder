// RecipeBeef.swift

import SwiftUI

struct RecipeBeef: View {
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

struct RecipeBeef_Previews: PreviewProvider {
    static var previews: some View {
        RecipeBeef(
            recipeTitle: "Beef Stir-Fry",
            recipeDescription: "A quick and flavorful stir-fry made with tender beef slices and colorful vegetables, perfect for a weeknight meal.",
            ingredients: [
                "1 lb beef sirloin, thinly sliced",
                "2 tbsp soy sauce",
                "1 tbsp cornstarch",
                "2 tbsp vegetable oil",
                "1 bell pepper, sliced",
                "1 cup broccoli florets",
                "1/2 cup sliced carrots",
                "2 cloves garlic, minced",
                "1/4 cup stir-fry sauce",
                "Salt and pepper to taste"
            ],
            instructions: [
                "In a bowl, mix beef slices with soy sauce and cornstarch. Set aside for 10 minutes.",
                "Heat 1 tbsp oil in a large skillet over medium-high heat. Add beef and cook until browned. Remove and set aside.",
                "In the same skillet, add remaining oil. Add garlic, bell pepper, broccoli, and carrots, stirring frequently.",
                "Return beef to the skillet, pour in stir-fry sauce, and cook for another 2-3 minutes until everything is well-coated.",
                "Season with salt and pepper, then serve hot over rice or noodles."
            ],
            imageName: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTOLrP_EGaGyqkeb6UNibPm3C4j2M7P06OPwQ&s" // Replace with actual image URL
        )
    }
}
