import SwiftUI

struct NewView: View {
    @State private var searchText: String = ""
    
    var body: some View {
        NavigationView {
            ScrollView {
                VStack(alignment: .leading, spacing: 10) {
                    
                    // Search Bar
                    HStack {
                        TextField("Search for recipes...", text: $searchText)
                            .padding(10)
                            .background(Color.white)
                            .cornerRadius(8)
                            .shadow(color: Color.gray.opacity(0.2), radius: 5, x: 0, y: 2)
                            .padding(.horizontal)
                        
                        Button(action: {
                            // Clear search action
                            searchText = ""
                        }) {
                            Image(systemName: "xmark.circle.fill")
                                .foregroundColor(.gray)
                                .padding(.trailing, 10)
                        }
                    }

                    // Popular Recipes Section
                    SectionHeader(title: "Popular Recipes", actionTitle: "Most Liked")
                    
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack(spacing: 12) {
                            // Navigation Link to RecipeDetailView for "Egg & Avocado Toast"
                            NavigationLink(destination: RecipeDetailView(
                                recipeTitle: "Egg & Avocado Toast",
                                recipeDescription: "A healthy and delicious toast with creamy avocado and a perfectly cooked egg. Great for breakfast or a quick snack!",
                                ingredients: ["1 slice of whole-grain bread", "1/2 avocado, sliced", "1 egg", "Salt and pepper to taste", "Optional: red pepper flakes, olive oil drizzle"],
                                instructions: ["Toast the bread until golden brown.", "Cook the egg to your preference (fried or poached).", "Spread the avocado slices on the toast.", "Place the cooked egg on top of the avocado.", "Season with salt, pepper, and red pepper flakes, if desired.", "Drizzle with olive oil for extra flavor."],
                                imageName: "https://www.eatingwell.com/thmb/YyDgEnCRdMgseMiHvHO7fPe0gtc=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/EWL-Jammy-Eggs-Avocado-Toast-step--055-6ec9d4014b5443c3af37af130a49ac6b.jpg"
                            )) {
                                PopularRecipeCard(recipeName: "Egg & Avo...", imageUrl: "https://www.eatingwell.com/thmb/YyDgEnCRdMgseMiHvHO7fPe0gtc=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/EWL-Jammy-Eggs-Avocado-Toast-step--055-6ec9d4014b5443c3af37af130a49ac6b.jpg")
                            }
                            
                            // Navigation Link to RecipeDetailView for "Bowl of Rice"
                            NavigationLink(destination: Recipedetail(
                                recipeTitle: "Bowl of Rice",
                                recipeDescription: "A simple yet versatile bowl of rice that can be a base for various meals. Ideal for pairing with vegetables, protein, and flavorful sauces.",
                                ingredients: ["1 cup of rice", "2 cups of water", "Pinch of salt", "Optional: vegetables, protein, or sauce of choice"],
                                instructions: ["Rinse the rice under cold water until the water runs clear.", "In a pot, add rice, water, and salt.", "Bring to a boil, then reduce the heat and cover.", "Simmer for 18-20 minutes or until the water is absorbed.", "Remove from heat and let it rest for 5 minutes.", "Fluff the rice with a fork and serve."],
                                imageName: "https://www.southernliving.com/thmb/gYgRHO3BcxYaaZmtbJ_nFkqtiG8=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/How_To_Cook_Rice_007-71c450b1a0684fb28e729228fc300676.jpg"
                            )) {
                                PopularRecipeCard(recipeName: "Bowl of r...", imageUrl: "https://www.southernliving.com/thmb/gYgRHO3BcxYaaZmtbJ_nFkqtiG8=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/How_To_Cook_Rice_007-71c450b1a0684fb28e729228fc300676.jpg")
                            }
                            NavigationLink(destination: RecipeLime(
                                recipeTitle: "Key Lime Pie",
                                recipeDescription: "A tangy and sweet pie with a creamy filling and a buttery graham cracker crust. Perfect for dessert!",
                                ingredients: ["1 1/2 cups graham cracker crumbs",
                                              "1/3 cup sugar",
                                              "6 tbsp melted butter",
                                              "1 can (14 oz) sweetened condensed milk",
                                              "1/2 cup key lime juice",
                                              "1 tbsp lime zest",
                                              "3 egg yolks",
                                              "Whipped cream for garnish"],
                                instructions: ["Preheat oven to 350°F (175°C).",
                                               "In a bowl, mix graham cracker crumbs, sugar, and melted butter. Press mixture into a 9-inch pie dish to form a crust.",
                                               "Bake crust for 10 minutes, then let it cool.",
                                               "In another bowl, whisk together condensed milk, key lime juice, lime zest, and egg yolks until smooth.",
                                               "Pour filling into the crust and bake for 15 minutes until set.",
                                               "Allow pie to cool, then refrigerate for at least 2 hours before serving.",
                                               "Garnish with whipped cream and lime slices if desired."],
                                imageName: "https://www.billyparisi.com/wp-content/uploads/2019/06/key-lime-pie-6.jpg"
                            )) {
                                PopularRecipeCard(recipeName: "Key Lime...", imageUrl: "https://www.billyparisi.com/wp-content/uploads/2019/06/key-lime-pie-6.jpg")
                            }
                            
                            NavigationLink(destination: RecipeApple(
                                recipeTitle: "Apple Pie",
                                recipeDescription: "A classic apple pie with a buttery, flaky crust and a sweet, cinnamon-spiced apple filling. Perfect for any occasion!",
                                ingredients: [ "6 cups thinly sliced apples",
                                               "3/4 cup sugar",
                                               "2 tbsp all-purpose flour",
                                               "1/2 tsp ground cinnamon",
                                               "1/4 tsp salt",
                                               "1 tbsp lemon juice",
                                               "Pastry for a double-crust pie",
                                               "1 tbsp butter"],
                                instructions: ["Preheat oven to 425°F (220°C).",
                                               "In a large bowl, combine sugar, flour, cinnamon, salt, and lemon juice.",
                                               "Add apples to the mixture and toss to coat.",
                                               "Roll out half of the pastry and fit it into a 9-inch pie plate.",
                                               "Fill with apple mixture, dot with butter, and cover with the top crust.",
                                               "Seal and flute edges, and cut slits in the top crust.",
                                               "Bake for 45 to 50 minutes or until the crust is golden brown and apples are tender.",
                                               "Cool on a wire rack before serving."],
                                imageName: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTWIdBNof7CBEr6ErX6Z_8wiUTx40zxVivieA&s"
                            )) {
                                PopularRecipeCard(recipeName: "Apple P...", imageUrl: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTWIdBNof7CBEr6ErX6Z_8wiUTx40zxVivieA&s")
                            }
                            NavigationLink(destination: RecipeBeefEnchiladas(
                                recipeTitle: "Beef Enchiladas",
                                recipeDescription: "Delicious beef enchiladas with a rich, savory filling, topped with melted cheese and enchilada sauce. Perfect for a family dinner!",
                                ingredients: [  "1 lb ground beef",
                                                "1/2 cup diced onion",
                                                "1 can (15 oz) enchilada sauce",
                                                "8 flour tortillas",
                                                "2 cups shredded cheese",
                                                "1/2 cup diced green chilies",
                                                "Salt and pepper to taste",
                                                "Chopped fresh cilantro (for garnish)"],
                                instructions: [ "Preheat oven to 350°F (175°C).",
                                                "In a skillet, cook ground beef and onions over medium heat until beef is browned and onions are soft.",
                                                "Stir in half of the enchilada sauce, green chilies, salt, and pepper.",
                                                "Fill each tortilla with beef mixture and some shredded cheese. Roll up and place seam side down in a baking dish.",
                                                "Pour remaining enchilada sauce over the tortillas and sprinkle with the remaining cheese.",
                                                "Bake for 20-25 minutes or until cheese is melted and bubbly.",
                                                "Garnish with chopped cilantro and serve hot."],
                                imageName: "https://images.immediate.co.uk/production/volatile/sites/30/2024/02/BeefEnchiladas-68c9381.jpg?quality=90&resize=556,505"
                            )) {
                                PopularRecipeCard(recipeName: "Beef Ench...", imageUrl: "https://images.immediate.co.uk/production/volatile/sites/30/2024/02/BeefEnchiladas-68c9381.jpg?quality=90&resize=556,505")
                            }
                            
            
                            NavigationLink(destination: RecipeRhubarbCustardBars(
                                recipeTitle: "Rhubarb Custard Bars",
                                recipeDescription: "A delicious dessert with a sweet custard topping and a buttery crust, filled with tangy rhubarb for a perfect balance of flavor.",
                                ingredients: [   "2 cups all-purpose flour",
                                                 "1/2 cup sugar",
                                                 "1/2 tsp baking powder",
                                                 "1/4 tsp salt",
                                                 "1/2 cup butter, softened",
                                                 "2 eggs",
                                                 "1 cup sour cream",
                                                 "1 1/2 cups chopped rhubarb",
                                                 "1 tsp vanilla extract",
                                                 "1/2 cup sugar (for topping)",
                                                 "1 tbsp flour (for topping)"],
                                instructions: [  "Preheat oven to 350°F (175°C).",
                                                 "In a medium bowl, combine flour, sugar, baking powder, and salt. Cut in butter until mixture resembles coarse crumbs.",
                                                 "Press the mixture into a greased 9x13-inch baking dish to form a crust.",
                                                 "Bake the crust for 10-12 minutes until lightly golden.",
                                                 "While the crust bakes, whisk together eggs, sour cream, vanilla, and sugar for the custard filling.",
                                                 "Add chopped rhubarb to the custard mixture and stir gently to combine.",
                                                 "Pour the custard mixture over the crust and spread evenly.",
                                                 "Bake for 25-30 minutes, or until the custard is set and golden on top.",
                                                 "Allow to cool before cutting into bars. Serve chilled or at room temperature."],
                                imageName: "https://i.pinimg.com/736x/08/21/04/0821045572221ba107b6d86b337b027d.jpg"
                            )) {
                                PopularRecipeCard(recipeName: "Rhubarb Cu...", imageUrl: "https://i.pinimg.com/736x/08/21/04/0821045572221ba107b6d86b337b027d.jpg")
                            }
                            NavigationLink(destination: RecipePotRoast(
                                recipeTitle: "Pot Roast",
                                recipeDescription: "A tender and juicy pot roast cooked with vegetables and a savory broth, perfect for a hearty family meal.",
                                ingredients: [   "3-4 lb chuck roast",
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
                                                 "Salt and pepper to taste"],
                                instructions: [   "Preheat oven to 325°F (165°C).",
                                                  "In a large oven-safe pot, heat olive oil over medium-high heat. Brown the roast on all sides, then remove it from the pot and set aside.",
                                                  "Add chopped onion and garlic to the pot and sauté for 2-3 minutes, until softened.",
                                                  "Stir in tomato paste, red wine, beef broth, thyme, rosemary, and salt and pepper. Bring to a simmer.",
                                                  "Return the roast to the pot, cover, and transfer to the oven. Roast for 3-4 hours, or until the meat is tender.",
                                                  "About 1 hour before the roast is done, add the carrots and potatoes to the pot.",
                                                  "Once cooked, remove the roast and vegetables from the pot and let rest for 10-15 minutes before serving.",
                                                  "Serve the pot roast with the cooked vegetables and sauce from the pot."],
                                imageName: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSkoxZTzt_XUjM9ax9GoQE0a17L7bU6A22niA&s"
                            )) {
                                PopularRecipeCard(recipeName: "Pot Roa...", imageUrl: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSkoxZTzt_XUjM9ax9GoQE0a17L7bU6A22niA&s")
                            }

                        }
                        
                        .padding(.horizontal)
                    }
                    
                    // Editor's Choice Section
                    SectionHeader(title: "Editor’s Choice", actionTitle: "Our Favourites")
                    
                    // Editor's Choice Recipe Cards
                    VStack(spacing: 16) {
                        NavigationLink(destination: RecipeBlueberry(
                            recipeTitle: "Easy Homemade Beef Burger", // Actual string here
                            recipeDescription: "A juicy and flavorful beef burger, topped with your favorite cheese and fresh veggies, served on a soft bun. The ultimate comfort food!", // Add an actual description
                            ingredients: [  "1 lb ground beef (80% lean)",
                                            "1 tablespoon olive oil",
                                            "Salt and pepper to taste",
                                            "4 burger buns",
                                            "4 slices cheddar cheese",
                                            "Lettuce, tomato, and onion for toppings",
                                            "Ketchup and mustard (optional)"], // Add a list of ingredients
                            instructions: [ "Preheat the grill or skillet to medium-high heat.",
                                            "Divide the ground beef into four equal portions and shape them into patties. Season both sides with salt and pepper.",
                                            "Place the patties on the grill or skillet and cook for 4-5 minutes on each side for medium doneness. Add a slice of cheese to each patty during the last minute of cooking.",
                                            "Toast the buns on the grill or in the skillet until golden.",
                                            "Assemble the burgers by placing the cooked patties on the buns and adding your desired toppings.",
                                            "Serve with ketchup, mustard, and extra veggies as desired."], // Add the steps
                            imageName: "https://aspenridgebeef.com/wp-content/uploads/2022/07/GroundBeef-UltimateBurger-Recipe.jpg" // Add an image name or URL
                        )) {
                            EditorRecipeCard(
                                imageURL: "https://aspenridgebeef.com/wp-content/uploads/2022/07/GroundBeef-UltimateBurger-Recipe.jpg",
                                title: "Easy homemade beef burger",
                                author: "Begüm Burçak",
                                profileImageURL: "https://img.freepik.com/premium-vector/woman-profile-cartoon_18591-58480.jpg"
                            )
                        }
                        
                        
                        
                        
                        NavigationLink(destination: RecipeBlueberry(
                            recipeTitle: "Blueberry Pancakes", // Actual string here
                            recipeDescription: "A delicious breakfast with blueberries and eggs.", // Add an actual description
                            ingredients: ["Eggs", "Blueberries", "Butter", "Salt"], // Add a list of ingredients
                            instructions: ["Crack eggs", "Mix with blueberries", "Cook on low heat"], // Add the steps
                            imageName: "blueberry_egg_image" // Add an image name or URL
                        )) {
                            EditorRecipeCard(
                                imageURL: "https://www.primaledgehealth.com/wp-content/uploads/2017/09/Sweet-omelette-2.jpg",
                                title: "Blueberry pancakes",
                                author: "Buse Liv",
                                profileImageURL: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTUNDOFQ50BAvFecjPFLuw2YaBASC5ajsOQLg&s"
                            )
                        }
                        NavigationLink(destination: Reciperavioli(
                            recipeTitle: "Crispy Skillet Ravioli", // Actual string here
                            recipeDescription: "A delicious and crispy ravioli cooked in a skillet with a golden, crunchy exterior and a tender, cheesy interior. Perfect for a quick snack or appetizer.", // Add an actual description
                            ingredients: [
                                "1 package of frozen ravioli",
                                "2 tablespoons olive oil",
                                "1/2 cup grated Parmesan cheese",
                                "1 tablespoon fresh parsley, chopped",
                                "Salt and pepper to taste"
                            ], // Add a list of ingredients
                            instructions: [
                                "Heat olive oil in a skillet over medium heat.",
                                "Once hot, add the frozen ravioli in a single layer. Cook for about 3-4 minutes per side until crispy and golden.",
                                "Remove from the skillet and drain on a paper towel.",
                                "Sprinkle with Parmesan cheese, chopped parsley, and season with salt and pepper.",
                                "Serve immediately and enjoy!"
                            ], // Add the steps
                            imageName: "https://www.delish.com/entertaining/g30593215/crispy-skillet-ravioli-recipe/" // Add an image name or URL
                        )) {
                            EditorRecipeCard(
                                imageURL: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ93XUM0p7kmI-Or-9EdxY6sbxPg3cRI-6WCg&s",
                                title: "Crispy Skillet Ravioli",
                                author: "Zeynep Topak",
                                profileImageURL: "https://img.freepik.com/premium-vector/female-user-profile-avatar-is-woman-character-screen-saver-with-emotions_505620-617.jpg"
                            )
                        }

                        
                        NavigationLink(destination: RecipeBeef(
                                            recipeTitle: "Beef Stir-Fry",
                                            recipeDescription: "A quick and delicious beef stir-fry with tender beef strips and fresh vegetables, tossed in a savory sauce. Perfect for a weeknight dinner.",
                                            ingredients: [
                                                "1 lb beef sirloin, thinly sliced",
                                                "1 red bell pepper, sliced",
                                                "1 green bell pepper, sliced",
                                                "1/2 cup broccoli florets",
                                                "2 tablespoons soy sauce",
                                                "1 tablespoon oyster sauce",
                                                "1 tablespoon vegetable oil",
                                                "Salt and pepper to taste"
                                            ],
                                            instructions: [
                                                "Heat the vegetable oil in a skillet over medium-high heat.",
                                                "Add the beef slices and cook until browned, about 3-4 minutes.",
                                                "Remove the beef and set aside.",
                                                "In the same skillet, add the vegetables and stir-fry until tender-crisp.",
                                                "Return the beef to the skillet, add soy sauce and oyster sauce, and stir well.",
                                                "Cook for an additional 2-3 minutes, then serve hot."
                                            ],
                                            imageName: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTOLrP_EGaGyqkeb6UNibPm3C4j2M7P06OPwQ&s"
                                        )) {
                                            EditorRecipeCard(
                                                imageURL: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTOLrP_EGaGyqkeb6UNibPm3C4j2M7P06OPwQ&s",
                                                title: "Beef Stir-Fry",
                                                author: "Derin Özkan",
                                                profileImageURL: "https://static.vecteezy.com/system/resources/previews/014/212/681/non_2x/female-user-profile-avatar-is-a-woman-a-character-for-a-screen-saver-with-emotions-for-website-and-mobile-app-design-illustration-on-a-white-isolated-background-vector.jpg"
                                            )
                                        }
                        
                        NavigationLink(destination: RecipeChicken(
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
                            imageName: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcToPTl3ExE-xuEfnBzLtcdfwk9dX5Q33PMDXA&s"
                        )) {
                            EditorRecipeCard(
                                imageURL: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcToPTl3ExE-xuEfnBzLtcdfwk9dX5Q33PMDXA&s",
                                title: "Curried Chicken Schnitzel",
                                author: "Duru Özkan",
                                profileImageURL: "https://thumbs.dreamstime.com/b/female-avatar-icon-flat-style-female-user-icon-cartoon-woman-vector-stock-91462850.jpg"
                            )
                        }

                                                NavigationLink(destination: RecipeEggsBenedict(
                            recipeTitle: "Classic Eggs Benedict",
                            recipeDescription: "A traditional breakfast favorite featuring poached eggs and Canadian bacon on an English muffin, topped with rich hollandaise sauce.",
                            ingredients: [
                                "4 eggs",
                                "2 English muffins, split and toasted",
                                "4 slices Canadian bacon",
                                "1/2 cup unsalted butter, melted",
                                "3 egg yolks",
                                "1 tablespoon lemon juice",
                                "Salt and pepper to taste",
                                "Fresh chives, chopped (optional)"
                            ],
                            instructions: [
                                "Fill a pot with about 2-3 inches of water and bring it to a simmer. Add a splash of vinegar.",
                                "Crack each egg into a small bowl and gently slide it into the simmering water. Poach for 3-4 minutes, then remove with a slotted spoon.",
                                "In a skillet, cook Canadian bacon until lightly browned. Set aside.",
                                "For the hollandaise sauce: Whisk egg yolks and lemon juice in a bowl over a double boiler until thickened. Slowly whisk in melted butter. Season with salt and pepper.",
                                "To assemble: Place a slice of Canadian bacon on each toasted English muffin half, top with a poached egg, and drizzle with hollandaise sauce. Garnish with chives, if desired.",
                                "Serve immediately and enjoy!"
                            ],
                            imageName: "https://www.allrecipes.com/thmb/QVMaPhXnj1HQ70C7Ka9WYtuipHg=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/17205-eggs-benedict-DDMFS-4x3-a0042d5ae1da485fac3f468654187db0.jpg"
                        )) {
                            EditorRecipeCard(
                                imageURL: "https://www.allrecipes.com/thmb/QVMaPhXnj1HQ70C7Ka9WYtuipHg=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/17205-eggs-benedict-DDMFS-4x3-a0042d5ae1da485fac3f468654187db0.jpg",
                                title: "Classic Eggs Benedict",
                                author: "Begüm Burçak",
                                profileImageURL: "https://img.freepik.com/premium-vector/woman-profile-cartoon_18591-58480.jpg"
                            )
                        }

                        NavigationLink(destination: RecipeCinnamon(
                            recipeTitle: "Overnight Cinnamon Apple French Toast Bake",
                            recipeDescription: "A delicious and easy-to-make breakfast bake with layers of cinnamon, apples, and French toast, perfect for prepping the night before.",
                            ingredients: [
                                "1 loaf French bread, cubed",
                                "2 cups milk",
                                "4 large eggs",
                                "1/4 cup brown sugar",
                                "1 tsp cinnamon",
                                "1/2 tsp nutmeg",
                                "1 tsp vanilla extract",
                                "1/4 tsp salt",
                                "3 apples, peeled and sliced",
                                "1 tbsp butter, melted",
                                "1/4 cup maple syrup (for serving)"
                            ],
                            instructions: [
                                "Grease a 9x13-inch baking dish and layer the cubed French bread in the dish.",
                                "In a large bowl, whisk together the milk, eggs, brown sugar, cinnamon, nutmeg, vanilla extract, and salt.",
                                "Pour the egg mixture evenly over the bread, pressing down to ensure all the bread is soaked.",
                                "Top with sliced apples and drizzle with melted butter.",
                                "Cover the baking dish with plastic wrap and refrigerate overnight.",
                                "Preheat the oven to 350°F (175°C) the next morning.",
                                "Bake the casserole, uncovered, for 45-50 minutes, until golden and set.",
                                "Serve with maple syrup and enjoy!"
                            ],
                            imageName: "https://img.buzzfeed.com/video-api-prod/assets/3870285915594ed083ae7ab2ce3093ee/BFV17798_AppleCinnamonFrenchToastBake-THUMB_FB1080.jpg?resize=1200:*"
                        )) {
                            EditorRecipeCard(
                                imageURL: "https://img.buzzfeed.com/video-api-prod/assets/3870285915594ed083ae7ab2ce3093ee/BFV17798_AppleCinnamonFrenchToastBake-THUMB_FB1080.jpg?resize=1200:*",
                                title: "Overnight Cinnamon Apple French Toast Bake",
                                author: "Pınar Yıldırım",
                                profileImageURL: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSYXgog2eWOoVzm9VTZ585X0ST3tDrX1odRWQ&s"
                            )
                        }
                        NavigationLink(destination: RecipeSteak(
                            recipeTitle: "Grilled Steak Bruschetta",
                            recipeDescription: "A savory and refreshing appetizer featuring grilled steak slices topped with a tomato, basil, and balsamic mixture, served on toasted baguette slices.",
                            ingredients: [
                                "2 steaks (such as ribeye or sirloin)",
                                "1 tablespoon olive oil",
                                "Salt and pepper to taste",
                                "1 baguette, sliced into 1-inch pieces",
                                "1 cup cherry tomatoes, diced",
                                "1/4 cup fresh basil, chopped",
                                "1/4 cup balsamic vinegar",
                                "1 tablespoon olive oil (for topping)",
                                "1 clove garlic, minced"
                            ],
                            instructions: [
                                "Preheat the grill to medium-high heat.",
                                "Brush steaks with olive oil and season with salt and pepper.",
                                "Grill steaks for 4-5 minutes per side for medium-rare, or longer for desired doneness.",
                                "While steaks are grilling, toast the baguette slices on the grill or in the oven until golden and crispy.",
                                "In a bowl, combine diced tomatoes, basil, balsamic vinegar, olive oil, and minced garlic.",
                                "Slice the grilled steaks into thin strips.",
                                "To assemble, place a slice of grilled steak on each toasted baguette slice and top with the tomato-basil mixture.",
                                "Serve immediately and enjoy!"
                            ],
                            imageName: "https://blog-content.omahasteaks.com/wp-content/uploads/2022/06/1600x900_os_blog_grilled_filet_mignon_crostini.jpeg"
                        )) {
                            EditorRecipeCard(
                                imageURL: "https://blog-content.omahasteaks.com/wp-content/uploads/2022/06/1600x900_os_blog_grilled_filet_mignon_crostini.jpeg",
                                title: "Grilled Steak Bruschetta",
                                author: "Lara Atakay",
                                profileImageURL: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQlpEyPHt1DllayFqr4tqEUF5seup-6tDkKddN-y07tM8wOsPbKOeymdQdEfzGFtBX-8tE&usqp=CAU"
                            )
                        }

                    }
                    .padding(.horizontal)
                }
                .padding(.top, 5)
                .background(Color(red: 0.98, green: 0.98, blue: 0.98))
                .frame(maxWidth: .infinity)
            }
            .navigationTitle("Recipes")
            .background(Color(red: 0.98, green: 0.98, blue: 0.98)) // Background color for the scrollable area
        }
    }
}

// MARK: - Components

struct SectionHeader: View {
    let title: String
    let actionTitle: String
    
