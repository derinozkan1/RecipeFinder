// RecipeLime.swift

import SwiftUI

struct RecipeLime: View {
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

struct RecipeLime_Previews: PreviewProvider {
    static var previews: some View {
        RecipeDetailView(
            recipeTitle: "Key Lime Pie",
            recipeDescription: "A tangy and sweet pie with a creamy filling and a buttery graham cracker crust. Perfect for dessert!",
            ingredients: [
                "1 1/2 cups graham cracker crumbs",
                "1/3 cup sugar",
                "6 tbsp melted butter",
                "1 can (14 oz) sweetened condensed milk",
                "1/2 cup key lime juice",
                "1 tbsp lime zest",
                "3 egg yolks",
                "Whipped cream for garnish"
            ],
            instructions: [
                "Preheat oven to 350°F (175°C).",
                "In a bowl, mix graham cracker crumbs, sugar, and melted butter. Press mixture into a 9-inch pie dish to form a crust.",
                "Bake crust for 10 minutes, then let it cool.",
                "In another bowl, whisk together condensed milk, key lime juice, lime zest, and egg yolks until smooth.",
                "Pour filling into the crust and bake for 15 minutes until set.",
                "Allow pie to cool, then refrigerate for at least 2 hours before serving.",
                "Garnish with whipped cream and lime slices if desired."
            ],
            imageName: "https://www.billyparisi.com/wp-content/uploads/2019/06/key-lime-pie-6.jpg"
        )
    }
}
