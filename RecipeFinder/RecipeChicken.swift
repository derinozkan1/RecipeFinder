import SwiftUI

struct RecipeChicken: View {
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

struct RecipeChicken_Previews: PreviewProvider {
    static var previews: some View {
        RecipeChicken(
            recipeTitle: "Curried Chicken Schnitzel",
            recipeDescription: "A flavorful twist on the classic schnitzel, seasoned with curry and served with a crisp crust. Great for a unique main course.",
            ingredients: [
                "4 boneless, skinless chicken breasts",
                "1 cup breadcrumbs",
                "1/2 cup all-purpose flour",
                "2 eggs, beaten",
                "1 tbsp curry powder",
                "Salt and pepper, to taste",
                "1/4 cup vegetable oil",
                "Lemon wedges, for serving"
            ],
            instructions: [
                "Place the chicken breasts between sheets of plastic wrap and pound until about 1/2 inch thick.",
                "Season the flour with salt, pepper, and curry powder in a shallow dish.",
                "Dip each chicken breast in the flour, then in the beaten eggs, and finally coat with breadcrumbs.",
                "Heat oil in a large skillet over medium-high heat. Cook each schnitzel for 3-4 minutes per side until golden brown and cooked through.",
                "Drain on paper towels, then serve hot with lemon wedges."
            ],
            imageName: "https://www.example.com/curried-chicken-schnitzel.jpg" // Replace with an actual image URL
        )
    }
}