    var body: some View {
        HStack {
            Text(title)
                .font(Font.custom("Sofia Pro", size: 20).weight(.heavy))
                .foregroundColor(Color(red: 0.04, green: 0.15, blue: 0.20))
            
            Spacer()
            
            Text(actionTitle)
                .font(Font.custom("Sofia Pro", size: 16).weight(.heavy))
                .foregroundColor(Color(red: 0.44, green: 0.73, blue: 0.75))
        }
        .padding(.horizontal)
    }
}

struct PopularRecipeCard: View {
    let recipeName: String
    let imageUrl: String
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 16)
                .fill(Color.white)
                .frame(width: 100, height: 136)
                .shadow(color: Color(red: 0.02, green: 0.20, blue: 0.21).opacity(0.1), radius: 16, x: 0, y: 8)
            
            VStack(spacing: 8) {
                AsyncImage(url: URL(string: imageUrl)) { image in
                    image
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 88, height: 88)
                        .clipShape(RoundedRectangle(cornerRadius: 8))
                } placeholder: {
                    Color.gray.frame(width: 88, height: 88)
                }
                
                Text(recipeName)
                    .font(Font.custom("Sofia Pro", size: 14).weight(.bold))
                    .foregroundColor(Color(red: 0.04, green: 0.15, blue: 0.20))
                    .multilineTextAlignment(.center)
                    .frame(width: 80)
            }
        }
    }
}

