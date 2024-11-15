// RecipeApple.swift

import SwiftUI

struct RecipeApple: View {
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

struct RecipeApple_Previews: PreviewProvider {
    static var previews: some View {
        RecipeApple(
            recipeTitle: "Apple Pie",
            recipeDescription: "A classic apple pie with a buttery, flaky crust and a sweet, cinnamon-spiced apple filling. Perfect for any occasion!",
            ingredients: [
                "6 cups thinly sliced apples",
                "3/4 cup sugar",
                "2 tbsp all-purpose flour",
                "1/2 tsp ground cinnamon",
                "1/4 tsp salt",
                "1 tbsp lemon juice",
                "Pastry for a double-crust pie",
                "1 tbsp butter"
            ],
            instructions: [
                "Preheat oven to 425°F (220°C).",
                "In a large bowl, combine sugar, flour, cinnamon, salt, and lemon juice.",
                "Add apples to the mixture and toss to coat.",
                "Roll out half of the pastry and fit it into a 9-inch pie plate.",
                "Fill with apple mixture, dot with butter, and cover with the top crust.",
                "Seal and flute edges, and cut slits in the top crust.",
                "Bake for 45 to 50 minutes or until the crust is golden brown and apples are tender.",
                "Cool on a wire rack before serving."
            ],
            imageName: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTWIdBNof7CBEr6ErX6Z_8wiUTx40zxVivieA&s" // Replace with actual image URL
        )
    }
}
