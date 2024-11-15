// RecipeRhubarbCustardBars.swift

import SwiftUI

struct RecipeRhubarbCustardBars: View {
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

struct RecipeRhubarbCustardBars_Previews: PreviewProvider {
    static var previews: some View {
        RecipeRhubarbCustardBars(
            recipeTitle: "Rhubarb Custard Bars",
            recipeDescription: "A delicious dessert with a sweet custard topping and a buttery crust, filled with tangy rhubarb for a perfect balance of flavor.",
            ingredients: [
                "2 cups all-purpose flour",
                "1/2 cup sugar",
                "1/2 tsp baking powder",
                "1/4 tsp salt",
                "1/2 cup butter, softened",
                "2 eggs",
                "1 cup sour cream",
                "1 1/2 cups chopped rhubarb",
                "1 tsp vanilla extract",
                "1/2 cup sugar (for topping)",
                "1 tbsp flour (for topping)"
            ],
            instructions: [
                "Preheat oven to 350°F (175°C).",
                "In a medium bowl, combine flour, sugar, baking powder, and salt. Cut in butter until mixture resembles coarse crumbs.",
                "Press the mixture into a greased 9x13-inch baking dish to form a crust.",
                "Bake the crust for 10-12 minutes until lightly golden.",
                "While the crust bakes, whisk together eggs, sour cream, vanilla, and sugar for the custard filling.",
                "Add chopped rhubarb to the custard mixture and stir gently to combine.",
                "Pour the custard mixture over the crust and spread evenly.",
                "Bake for 25-30 minutes, or until the custard is set and golden on top.",
                "Allow to cool before cutting into bars. Serve chilled or at room temperature."
            ],
            imageName: "https://i.pinimg.com/736x/08/21/04/0821045572221ba107b6d86b337b027d.jpg"
        )
    }
}