struct EditorRecipeCard: View {
    let imageURL: String
    let title: String
    let author: String
    let profileImageURL: String
    
    var body: some View {
        HStack(spacing: 16) {
            AsyncImage(url: URL(string: imageURL)) { image in
                image
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 100, height: 100)
                    .clipShape(RoundedRectangle(cornerRadius: 16))
            } placeholder: {
                Color.gray.frame(width: 100, height: 100)
            }
            
            VStack(alignment: .leading, spacing: 8) {
                Text(title)
                    .font(Font.custom("Sofia Pro", size: 16).weight(.bold))
                    .foregroundColor(Color(red: 0.04, green: 0.15, blue: 0.20))
                
                HStack {
                    AsyncImage(url: URL(string: profileImageURL)) { image in
                        image
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 24, height: 24)
                            .clipShape(Circle())
                    } placeholder: {
                        Circle().fill(Color.gray).frame(width: 24, height: 24)
                    }
                    
                    Text(author)
                        .font(Font.custom("Sofia Pro", size: 14).weight(.bold))
                        .foregroundColor(Color(red: 0.35, green: 0.58, blue: 0.61))
                }
            }
            
            Spacer()
        }
        .padding()
        .background(Color.white)
        .cornerRadius(16)
        .shadow(color: Color.black.opacity(0.1), radius: 8, x: 0, y: 4)
    }
}
