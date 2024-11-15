import SwiftUI

struct Recipedetail: View {
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

struct Recipedetail_Previews: PreviewProvider {
    static var previews: some View {
        Recipedetail(
            recipeTitle: "Bowl of Rice",
            recipeDescription: "A simple yet versatile bowl of rice that can be a base for various meals. Ideal for pairing with vegetables, protein, and flavorful sauces.",
            ingredients: ["1 cup of rice", "2 cups of water", "Pinch of salt", "Optional: vegetables, protein, or sauce of choice"],
            instructions: ["Rinse the rice under cold water until the water runs clear.", "In a pot, add rice, water, and salt.", "Bring to a boil, then reduce the heat and cover.", "Simmer for 18-20 minutes or until the water is absorbed.", "Remove from heat and let it rest for 5 minutes.", "Fluff the rice with a fork and serve."],
            imageName: "https://www.southernliving.com/thmb/gYgRHO3BcxYaaZmtbJ_nFkqtiG8=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/How_To_Cook_Rice_007-71c450b1a0684fb28e729228fc300676.jpg"
        )
    }
}
