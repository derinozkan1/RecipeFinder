// RecipeBeefEnchiladas.swift

import SwiftUI

struct RecipeBeefEnchiladas: View {
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

struct RecipeBeefEnchiladas_Previews: PreviewProvider {
    static var previews: some View {
        RecipeBeefEnchiladas(
            recipeTitle: "Beef Enchiladas",
            recipeDescription: "Delicious beef enchiladas with a rich, savory filling, topped with melted cheese and enchilada sauce. Perfect for a family dinner!",
            ingredients: [
                "1 lb ground beef",
                "1/2 cup diced onion",
                "1 can (15 oz) enchilada sauce",
                "8 flour tortillas",
                "2 cups shredded cheese",
                "1/2 cup diced green chilies",
                "Salt and pepper to taste",
                "Chopped fresh cilantro (for garnish)"
            ],
            instructions: [
                "Preheat oven to 350°F (175°C).",
                "In a skillet, cook ground beef and onions over medium heat until beef is browned and onions are soft.",
                "Stir in half of the enchilada sauce, green chilies, salt, and pepper.",
                "Fill each tortilla with beef mixture and some shredded cheese. Roll up and place seam side down in a baking dish.",
                "Pour remaining enchilada sauce over the tortillas and sprinkle with the remaining cheese.",
                "Bake for 20-25 minutes or until cheese is melted and bubbly.",
                "Garnish with chopped cilantro and serve hot."
            ],
            imageName: "https://images.immediate.co.uk/production/volatile/sites/30/2024/02/BeefEnchiladas-68c9381.jpg?quality=90&resize=556,505" // Replace with actual image URL
        )
    }
}
