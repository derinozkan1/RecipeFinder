// RecipePotRoast.swift

import SwiftUI

struct RecipePotRoast: View {
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

struct RecipePotRoast_Previews: PreviewProvider {
    static var previews: some View {
        RecipePotRoast(
            recipeTitle: "Classic Pot Roast",
            recipeDescription: "A tender and juicy pot roast cooked with vegetables and a savory broth, perfect for a hearty family meal.",
            ingredients: [
                "3-4 lb chuck roast",
                "2 tbsp olive oil",
                "1 onion, chopped",
                "3 cloves garlic, minced",
                "4 carrots, peeled and chopped",
                "3 potatoes, peeled and cubed",
                "1 cup beef broth",
                "1 cup red wine",
                "2 tbsp tomato paste",
                "1 tsp dried thyme",
                "1 tsp dried rosemary",
                "Salt and pepper to taste"
            ],
            instructions: [
                "Preheat oven to 325°F (165°C).",
                "In a large oven-safe pot, heat olive oil over medium-high heat. Brown the roast on all sides, then remove it from the pot and set aside.",
                "Add chopped onion and garlic to the pot and sauté for 2-3 minutes, until softened.",
                "Stir in tomato paste, red wine, beef broth, thyme, rosemary, and salt and pepper. Bring to a simmer.",
                "Return the roast to the pot, cover, and transfer to the oven. Roast for 3-4 hours, or until the meat is tender.",
                "About 1 hour before the roast is done, add the carrots and potatoes to the pot.",
                "Once cooked, remove the roast and vegetables from the pot and let rest for 10-15 minutes before serving.",
                "Serve the pot roast with the cooked vegetables and sauce from the pot."
            ],
            imageName: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSkoxZTzt_XUjM9ax9GoQE0a17L7bU6A22niA&s"
        )
    }
}
