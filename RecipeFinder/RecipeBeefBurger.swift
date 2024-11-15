// RecipeBeefBurger.swift

import SwiftUI

struct RecipeBeefBurger: View {
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

struct RecipeBeefBurger_Previews: PreviewProvider {
    static var previews: some View {
        RecipeBeefBurger(
            recipeTitle: "Classic Beef Burger",
            recipeDescription: "A juicy and flavorful beef burger, topped with your favorite cheese and fresh veggies, served on a soft bun. The ultimate comfort food!",
            ingredients: [
                "1 lb ground beef (80% lean)",
                "1 tablespoon olive oil",
                "Salt and pepper to taste",
                "4 burger buns",
                "4 slices cheddar cheese",
                "Lettuce, tomato, and onion for toppings",
                "Ketchup and mustard (optional)"
            ],
            instructions: [
                "Preheat the grill or skillet to medium-high heat.",
                "Divide the ground beef into four equal portions and shape them into patties. Season both sides with salt and pepper.",
                "Place the patties on the grill or skillet and cook for 4-5 minutes on each side for medium doneness. Add a slice of cheese to each patty during the last minute of cooking.",
                "Toast the buns on the grill or in the skillet until golden.",
                "Assemble the burgers by placing the cooked patties on the buns and adding your desired toppings.",
                "Serve with ketchup, mustard, and extra veggies as desired."
            ],
            imageName: "https://aspenridgebeef.com/wp-content/uploads/2022/07/GroundBeef-UltimateBurger-Recipe.jpg"
        )
    }
}
