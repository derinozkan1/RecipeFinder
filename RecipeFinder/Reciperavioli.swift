import SwiftUI

struct Reciperavioli: View {
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

struct Reciperavioli_Previews: PreviewProvider {
    static var previews: some View {
        Reciperavioli(
            recipeTitle: "Crispy Skillet Ravioli",
            recipeDescription: "A delicious and crispy ravioli cooked in a skillet with a golden, crunchy exterior and a tender, cheesy interior. Perfect for a quick snack or appetizer.",
            ingredients: [
                "1 package of frozen ravioli",
                "2 tablespoons olive oil",
                "1/2 cup grated Parmesan cheese",
                "1 tablespoon fresh parsley, chopped",
                "Salt and pepper to taste"
            ],
            instructions: [
                "Heat olive oil in a skillet over medium heat.",
                "Once hot, add the frozen ravioli in a single layer. Cook for about 3-4 minutes per side until crispy and golden.",
                "Remove from the skillet and drain on a paper towel.",
                "Sprinkle with Parmesan cheese, chopped parsley, and season with salt and pepper.",
                "Serve immediately and enjoy!"
            ],
            imageName: "https://www.delish.com/entertaining/g30593215/crispy-skillet-ravioli-recipe/"
        )
    }
}
