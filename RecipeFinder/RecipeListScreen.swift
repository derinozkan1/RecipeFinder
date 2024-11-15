import SwiftUI

// Recipe Model
struct Recipe: Identifiable {
    let id = UUID()
    let name: String
    let cookingTime: String
    let imageName: String
    let description: String
    let category: String
    let ingredients: [String]
    let instructions: [String]
}

// Recipe Database
struct RecipeDatabase {
    static let recipes: [Recipe] = [
        Recipe(
                  name: "Pesto Spaghetti Salad",
                  cookingTime: "15 Min",
                  imageName: "pestoSpaghettiSaladImage",
                  description: "A light and flavorful spaghetti salad with pesto.",
                  category: "Dinner",
                  ingredients: ["8 oz spaghetti", "1/4 cup pesto sauce", "1/4 cup cherry tomatoes", "1/4 cup mozzarella balls", "Salt and pepper to taste"],
                  instructions: [
                      "1. Cook the spaghetti according to package instructions.",
                      "2. Toss the pasta with pesto sauce, cherry tomatoes, and mozzarella.",
                      "3. Season with salt and pepper and serve."
                  ]
              ),
        Recipe(
                  name: "Raspberry Oat Cookies",
                  cookingTime: "15 Min",
                  imageName: "raspberryOatCookiesImage",
                  description: "Soft and chewy cookies with oats and raspberries.",
                  category: "Breakfast",
                  ingredients: ["1 cup rolled oats", "1/2 cup butter, softened", "1/2 cup brown sugar", "1/2 cup raspberries", "1 egg", "1 tsp vanilla extract", "1 cup flour", "1/2 tsp baking soda", "1/4 tsp salt"],
                  instructions: [
                      "1. Preheat the oven to 350°F (175°C).",
                      "2. Cream together butter and brown sugar until light and fluffy.",
                      "3. Beat in the egg and vanilla extract.",
                      "4. In a separate bowl, mix oats, flour, baking soda, and salt.",
                      "5. Fold in the dry ingredients, followed by raspberries.",
                      "6. Drop spoonfuls of dough onto a baking sheet and bake for 10-12 minutes.",
                      "7. Allow the cookies to cool before serving."
                  ]
              ),
        Recipe(
            name: "Cocoa & Cherry Oat Bake",
            cookingTime: "40 Min",
            imageName: "cocoaCherryOatBakeImage",
            description: "A warm and healthy oat bake with rich cocoa and sweet cherries.",
            category: "Breakfast",
            ingredients: [
                "1 cup rolled oats",
                "2 cups almond milk",
                "1/2 cup cocoa powder",
                "1/4 cup maple syrup",
                "1/2 tsp vanilla extract",
                "1/2 tsp cinnamon",
                "1/4 tsp salt",
                "1 cup cherries, pitted and halved",
                "1/4 cup chopped dark chocolate (optional)"
            ],
            instructions: [
                "1. Preheat your oven to 350°F (175°C) and grease a baking dish.",
                "2. In a large bowl, mix together the oats, cocoa powder, cinnamon, salt, and maple syrup.",
                "3. Add the almond milk and vanilla extract to the oat mixture and stir until well combined.",
                "4. Gently fold in the cherries and chopped dark chocolate.",
                "5. Pour the mixture into the prepared baking dish and spread it evenly.",
                "6. Bake for 35-40 minutes, until the top is slightly crispy and the oats are set.",
                "7. Let it cool for a few minutes before serving. Enjoy warm with a drizzle of extra maple syrup."
            ]
        ),
        Recipe(
            name: "Banana Bread",
            cookingTime: "60 Min",
            imageName: "bananaBreadImage",
            description: "A classic moist banana bread, perfect for breakfast or a snack.",
            category: "Breakfast",
            ingredients: [
                "3 ripe bananas, mashed",
                "1/3 cup melted butter",
                "1/2 cup sugar (or honey)",
                "1 egg",
                "1 tsp vanilla extract",
                "1 tsp baking soda",
                "1/4 tsp salt",
                "1 1/2 cups all-purpose flour",
                "1/4 cup milk (optional for moisture)"
            ],
            instructions: [
                "1. Preheat your oven to 350°F (175°C). Grease a loaf pan.",
                "2. In a large bowl, mash the bananas with a fork until smooth.",
                "3. Mix in the melted butter, sugar, egg, and vanilla extract.",
                "4. Sprinkle the baking soda and salt over the mixture and stir to combine.",
                "5. Add the flour and stir until just mixed. If the batter feels too thick, add a little milk.",
                "6. Pour the batter into the prepared loaf pan and smooth the top.",
                "7. Bake for 60 minutes, or until a toothpick inserted in the center comes out clean.",
                "8. Allow the banana bread to cool before slicing. Enjoy with a spread of nut butter or on its own."
            ]
        ),
        
        Recipe(
            name: "Poached Eggs with Tomato on Flatbread",
            cookingTime: "20 Min",
            imageName: "poachedEggsTomatoFlatbreadImage",
            description: "A savory breakfast with poached eggs, fresh tomatoes, and flatbread for a light and nutritious meal.",
            category: "Breakfast",
            ingredients: [
                "2 large eggs",
                "1 medium tomato, sliced",
                "1 whole wheat flatbread",
                "1 tbsp olive oil",
                "1/4 tsp paprika",
                "Salt and pepper to taste",
                "Fresh basil for garnish"
            ],
            instructions: [
                "1. Heat olive oil in a pan over medium heat. Place the flatbread in the pan and toast it lightly for 1-2 minutes on each side. Remove from heat and set aside.",
                "2. In a separate saucepan, bring water to a simmer and poach the eggs for 3-4 minutes, until the whites are set but the yolks remain runny.",
                "3. While the eggs are poaching, slice the tomato and season with paprika, salt, and pepper.",
                "4. Arrange the toasted flatbread on a plate and top with the seasoned tomato slices.",
                "5. Once the eggs are poached, place them gently on top of the tomatoes.",
                "6. Garnish with fresh basil leaves and serve immediately."
            ]
        ),
        Recipe(
            name: "Mushroom Baked Eggs",
            cookingTime: "30 Min",
            imageName: "mushroomBakedEggsImage",
            description: "A savory, rich breakfast featuring eggs baked over sautéed mushrooms, perfect for a hearty morning.",
            category: "Breakfast",
            ingredients: [
                "2 large eggs",
                "1 cup sliced mushrooms (button or cremini)",
                "1/4 cup grated cheese (optional)",
                "1 tbsp olive oil",
                "1 small onion, diced",
                "1 garlic clove, minced",
                "Salt and pepper to taste",
                "Fresh parsley for garnish"
            ],
            instructions: [
                "1. Preheat your oven to 375°F (190°C) and grease a small baking dish.",
                "2. In a skillet, heat olive oil over medium heat. Add the diced onion and garlic and sauté for 2-3 minutes until softened.",
                "3. Add the sliced mushrooms to the skillet and cook for 5-7 minutes until they release their moisture and become tender.",
                "4. Season the mushrooms with salt and pepper, then transfer them to the prepared baking dish.",
                "5. Create two small wells in the mushroom mixture and crack an egg into each well.",
                "6. Optionally, sprinkle the top with grated cheese.",
                "7. Bake for 10-15 minutes, until the egg whites are set but the yolks are still runny.",
                "8. Garnish with fresh parsley and serve warm."
            ]
        ),
        Recipe(
            name: "Peach Porridge",
            cookingTime: "15 Min",
            imageName: "peachPorridgeImage",
            description: "A creamy and fruity porridge made with oats and fresh peaches for a sweet, healthy breakfast.",
            category: "Breakfast",
            ingredients: [
                "1 cup rolled oats",
                "2 cups almond milk",
                "1 ripe peach, sliced",
                "1 tbsp maple syrup",
                "1/4 tsp cinnamon",
                "1/4 tsp vanilla extract",
                "Pinch of salt",
                "Chopped almonds for topping (optional)"
            ],
            instructions: [
                "1. In a medium saucepan, bring the almond milk to a simmer over medium heat.",
                "2. Stir in the oats, cinnamon, vanilla extract, and salt, and cook for 5-7 minutes, stirring occasionally.",
                "3. Once the oats are cooked and the porridge has thickened, remove from heat and stir in the maple syrup.",
                "4. Serve the porridge in bowls, topped with fresh peach slices and chopped almonds for crunch."
            ]
        ),
        Recipe(
            name: "Muesli with Apple & Banana",
            cookingTime: "10 Min",
            imageName: "muesliAppleBananaImage",
            description: "A simple, nutritious muesli topped with fresh apple and banana slices, perfect for a quick breakfast.",
            category: "Breakfast",
            ingredients: [
                "1/2 cup rolled oats",
                "1/2 cup almond milk",
                "1/4 cup Greek yogurt",
                "1 small apple, chopped",
                "1 banana, sliced",
                "1 tbsp honey",
                "1 tbsp chia seeds (optional)",
                "1/4 tsp cinnamon"
            ],
            instructions: [
                "1. In a bowl, combine the oats, almond milk, and Greek yogurt. Stir to combine and let it sit for 5 minutes to soak.",
                "2. While the muesli is soaking, chop the apple and slice the banana.",
                "3. Once the muesli has soaked, add the honey, chia seeds, and cinnamon, stirring to combine.",
                "4. Top the muesli with the fresh apple and banana slices.",
                "5. Serve immediately, or refrigerate overnight for an easy grab-and-go breakfast."
            ]
        ),
        Recipe(
            name: "Green Fritters",
            cookingTime: "20 Min",
            imageName: "greenFrittersImage",
            description: "Healthy and savory green fritters made with spinach, zucchini, and eggs—perfect for breakfast or as a snack.",
            category: "Breakfast",
            ingredients: [
                "1 cup fresh spinach, chopped",
                "1/2 cup grated zucchini, excess water squeezed out",
                "2 large eggs",
                "1/4 cup grated cheese (optional)",
                "1/4 cup flour (whole wheat or gluten-free)",
                "1/4 tsp garlic powder",
                "Salt and pepper to taste",
                "Olive oil for frying"
            ],
            instructions: [
                "1. In a large bowl, combine the spinach, grated zucchini, eggs, cheese, flour, garlic powder, salt, and pepper.",
                "2. Heat a tablespoon of olive oil in a skillet over medium heat.",
                "3. Scoop spoonfuls of the fritter mixture into the skillet and flatten them slightly with a spatula.",
                "4. Cook for 3-4 minutes per side, until golden and crispy.",
                "5. Remove from the skillet and place on paper towels to absorb excess oil.",
                "6. Serve warm with a dollop of yogurt or your favorite dipping sauce."
            ]
        ),
        Recipe(
            name: "Summer Porridge",
            cookingTime: "15 Min",
            imageName: "summerPorridgeImage",
            description: "A light and refreshing summer porridge made with oats and topped with seasonal fruits.",
            category: "Breakfast",
            ingredients: [
                "1 cup rolled oats",
                "2 cups coconut milk",
                "1 tbsp honey",
                "1/4 tsp vanilla extract",
                "1/4 tsp cinnamon",
                "1/2 cup strawberries, chopped",
                "1/2 cup blueberries",
                "1/2 cup melon, cubed",
                "Fresh mint for garnish"
            ],
            instructions: [
                "1. In a saucepan, bring the coconut milk to a simmer over medium heat.",
                "2. Stir in the oats, cinnamon, and vanilla extract, and cook for 5-7 minutes until the oats are soft and the porridge has thickened.",
                "3. Remove from heat and stir in the honey.",
                "4. Serve the porridge in bowls and top with fresh strawberries, blueberries, and melon.",
                "5. Garnish with fresh mint leaves and serve immediately."
            ]
        ),

        Recipe(
            name: "Blueberry Baked Oats",
            cookingTime: "30 Min",
            imageName: "blueberryBakedOatsImage",
            description: "A warm and nutritious breakfast made with oats, fresh blueberries, and a hint of vanilla.",
            category: "Breakfast",
            ingredients: [
                "1 cup rolled oats",
                "1/2 tsp baking powder",
                "1/2 tsp vanilla extract",
                "1 cup almond milk",
                "1/2 cup Greek yogurt",
                "1 tbsp maple syrup",
                "1/2 tsp cinnamon",
                "1/4 tsp salt",
                "1/2 cup fresh blueberries",
                "1 tbsp chia seeds (optional)"
            ],
            instructions: [
                "1. Preheat the oven to 350°F (175°C) and grease a small baking dish.",
                "2. In a bowl, combine the oats, baking powder, cinnamon, and salt.",
                "3. In another bowl, whisk together the almond milk, Greek yogurt, vanilla extract, and maple syrup.",
                "4. Pour the wet ingredients into the dry ingredients and stir until well combined.",
                "5. Gently fold in the fresh blueberries and chia seeds (if using).",
                "6. Pour the mixture into the prepared baking dish and spread it evenly.",
                "7. Bake for 25-30 minutes, or until the top is golden and the oats are set.",
                "8. Serve warm, topped with extra fresh blueberries and a drizzle of maple syrup."
            ]
        ),
        Recipe(
            name: "Breakfast Egg Wraps",
            cookingTime: "15 Min",
            imageName: "breakfastEggWrapsImage",
            description: "A protein-packed breakfast with scrambled eggs, veggies, and a whole wheat wrap.",
            category: "Breakfast",
            ingredients: [
                "2 large eggs",
                "1/4 cup milk",
                "1 tsp olive oil",
                "1/4 cup diced bell pepper",
                "1/4 cup diced onion",
                "1/4 cup spinach leaves",
                "1/4 cup shredded cheese (optional)",
                "2 whole wheat wraps",
                "Salt and pepper to taste"
            ],
            instructions: [
                "1. In a bowl, whisk together the eggs, milk, salt, and pepper.",
                "2. Heat olive oil in a pan over medium heat. Add the bell pepper and onion, and sauté for 3-4 minutes until softened.",
                "3. Add spinach leaves to the pan and cook for another minute until wilted.",
                "4. Pour the egg mixture into the pan and scramble until fully cooked.",
                "5. Remove from heat and sprinkle with shredded cheese, if using.",
                "6. Place the scrambled eggs on the center of each wrap, then fold the sides and roll it up.",
                "7. Serve immediately, and enjoy with a side of salsa or avocado."
            ]
        ),
        Recipe(
                    name: "Tuna Melt",
                    cookingTime: "15 Min",
                    imageName: "tunaMeltImage",
                    description: "A warm and cheesy tuna sandwich, perfect for a quick lunch.",
                    category: "Lunch",
                    ingredients: [
                        "1 can tuna in water, drained",
                        "2 slices whole wheat bread",
                        "2 tbsp mayonnaise",
                        "1 tbsp Dijon mustard",
                        "1/4 cup shredded cheddar cheese",
                        "1 tbsp olive oil",
                        "Salt and pepper to taste"
                    ],
                    instructions: [
                        "1. In a small bowl, mix the drained tuna with mayonnaise, Dijon mustard, salt, and pepper until well combined.",
                        "2. Heat a non-stick skillet over medium heat and add 1 tablespoon of olive oil.",
                        "3. Spread the tuna mixture evenly over one slice of bread.",
                        "4. Sprinkle the shredded cheddar cheese on top of the tuna mixture.",
                        "5. Place the second slice of bread on top, forming a sandwich.",
                        "6. Grill the sandwich in the skillet for 3-4 minutes on each side until golden brown and the cheese is melted.",
                        "7. Serve immediately, cutting the sandwich in half if desired."
                    ]
                ),
                Recipe(
                    name: "Salmon Couscous Salad",
                    cookingTime: "25 Min",
                    imageName: "salmonCouscousSaladImage",
                    description: "A fresh and light salad with salmon and couscous, perfect for a healthy lunch.",
                    category: "Lunch",
                    ingredients: [
                        "1 salmon fillet",
                        "1/2 cup couscous",
                        "1 tbsp olive oil",
                        "1/2 cup cherry tomatoes, halved",
                        "1/4 cucumber, diced",
                        "1 tbsp fresh parsley, chopped",
                        "1 tbsp lemon juice",
                        "Salt and pepper to taste"
                    ],
                    instructions: [
                        "1. Start by cooking the couscous. Bring 1 cup of water to a boil, then add the couscous, cover, and remove from heat. Let it steam for 5 minutes.",
                        "2. Fluff the couscous with a fork and set aside to cool.",
                        "3. While the couscous is cooking, heat 1 tablespoon of olive oil in a skillet over medium heat.",
                        "4. Season the salmon fillet with salt and pepper, then cook for about 4-5 minutes per side, until the salmon is cooked through.",
                        "5. Once cooked, remove the salmon from the skillet and flake it with a fork.",
                        "6. In a large bowl, combine the couscous, flaked salmon, cherry tomatoes, cucumber, and parsley.",
                        "7. Drizzle with lemon juice and toss gently to combine.",
                        "8. Serve immediately as a fresh and healthy lunch."
                    ]
                ),
                Recipe(
                    name: "Veggie Club Sandwich",
                    cookingTime: "15 Min",
                    imageName: "veggieClubSandwichImage",
                    description: "A hearty sandwich loaded with fresh veggies and a creamy dressing.",
                    category: "Lunch",
                    ingredients: [
                        "3 slices whole grain bread",
                        "2 tbsp hummus",
                        "1/4 avocado, sliced",
                        "1/2 cucumber, sliced",
                        "1/4 red onion, thinly sliced",
                        "Handful of spinach leaves",
                        "2 slices tomato",
                        "Salt and pepper to taste"
                    ],
                    instructions: [
                        "1. Toast the three slices of whole grain bread until golden and crisp.",
                        "2. Spread 1 tablespoon of hummus on one side of each slice of bread.",
                        "3. On the first slice, layer avocado slices, cucumber slices, and red onion.",
                        "4. Add a handful of spinach leaves and tomato slices, then season with salt and pepper.",
                        "5. Place the second slice of bread on top and repeat the process, layering more veggies.",
                        "6. Top with the third slice of bread.",
                        "7. Cut the sandwich into quarters and serve immediately."
                    ]
                ),
                Recipe(
                    name: "Avocado Egg Salad",
                    cookingTime: "10 Min",
                    imageName: "avocadoEggSaladImage",
                    description: "A creamy and nutritious egg salad with mashed avocado for extra flavor.",
                    category: "Lunch",
                    ingredients: [
                        "4 hard-boiled eggs, chopped",
                        "1 avocado, mashed",
                        "2 tbsp mayonnaise",
                        "1 tsp Dijon mustard",
                        "1/2 tsp garlic powder",
                        "Salt and pepper to taste"
                    ],
                    instructions: [
                        "1. Start by chopping the hard-boiled eggs into small pieces.",
                        "2. In a bowl, mash the avocado until smooth.",
                        "3. Add the chopped eggs to the mashed avocado and stir to combine.",
                        "4. Add mayonnaise, Dijon mustard, garlic powder, salt, and pepper, and mix well.",
                        "5. Serve immediately on whole grain bread, crackers, or lettuce wraps."
                    ]
                ),
                Recipe(
                    name: "Feta, Egg & Olive Pita",
                    cookingTime: "10 Min",
                    imageName: "fetaEggOlivePitaImage",
                    description: "A healthy pita pocket stuffed with feta, eggs, and olives for a Mediterranean-inspired lunch.",
                    category: "Lunch",
                    ingredients: [
                        "1 whole wheat pita bread",
                        "2 eggs, scrambled",
                        "1/4 cup feta cheese, crumbled",
                        "1/4 cup black olives, sliced",
                        "Handful of spinach leaves",
                        "1 tbsp olive oil"
                    ],
                    instructions: [
                        "1. Start by scrambling the eggs in a non-stick pan with a small amount of olive oil until cooked through.",
                        "2. While the eggs are cooking, slice the olives and crumble the feta cheese.",
                        "3. Once the eggs are cooked, remove them from the heat.",
                        "4. Cut the pita bread in half to create two pockets.",
                        "5. Stuff each pita pocket with scrambled eggs, feta cheese, olives, and spinach leaves.",
                        "6. Drizzle a small amount of olive oil on top for extra flavor.",
                        "7. Serve immediately."
                    ]
                ),
                Recipe(
                    name: "Cauliflower Bowl",
                    cookingTime: "20 Min",
                    imageName: "cauliflowerBowlImage",
                    description: "A warm and filling bowl with roasted cauliflower, chickpeas, and a creamy tahini dressing.",
                    category: "Lunch",
                    ingredients: [
                        "1/2 head of cauliflower, chopped into florets",
                        "1 can chickpeas, drained and rinsed",
                        "1 tbsp olive oil",
                        "1 tsp cumin",
                        "1/2 tsp paprika",
                        "Salt and pepper to taste",
                        "2 tbsp tahini",
                        "1 tbsp lemon juice"
                    ],
                    instructions: [
                        "1. Preheat the oven to 400°F (200°C).",
                        "2. Spread the cauliflower florets and chickpeas on a baking sheet. Drizzle with olive oil and season with cumin, paprika, salt, and pepper.",
                        "3. Roast in the oven for 20 minutes, or until the cauliflower is tender and lightly browned.",
                        "4. While the cauliflower and chickpeas are roasting, whisk together tahini and lemon juice in a small bowl to make the dressing.",
                        "5. Once the cauliflower and chickpeas are ready, remove them from the oven and arrange them in a bowl.",
                        "6. Drizzle with tahini dressing and serve warm."
                    ]
                ),
                Recipe(
                    name: "Pumpkin and Tomato Soup",
                    cookingTime: "30 Min",
                    imageName: "pumpkinTomatoSoupImage",
                    description: "A creamy and comforting soup with pumpkin and tomato, perfect for a cozy lunch.",
                    category: "Lunch",
                    ingredients: [
                        "1 can pumpkin puree",
                        "1 can diced tomatoes",
                        "1 onion, chopped",
                        "2 garlic cloves, minced",
                        "2 cups vegetable broth",
                        "1 tsp ground cinnamon",
                        "1/2 tsp nutmeg",
                        "Salt and pepper to taste"
                    ],
                    instructions: [
                        "1. In a large pot, sauté the chopped onion and minced garlic in olive oil over medium heat until softened, about 5 minutes.",
                        "2. Add the canned pumpkin puree and diced tomatoes to the pot and stir to combine.",
                        "3. Pour in the vegetable broth and stir in the cinnamon, nutmeg, salt, and pepper.",
                        "4. Bring the soup to a simmer and cook for 20 minutes, allowing the flavors to meld.",
                        "5. Use an immersion blender to puree the soup until smooth, or transfer it to a blender in batches.",
                        "6. Serve warm, garnished with a dollop of sour cream if desired."
                    ]
                ),
                Recipe(
                    name: "Taco Salad",
                    cookingTime: "15 Min",
                    imageName: "tacoSaladImage",
                    description: "A fresh and zesty salad with taco-seasoned beef, lettuce, and a creamy dressing.",
                    category: "Lunch",
                    ingredients: [
                        "1 lb ground beef",
                        "1 packet taco seasoning",
                        "4 cups mixed greens",
                        "1/2 cup cherry tomatoes, halved",
                        "1/2 cup shredded cheddar cheese",
                        "1/4 cup sour cream",
                        "1 tbsp salsa"
                    ],
                    instructions: [
                        "1. In a skillet, cook the ground beef over medium heat until browned, breaking it apart as it cooks.",
                        "2. Add the taco seasoning to the beef along with 1/4 cup of water. Stir and simmer for 5 minutes.",
                        "3. In a large bowl, combine the mixed greens, cherry tomatoes, and shredded cheddar cheese.",
                        "4. Top the salad with the taco-seasoned beef.",
                        "5. Drizzle with sour cream and salsa before serving."
                    ]
                ),
                Recipe(
                    name: "Goddess Bowl",
                    cookingTime: "25 Min",
                    imageName: "goddessBowlImage",
                    description: "A nourishing bowl packed with quinoa, roasted vegetables, and a creamy tahini dressing.",
                    category: "Lunch",
                    ingredients: [
                        "1/2 cup quinoa",
                        "1 cup mixed roasted vegetables (carrot, sweet potato, etc.)",
                        "1/4 cup hummus",
                        "2 tbsp tahini",
                        "1 tbsp lemon juice",
                        "1 tbsp olive oil",
                        "1 tsp sesame seeds"
                    ],
                    instructions: [
                        "1. Cook the quinoa according to package instructions and set aside.",
                        "2. Roast the mixed vegetables at 400°F (200°C) for 20 minutes, tossing halfway through.",
                        "3. In a small bowl, whisk together tahini, lemon juice, olive oil, and a little water to make the dressing.",
                        "4. In a large bowl, layer the quinoa, roasted vegetables, and drizzle with the tahini dressing.",
                        "5. Sprinkle sesame seeds on top before serving."
                    ]
                ),
                Recipe(
                    name: "Sesame Tofu & Broccoli",
                    cookingTime: "20 Min",
                    imageName: "sesameTofuBroccoliImage",
                    description: "A flavorful stir-fry with tofu, broccoli, and a savory sesame sauce.",
                    category: "Lunch",
                    ingredients: [
                        "1 block firm tofu, drained and cubed",
                        "2 cups broccoli florets",
                        "1 tbsp sesame oil",
                        "2 tbsp soy sauce",
                        "1 tbsp honey",
                        "1 tsp sesame seeds"
                    ],
                    instructions: [
                        "1. Heat sesame oil in a pan over medium heat.",
                        "2. Add the cubed tofu and cook until golden brown on all sides, about 5-7 minutes.",
                        "3. Add the broccoli florets and stir-fry for another 5 minutes until tender.",
                        "4. Stir in soy sauce and honey, cooking for another minute.",
                        "5. Sprinkle with sesame seeds and serve immediately."
                    ]
                ),
                Recipe(
                    name: "Rainbow Green Wrap",
                    cookingTime: "10 Min",
                    imageName: "rainbowGreenWrapImage",
                    description: "A colorful wrap filled with fresh greens and a variety of veggies.",
                    category: "Lunch",
                    ingredients: [
                        "1 large spinach tortilla",
                        "1/4 avocado, sliced",
                        "1/4 cup shredded carrots",
                        "1/4 cup cucumber, sliced",
                        "1/4 cup red bell pepper, sliced",
                        "Handful of spinach leaves",
                        "1 tbsp hummus"
                    ],
                    instructions: [
                        "1. Lay the spinach tortilla flat on a clean surface.",
                        "2. Spread hummus evenly on the center of the tortilla.",
                        "3. Layer the avocado slices, shredded carrots, cucumber, and red bell pepper on top.",
                        "4. Add a handful of spinach leaves for extra crunch.",
                        "5. Roll up the tortilla tightly and slice it in half.",
                        "6. Serve immediately or wrap it in foil for an on-the-go lunch."
                    ]
                ),
        Recipe(
            name: "Veggie & Hummus Sandwich",
            cookingTime: "10 Min",
            imageName: "veggieHummusSandwichImage",
            description: "A fresh, healthy sandwich with hummus, veggies, and whole grain bread.",
            category: "Lunch",
            ingredients: [
                "2 slices whole grain bread",
                "2 tbsp hummus",
                "1/4 cucumber, sliced",
                "1/4 bell pepper, sliced",
                "1/4 avocado, sliced",
                "Handful of spinach leaves",
                "Salt and pepper to taste"
            ],
            instructions: [
                "1. Lay out the two slices of whole grain bread on a clean surface.",
                "2. Spread 1 tablespoon of hummus on each slice of bread, covering it evenly from edge to edge.",
                "3. Take the cucumber, bell pepper, and avocado slices, and layer them on top of one slice of bread in a single layer.",
                "4. Add a handful of spinach leaves on top of the veggies for extra crunch and freshness.",
                "5. Season with a pinch of salt and pepper to taste.",
                "6. Carefully place the second slice of bread, hummus side down, to close the sandwich.",
                "7. Slice the sandwich in half diagonally and serve immediately."
            ]
        ),
        Recipe(
            name: "Buffalo Chicken Bowl",
            cookingTime: "20 Min",
            imageName: "buffaloChickenBowlImage",
            description: "Spicy buffalo chicken served on a bed of greens with a tangy dressing.",
            category: "Lunch",
            ingredients: [
                "1 chicken breast, cooked and shredded",
                "2 tbsp buffalo sauce",
                "1 cup mixed greens",
                "1/4 cup blue cheese crumbles",
                "1/4 cup sliced cucumber",
                "1/4 cup cherry tomatoes, halved",
                "2 tbsp ranch or blue cheese dressing"
            ],
            instructions: [
                "1. Start by cooking the chicken breast. You can grill, bake, or pan-cook it until it’s fully cooked through. Once done, shred it using two forks.",
                "2. In a small bowl, toss the shredded chicken with 2 tablespoons of buffalo sauce until the chicken is evenly coated with the sauce.",
                "3. In a large salad bowl, add the mixed greens as your base.",
                "4. Layer the sliced cucumber, cherry tomatoes, and blue cheese crumbles on top of the greens.",
                "5. Add the buffalo chicken mixture on top of the veggies.",
                "6. Drizzle with ranch or blue cheese dressing and toss gently to combine.",
                "7. Serve immediately, garnished with extra blue cheese if desired."
            ]
        ),
        Recipe(
            name: "Chickpea Lettuce Wraps",
            cookingTime: "15 Min",
            imageName: "chickpeaLettuceWrapsImage",
            description: "A light and refreshing lettuce wrap filled with seasoned chickpeas.",
            category: "Lunch",
            ingredients: [
                "1 can chickpeas, drained and mashed",
                "1/4 onion, finely chopped",
                "1 tbsp olive oil",
                "1 tsp cumin",
                "1 tsp paprika",
                "Salt and pepper to taste",
                "1/2 cup diced cucumber",
                "1/4 cup diced tomato",
                "1/4 cup chopped fresh cilantro",
                "Large lettuce leaves"
            ],
            instructions: [
                "1. Open the can of chickpeas, drain them, and rinse under cold water to remove excess sodium.",
                "2. Using a fork or potato masher, mash the chickpeas until they are broken down but still slightly chunky.",
                "3. Heat 1 tablespoon of olive oil in a large pan over medium heat and sauté the chopped onion until softened, about 3-4 minutes.",
                "4. Add the mashed chickpeas to the pan along with the cumin, paprika, salt, and pepper. Stir and cook for 5 minutes to allow the spices to meld.",
                "5. While the chickpeas are cooking, prepare the fresh veggies. Dice the cucumber and tomato, and chop the cilantro.",
                "6. Once the chickpea mixture is ready, remove it from heat and stir in the diced cucumber, tomato, and cilantro.",
                "7. Wash the large lettuce leaves and carefully separate them from the head of lettuce, being careful not to tear them.",
                "8. Spoon the chickpea mixture into the center of each lettuce leaf and fold the sides in to form a wrap.",
                "9. Serve immediately as a fresh, low-carb lunch."
            ]
        ),
        Recipe(
            name: "Chopped Cobb Salad",
            cookingTime: "15 Min",
            imageName: "choppedCobbSaladImage",
            description: "A fresh salad with chicken, bacon, eggs, and a variety of veggies.",
            category: "Lunch",
            ingredients: [
                "1 chicken breast, cooked and chopped",
                "2 hard-boiled eggs, chopped",
                "2 slices bacon, cooked and crumbled",
                "1/2 cup cherry tomatoes, halved",
                "1/4 cucumber, chopped",
                "1/4 red onion, sliced",
                "1/4 avocado, diced",
                "2 cups mixed greens",
                "2 tbsp ranch or blue cheese dressing"
            ],
            instructions: [
                "1. Start by cooking the chicken breast. Grill, bake, or pan-cook the chicken until fully cooked. Once done, chop the chicken into bite-sized pieces.",
                "2. Prepare the hard-boiled eggs by boiling them for 10 minutes, then peel and chop them.",
                "3. Cook the bacon until crispy, then crumble it into small pieces.",
                "4. Halve the cherry tomatoes, chop the cucumber, and slice the red onion thinly.",
                "5. Dice the avocado and prepare the mixed greens by washing them thoroughly.",
                "6. In a large bowl, arrange the mixed greens as your base.",
                "7. On top of the greens, arrange rows of the chicken, eggs, bacon, tomatoes, cucumber, onion, and avocado in a colorful pattern.",
                "8. Drizzle with your choice of dressing (ranch or blue cheese) and toss gently before serving."
            ]
        ),
        Recipe(
            name: "Chickpeas with Kale and Tomatoes",
            cookingTime: "20 Min",
            imageName: "chickpeasKaleTomatoesImage",
            description: "A hearty and healthy dish with chickpeas, kale, and tomatoes.",
            category: "Lunch",
            ingredients: [
                "1 can chickpeas, drained and rinsed",
                "2 cups kale, chopped",
                "1/2 cup cherry tomatoes, halved",
                "1 tbsp olive oil",
                "2 garlic cloves, minced",
                "1/2 tsp paprika",
                "Salt and pepper to taste"
            ],
            instructions: [
                "1. Start by draining and rinsing the chickpeas under cold water.",
                "2. Heat 1 tablespoon of olive oil in a large pan over medium heat. Add the minced garlic and sauté until fragrant, about 1 minute.",
                "3. Add the chickpeas to the pan, along with the paprika, salt, and pepper. Stir to combine and cook for 5 minutes.",
                "4. Add the chopped kale to the pan and sauté until the kale is wilted and tender, about 5-7 minutes.",
                "5. Slice the cherry tomatoes in half and add them to the pan in the last 2 minutes of cooking to soften them.",
                "6. Stir everything together, adjust the seasoning if needed, and serve immediately."
            ]
        ),
        Recipe(
            name: "Edamame & Veggie Rice Bowl",
            cookingTime: "20 Min",
            imageName: "edamameVeggieRiceBowlImage",
            description: "A delicious rice bowl with edamame, vegetables, and a savory sauce.",
            category: "Lunch",
            ingredients: [
                "1 cup cooked brown rice",
                "1/2 cup edamame, shelled",
                "1/4 cup shredded carrots",
                "1/4 cup sliced cucumber",
                "1/4 cup bell pepper, sliced",
                "2 tbsp soy sauce",
                "1 tsp sesame oil",
                "1 tsp rice vinegar",
                "1/2 tsp sesame seeds"
            ],
            instructions: [
                "1. Start by cooking 1 cup of brown rice according to package instructions.",
                "2. While the rice is cooking, steam or boil the edamame until tender, about 5-7 minutes.",
                "3. Prepare the veggies: shred the carrots, slice the cucumber, and slice the bell pepper.",
                "4. In a small bowl, whisk together the soy sauce, sesame oil, and rice vinegar to make the dressing.",
                "5. Once the rice is cooked, place it in a large bowl as the base.",
                "6. Top the rice with the edamame, shredded carrots, sliced cucumber, and bell pepper.",
                "7. Drizzle the dressing over the bowl and toss to combine.",
                "8. Sprinkle with sesame seeds and serve immediately."
            ]
        ),
        Recipe(
            name: "Cucumber Turkey Wrap",
            cookingTime: "10 Min",
            imageName: "cucumberTurkeyWrapImage",
            description: "A light wrap with turkey, cucumber, and a creamy spread.",
            category: "Lunch",
            ingredients: [
                "1 whole wheat tortilla",
                "4 slices turkey breast",
                "1/2 cucumber, sliced",
                "2 tbsp hummus",
                "Handful of spinach leaves",
                "1 tbsp Dijon mustard"
            ],
            instructions: [
                "1. Lay the whole wheat tortilla flat on a clean surface.",
                "2. Spread 2 tablespoons of hummus in the center of the tortilla.",
                "3. Layer the turkey slices on top of the hummus, covering the surface evenly.",
                "4. Add a few slices of cucumber and a handful of spinach leaves on top.",
                "5. Drizzle with Dijon mustard for an extra tangy flavor.",
                "6. Carefully fold the sides of the tortilla in, then roll it tightly to form a wrap.",
                "7. Slice the wrap in half and serve immediately."
            ]
        ),
        Recipe(
            name: "Healthy Gnocchi",
            cookingTime: "30 Min",
            imageName: "healthyGnocchiImage",
            description: "A nutritious take on classic gnocchi with sweet potato and whole wheat flour, served with a light garlic sauce.",
            category: "Dinner",
            ingredients: [
                "2 medium sweet potatoes, peeled and cubed",
                "1 cup whole wheat flour",
                "1 egg",
                "1/2 teaspoon salt",
                "2 tbsp olive oil",
                "2 cloves garlic, minced",
                "1/2 cup vegetable broth",
                "Fresh basil leaves (for garnish)",
                "Grated Parmesan (optional)"
            ],
            instructions: [
                "1. Boil the sweet potatoes in a large pot of water until soft, about 15-20 minutes. Drain and mash until smooth.",
                "2. In a large bowl, combine the mashed sweet potatoes, whole wheat flour, egg, and salt. Mix until a dough forms.",
                "3. Roll the dough into long ropes, then cut into small bite-sized pieces. Press lightly with a fork to create ridges.",
                "4. Bring a pot of salted water to a boil. Drop the gnocchi in batches and cook for 2-3 minutes, or until they float to the surface. Remove with a slotted spoon.",
                "5. In a large pan, heat olive oil over medium heat. Add minced garlic and sauté for 1 minute until fragrant.",
                "6. Add the vegetable broth to the pan and simmer for 2-3 minutes. Add the cooked gnocchi and toss to coat.",
                "7. Garnish with fresh basil and grated Parmesan, if desired. Serve immediately."
            ]
        ),
        Recipe(
            name: "Creamy Turkey and Asparagus",
            cookingTime: "30 Min",
            imageName: "creamyTurkeyAsparagusImage",
            description: "Tender turkey breast and asparagus in a rich and creamy sauce.",
            category: "Dinner",
            ingredients: [
                "1 lb turkey breast, cut into bite-sized pieces",
                "1 bunch asparagus, trimmed and cut into 2-inch pieces",
                "1/2 cup heavy cream",
                "1/4 cup chicken broth",
                "2 tablespoons olive oil",
                "1/2 teaspoon garlic powder",
                "Salt and pepper to taste",
                "1 tablespoon fresh parsley, chopped"
            ],
            instructions: [
                "1. Heat olive oil in a large pan over medium heat. Add turkey pieces and cook until browned and cooked through, about 8 minutes.",
                "2. Add asparagus to the pan and cook for 3-4 minutes until tender.",
                "3. Pour in heavy cream and chicken broth, stirring to combine. Bring to a simmer and cook for 5 minutes until the sauce thickens.",
                "4. Season with garlic powder, salt, and pepper to taste.",
                "5. Garnish with fresh parsley and serve hot."
            ]
        ),
        Recipe(
            name: "Prawn Tagliatelle",
            cookingTime: "20 Min",
            imageName: "prawnTagliatelleImage",
            description: "Delicate tagliatelle pasta with succulent prawns in a light garlic and lemon sauce.",
            category: "Dinner",
            ingredients: [
                "8 oz tagliatelle pasta",
                "1 lb prawns, peeled and deveined",
                "2 cloves garlic, minced",
                "1/4 cup white wine (optional)",
                "2 tablespoons olive oil",
                "1 tablespoon lemon juice",
                "1 teaspoon lemon zest",
                "1/4 cup fresh parsley, chopped",
                "Salt and pepper to taste"
            ],
            instructions: [
                "1. Cook tagliatelle according to package instructions. Drain and set aside.",
                "2. Heat olive oil in a large pan over medium heat. Add garlic and cook for 1-2 minutes until fragrant.",
                "3. Add prawns to the pan and cook for 3-4 minutes until pink and cooked through.",
                "4. Deglaze the pan with white wine (if using), scraping any bits off the bottom. Stir in lemon juice and zest.",
                "5. Add the cooked pasta to the pan and toss to combine. Season with salt and pepper.",
                "6. Garnish with fresh parsley and serve immediately."
            ]
        ),
        Recipe(
            name: "Spicy Meatballs with Hummus",
            cookingTime: "30 Min",
            imageName: "spicyMeatballsHummusImage",
            description: "Juicy, spicy meatballs paired with creamy hummus for a satisfying meal.",
            category: "Dinner",
            ingredients: [
                "1 lb ground beef or turkey",
                "1/4 cup breadcrumbs",
                "1 egg",
                "1/2 teaspoon paprika",
                "1/2 teaspoon cumin",
                "1/4 teaspoon cayenne pepper",
                "Salt and pepper to taste",
                "2 tablespoons olive oil",
                "1 cup hummus",
                "Fresh parsley for garnish"
            ],
            instructions: [
                "1. Preheat the oven to 375°F (190°C).",
                "2. In a bowl, combine ground meat, breadcrumbs, egg, paprika, cumin, cayenne pepper, salt, and pepper. Mix until well combined.",
                "3. Form the mixture into meatballs, about 1 inch in diameter, and place them on a baking sheet.",
                "4. Heat olive oil in a pan over medium heat. Sear the meatballs for 2-3 minutes per side until browned.",
                "5. Transfer the meatballs to the oven and bake for 10-12 minutes until fully cooked.",
                "6. Serve the meatballs with a side of hummus, garnished with fresh parsley."
            ]
        ),
        Recipe(
            name: "Turkey Tacos",
            cookingTime: "20 Min",
            imageName: "turkeyTacosImage",
            description: "Lean ground turkey seasoned with taco spices, served in soft tortillas with fresh toppings.",
            category: "Dinner",
            ingredients: [
                "1 lb ground turkey",
                "1 tablespoon olive oil",
                "1 packet taco seasoning",
                "1/2 cup water",
                "8 small soft tortillas",
                "1/2 cup shredded lettuce",
                "1/2 cup diced tomatoes",
                "1/4 cup chopped red onion",
                "1/2 cup shredded cheddar cheese",
                "1/4 cup salsa",
                "Sour cream for serving"
            ],
            instructions: [
                "1. Heat olive oil in a pan over medium heat. Add ground turkey and cook, breaking it apart with a spoon, until browned.",
                "2. Add taco seasoning and water, stir to combine. Simmer for 5-7 minutes until the sauce thickens.",
                "3. Warm the tortillas in the microwave or on a dry skillet.",
                "4. Assemble tacos by spooning the turkey mixture into the tortillas. Top with lettuce, tomatoes, red onion, cheese, salsa, and a dollop of sour cream.",
                "5. Serve immediately."
            ]
        ),
        Recipe(
            name: "Enchiladas",
            cookingTime: "45 Min",
            imageName: "enchiladasImage",
            description: "Flavor-packed corn tortillas filled with seasoned chicken, beans, and cheese, smothered in a rich red enchilada sauce.",
            category: "Dinner",
            ingredients: [
                "8 corn tortillas",
                "2 cups cooked chicken, shredded",
                "1 cup black beans, drained and rinsed",
                "1/2 cup red onion, diced",
                "1 cup shredded cheddar cheese",
                "1 cup shredded mozzarella cheese",
                "2 cups enchilada sauce",
                "1 tablespoon olive oil",
                "1 teaspoon cumin",
                "1 teaspoon chili powder",
                "Salt and pepper to taste",
                "Fresh cilantro for garnish"
            ],
            instructions: [
                "1. Preheat the oven to 375°F (190°C).",
                "2. Heat olive oil in a pan over medium heat. Add diced onion, cumin, and chili powder. Cook until softened, about 5 minutes.",
                "3. Stir in shredded chicken and black beans. Cook for another 2-3 minutes. Season with salt and pepper.",
                "4. Warm the tortillas in the microwave or on a dry skillet for a few seconds to soften.",
                "5. Spread 1/4 cup of enchilada sauce on the bottom of a baking dish. Fill each tortilla with the chicken mixture, roll them up, and place them seam-side down in the dish.",
                "6. Pour the remaining enchilada sauce over the rolled tortillas and top with shredded cheese.",
                "7. Bake for 20-25 minutes until the cheese is melted and bubbly. Garnish with fresh cilantro and serve hot."
            ]
        ),

        Recipe(
            name: "Chicken Katsu Curry",
            cookingTime: "40 Min",
            imageName: "chickenKatsuCurryImage",
            description: "Crispy chicken cutlets served with a rich and flavorful Japanese curry sauce.",
            category: "Dinner",
            ingredients: [
                "4 chicken breasts",
                "1 cup panko breadcrumbs",
                "1/2 cup flour",
                "2 eggs, beaten",
                "1 tablespoon soy sauce",
                "2 cups Japanese curry sauce (store-bought or homemade)",
                "2 cups cooked rice",
                "Olive oil for frying",
                "Salt and pepper to taste"
            ],
            instructions: [
                "1. Season the chicken breasts with salt and pepper. Dredge in flour, dip in beaten eggs, and coat with panko breadcrumbs.",
                "2. Heat olive oil in a pan over medium heat. Fry the chicken for 5-6 minutes per side until golden and cooked through.",
                "3. While the chicken is cooking, heat the curry sauce in a separate pan until warmed through.",
                "4. Serve the crispy chicken on top of rice, smothered with curry sauce."
            ]
        ),
        Recipe(
            name: "Healthy Salmon Burgers",
            cookingTime: "25 Min",
            imageName: "healthySalmonBurgersImage",
            description: "Delicious, protein-packed salmon burgers with a healthy twist.",
            category: "Dinner",
            ingredients: [
                "2 cans wild-caught salmon, drained and flaked",
                "1/4 cup whole wheat breadcrumbs",
                "1 egg",
                "1/4 cup green onions, chopped",
                "1 tablespoon Dijon mustard",
                "1 tablespoon fresh dill, chopped",
                "1 teaspoon lemon zest",
                "Salt and pepper to taste",
                "Olive oil for cooking"
            ],
            instructions: [
                "1. In a bowl, combine salmon, breadcrumbs, egg, green onions, Dijon mustard, dill, lemon zest, salt, and pepper. Mix until well combined.",
                "2. Form the mixture into patties, about 4-5 patties.",
                "3. Heat olive oil in a skillet over medium heat. Cook the patties for 4-5 minutes per side until golden and cooked through.",
                "4. Serve on whole wheat buns or with a side of greens."
            ]
        ),
        Recipe(
            name: "Tuna Pasta & Eggplant Bake",
            cookingTime: "45 Min",
            imageName: "tunaPastaEggplantBakeImage",
            description: "A hearty baked pasta dish with tuna, eggplant, and a savory tomato sauce.",
            category: "Dinner",
            ingredients: [
                "2 cups pasta (penne or rigatoni)",
                "1 can tuna in oil, drained",
                "1 large eggplant, cubed",
                "1 onion, diced",
                "2 cloves garlic, minced",
                "1 can crushed tomatoes",
                "1/4 cup grated mozzarella cheese",
                "1/4 cup grated Parmesan cheese",
                "1 tablespoon olive oil",
                "1 teaspoon dried oregano",
                "Salt and pepper to taste"
            ],
            instructions: [
                "1. Preheat the oven to 375°F (190°C). Cook pasta according to package instructions, then drain and set aside.",
                "2. Heat olive oil in a large pan over medium heat. Add eggplant and cook until softened, about 10 minutes.",
                "3. Add onion and garlic, sautéing until fragrant. Stir in crushed tomatoes, tuna, oregano, salt, and pepper. Let simmer for 10 minutes.",
                "4. In a large baking dish, combine pasta and tuna mixture. Top with mozzarella and Parmesan cheese.",
                "5. Bake for 15-20 minutes until the cheese is melted and bubbly. Serve hot."
            ]
        ),
        Recipe(
            name: "One Pot Chicken & Rice",
            cookingTime: "40 Min",
            imageName: "onePotChickenRiceImage",
            description: "A flavorful and easy-to-make one-pot meal with chicken, rice, and vegetables.",
            category: "Dinner",
            ingredients: [
                "4 chicken thighs, boneless and skinless",
                "1 cup long grain rice",
                "1 onion, diced",
                "2 cloves garlic, minced",
                "1 cup chicken broth",
                "1 cup diced tomatoes",
                "1 cup frozen peas",
                "1/2 teaspoon paprika",
                "Salt and pepper to taste",
                "2 tablespoons olive oil"
            ],
            instructions: [
                "1. In a large pot, heat olive oil over medium heat. Season chicken thighs with salt, pepper, and paprika. Brown the chicken on both sides, about 5-7 minutes per side.",
                "2. Remove the chicken and set aside. In the same pot, add onions and garlic, cooking until softened.",
                "3. Stir in rice and cook for 2-3 minutes, then add the chicken broth and diced tomatoes. Return the chicken to the pot, cover, and simmer for 25 minutes.",
                "4. Add frozen peas, stir, and cook for an additional 5 minutes until the rice is tender and the chicken is fully cooked.",
                "5. Serve hot and enjoy!"
            ]
        ),
        Recipe(
            name: "Healthy Lasagna",
            cookingTime: "1 Hour",
            imageName: "healthyLasagnaImage",
            description: "A lighter version of classic lasagna with zucchini noodles and lean ground turkey.",
            category: "Dinner",
            ingredients: [
                "4 medium zucchinis, sliced into thin strips",
                "1 lb lean ground turkey",
                "1 onion, diced",
                "2 cloves garlic, minced",
                "2 cups marinara sauce",
                "1/2 cup ricotta cheese",
                "1 cup shredded mozzarella cheese",
                "1/2 cup grated Parmesan cheese",
                "1 tablespoon olive oil",
                "Salt and pepper to taste"
            ],
            instructions: [
                "1. Preheat the oven to 375°F (190°C). Heat olive oil in a pan over medium heat. Add onion and garlic, sauté until softened.",
                "2. Add ground turkey, breaking it apart with a spoon. Cook until browned. Stir in marinara sauce, salt, and pepper.",
                "3. In a baking dish, layer zucchini strips, turkey mixture, ricotta, and mozzarella. Repeat layers, finishing with a layer of mozzarella and Parmesan.",
                "4. Cover with foil and bake for 30 minutes. Remove foil and bake for an additional 10 minutes until bubbly."
            ]
        ),
        Recipe(
            name: "Air Fryer Baked Potatoes",
            cookingTime: "35 Min",
            imageName: "airFryerBakedPotatoesImage",
            description: "Crispy-skinned, soft, and fluffy baked potatoes made in the air fryer.",
            category: "Dinner",
            ingredients: [
                "4 medium russet potatoes",
                "1 tablespoon olive oil",
                "Salt to taste",
                "Pepper to taste"
            ],
            instructions: [
                "1. Preheat the air fryer to 400°F (200°C).",
                "2. Wash and dry the potatoes. Rub each potato with olive oil and sprinkle with salt and pepper.",
                "3. Place potatoes in the air fryer basket. Cook for 30-35 minutes, flipping halfway through.",
                "4. Remove from the air fryer and serve with your favorite toppings."
            ]
        ),
        Recipe(
            name: "Smoky Cod & Broccoli Bake",
            cookingTime: "35 Min",
            imageName: "smokyCodBroccoliBakeImage",
            description: "A healthy and flavorful bake with smoky cod and broccoli.",
            category: "Dinner",
            ingredients: [
                "4 cod fillets",
                "2 cups broccoli florets",
                "1/2 teaspoon smoked paprika",
                "2 cloves garlic, minced",
                "1 tablespoon olive oil",
                "1/2 cup grated cheddar cheese",
                "Salt and pepper to taste"
            ],
            instructions: [
                "1. Preheat the oven to 375°F (190°C).",
                "2. In a baking dish, place cod fillets and broccoli. Drizzle with olive oil and sprinkle with smoked paprika, garlic, salt, and pepper.",
                "3. Bake for 25-30 minutes until the fish is cooked through and the broccoli is tender.",
                "4. Sprinkle with cheddar cheese and bake for an additional 5 minutes. Serve immediately."
            ]
        ),
        Recipe(
            name: "Broccoli Pesto Pasta",
            cookingTime: "20 Min",
            imageName: "broccoliPestoPastaImage",
            description: "A simple pasta dish with a vibrant and healthy broccoli pesto sauce.",
            category: "Dinner",
            ingredients: [
                "2 cups broccoli florets",
                "2 cups basil leaves",
                "1/4 cup pine nuts",
                "1/4 cup grated Parmesan cheese",
                "1/4 cup olive oil",
                "1 clove garlic",
                "8 oz pasta of your choice",
                "Salt and pepper to taste"
            ],
            instructions: [
                "1. Cook pasta according to package instructions. Drain and set aside.",
                "2. In a food processor, blend broccoli, basil, pine nuts, Parmesan, garlic, olive oil, salt, and pepper until smooth.",
                "3. Toss the cooked pasta with the pesto sauce. Serve warm."
            ]
        ),
        Recipe(
            name: "Steak with Crushed Chickpeas",
            cookingTime: "30 Min",
            imageName: "steakCrushedChickpeasImage",
            description: "A hearty steak served with flavorful crushed chickpeas for a nutritious twist.",
            category: "Dinner",
            ingredients: [
                "2 steaks (ribeye or sirloin)",
                "1 can chickpeas, drained and mashed",
                "2 tablespoons olive oil",
                "1 tablespoon lemon juice",
                "1 teaspoon cumin",
                "1 teaspoon paprika",
                "Salt and pepper to taste"
            ],
            instructions: [
                "1. Season steaks with salt and pepper. Heat olive oil in a pan over medium-high heat. Cook steaks to your preferred doneness, about 4-5 minutes per side for medium.",
                "2. In a separate pan, heat olive oil over medium heat. Add mashed chickpeas, cumin, paprika, salt, and pepper. Cook for 5-7 minutes until heated through.",
                "3. Serve steaks topped with crushed chickpeas and a drizzle of lemon juice."
            ]
        ),



        Recipe(
            name: "Strawberry Pancakes",
            cookingTime: "20 Min",
            imageName: "strawberryPancakesImage",
            description: "Fluffy pancakes loaded with fresh strawberries for a sweet and healthy breakfast.",
            category: "Breakfast",
            ingredients: [
                "1 cup whole wheat flour",
                "1 tbsp baking powder",
                "1/2 tsp cinnamon",
                "1/4 tsp salt",
                "1 cup almond milk",
                "1 egg",
                "1 tsp vanilla extract",
                "1 tbsp maple syrup",
                "1/2 cup fresh strawberries, chopped",
                "Butter or oil for cooking"
            ],
            instructions: [
                "1. In a large bowl, combine the flour, baking powder, cinnamon, and salt.",
                "2. In another bowl, whisk together the almond milk, egg, vanilla extract, and maple syrup.",
                "3. Add the wet ingredients to the dry ingredients and stir until just combined.",
                "4. Gently fold in the chopped strawberries.",
                "5. Heat a skillet over medium heat and add a little butter or oil.",
                "6. Pour about 1/4 cup of batter onto the skillet for each pancake, cooking for 2-3 minutes on each side until golden brown.",
                "7. Serve with additional strawberries, maple syrup, or yogurt."
            ]
        ),

        Recipe(
            name: "Pumpkin Spice Muffins",
            cookingTime: "25 Min",
            imageName: "pumpkinMuffinsImage",
            description: "Moist and delicious pumpkin spice muffins perfect for fall mornings.",
            category: "Breakfast",
            ingredients: ["1 cup canned pumpkin puree", "1/2 cup sugar", "1/2 cup brown sugar", "1/4 cup vegetable oil", "2 eggs", "1 cup flour", "1 tsp baking powder", "1 tsp baking soda", "1/2 tsp salt", "1 tsp cinnamon", "1/2 tsp nutmeg", "1/2 tsp ginger"],
            instructions: [
                "1. Preheat the oven to 350°F (175°C) and line a muffin tin with paper liners.",
                "2. In a bowl, mix together pumpkin puree, sugar, brown sugar, oil, and eggs until smooth.",
                "3. In another bowl, combine flour, baking powder, baking soda, salt, cinnamon, nutmeg, and ginger.",
                "4. Add the dry ingredients to the wet ingredients and mix until just combined.",
                "5. Spoon the batter into the muffin cups, filling each 3/4 full.",
                "6. Bake for 20-25 minutes, or until a toothpick inserted into the center comes out clean.",
                "7. Let cool before serving."
            ]
        ),
        Recipe(
                  name: "Lemon Honey Fish",
                  cookingTime: "20 Min",
                  imageName: "lemonHoneyFishImage",
                  description: "A light and flavorful fish recipe with lemon and honey glaze.",
                  category: "Dinner",
                  ingredients: ["4 fish fillets (cod or tilapia)", "2 tbsp honey", "2 tbsp lemon juice", "2 tbsp olive oil", "Salt and pepper to taste", "Lemon slices for garnish"],
                  instructions: [
                      "1. Preheat the oven to 375°F (190°C).",
                      "2. Mix honey, lemon juice, and olive oil in a bowl.",
                      "3. Season the fish fillets with salt and pepper.",
                      "4. Place the fish on a baking sheet and drizzle with the honey-lemon mixture.",
                      "5. Bake for 15-20 minutes, or until fish flakes easily.",
                      "6. Garnish with lemon slices and serve."
                  ]
              ),
        Recipe(
                   name: "Prawn Tacos",
                   cookingTime: "20 Min",
                   imageName: "prawnTacosImage",
                   description: "Delicious tacos filled with juicy prawns and fresh toppings.",
                   category: "Dinner",
                   ingredients: ["8 prawns, peeled and deveined", "4 small tortillas", "1/2 cup shredded cabbage", "1/4 cup salsa", "1 tbsp lime juice", "Cilantro for garnish"],
                   instructions: [
                       "1. Cook prawns in a skillet with lime juice until pink.",
                       "2. Warm tortillas and fill them with prawns, cabbage, and salsa.",
                       "3. Garnish with cilantro and serve."
                   ]
               ),
        Recipe(
                    name: "Roasted Brussels Sprouts",
                    cookingTime: "30 Min",
                    imageName: "roastedBrusselsSproutsImage",
                    description: "Crispy and savory roasted Brussels sprouts.",
                    category: "Dinner",
                    ingredients: ["1 lb Brussels sprouts, trimmed", "2 tbsp olive oil", "Salt and pepper to taste", "1/2 tsp garlic powder"],
                    instructions: [
                        "1. Preheat the oven to 400°F (200°C).",
                        "2. Toss Brussels sprouts with olive oil, salt, pepper, and garlic powder.",
                        "3. Roast for 25-30 minutes, shaking the pan halfway through."
                    ]
                ),
        Recipe(
                   name: "Greek Yogurt Parfait",
                   cookingTime: "10 Min",
                   imageName: "greekYogurtParfaitImage",
                   description: "A healthy and delicious parfait with Greek yogurt, honey, and granola.",
                   category: "Breakfast",
                   ingredients: ["1 cup Greek yogurt", "1 tbsp honey", "1/4 cup granola", "Fresh fruit for topping"],
                   instructions: [
                       "1. Layer Greek yogurt, honey, and granola in a bowl.",
                       "2. Top with fresh fruit and serve."
                   ]
               ),
        Recipe(
                  name: "Berry Smoothie Bowl",
                  cookingTime: "10 Min",
                  imageName: "berrySmoothieBowlImage",
                  description: "A refreshing smoothie bowl topped with berries and granola.",
                  category: "Breakfast",
                  ingredients: ["1 cup frozen berries", "1/2 banana", "1/2 cup almond milk", "1/4 cup granola", "Fresh berries for topping", "Honey (optional)"],
                  instructions: [
                      "1. Blend frozen berries, banana, and almond milk until smooth.",
                      "2. Pour into a bowl and top with granola, fresh berries, and honey."
                  ]
              ),
        Recipe(
            name: "Caesar Salad",
            cookingTime: "15 Min",
            imageName: "caesarSaladImage",
            description: "A classic Caesar salad with creamy dressing, crisp croutons, and grated parmesan.",
            category: "Lunch",
            ingredients: [
                "2 cups romaine lettuce, chopped",
                "1/4 cup Caesar dressing",
                "1/4 cup croutons",
                "2 tbsp freshly grated parmesan cheese",
                "Freshly ground black pepper (optional)"
            ],
            instructions: [
                "1. Wash and chop the romaine lettuce into bite-sized pieces, and place it in a large mixing bowl.",
                "2. Drizzle Caesar dressing over the lettuce and toss gently to coat the leaves evenly.",
                "3. Add croutons to the salad and toss again to distribute them throughout.",
                "4. Sprinkle freshly grated parmesan cheese over the top of the salad.",
                "5. For extra flavor, grind some black pepper on top, if desired.",
                "6. Serve immediately for the best freshness and texture."
            ]
        ),
        Recipe(
            name: "Creamy Pasta",
            cookingTime: "25 Min",
            imageName: "creamyPastaImage",
            description: "A rich and comforting creamy pasta dish with garlic and parmesan.",
            category: "Lunch",
            ingredients: [
                "8 oz pasta (spaghetti, fettuccine, or your preferred type)",
                "1 cup heavy cream",
                "1/2 cup freshly grated parmesan cheese",
                "2 cloves garlic, minced",
                "2 tbsp butter",
                "Salt and freshly ground black pepper to taste",
                "Fresh parsley (optional, for garnish)"
            ],
            instructions: [
                "1. Bring a large pot of salted water to a boil and cook the pasta according to the package instructions. Drain the pasta, reserving about 1/2 cup of pasta water for later.",
                "2. While the pasta cooks, melt butter in a large skillet over medium heat. Add the minced garlic and sauté for about 1 minute, until fragrant.",
                "3. Slowly add the heavy cream to the skillet, stirring continuously to combine with the garlic and butter.",
                "4. Add the freshly grated parmesan cheese to the skillet, stirring until the cheese melts and the sauce thickens, about 3-4 minutes. Season with salt and freshly ground black pepper to taste.",
                "5. Once the pasta is done, add it to the skillet with the creamy sauce. Toss the pasta to coat evenly, adding reserved pasta water a little at a time if the sauce is too thick.",
                "6. Once everything is well combined, serve immediately, garnished with chopped fresh parsley if desired."
            ]
        ),
        Recipe(
            name: "Falafel Salad with Hummus",
            cookingTime: "30 Min",
            imageName: "falafelSaladHummusImage",
            description: "A nutritious falafel salad served with creamy hummus and fresh vegetables.",
            category: "Lunch",
            ingredients: [
                "6 falafel balls (store-bought or homemade)",
                "2 cups mixed greens",
                "1 cucumber, sliced",
                "1 tomato, diced",
                "1/4 red onion, thinly sliced",
                "1/4 cup olives, sliced",
                "1/4 cup hummus",
                "2 tbsp tahini dressing",
                "Lemon wedges for garnish",
                "Salt and pepper to taste"
            ],
            instructions: [
                "1. Cook the falafel according to package instructions, or fry homemade falafel until golden brown.",
                "2. In a large salad bowl, toss together the mixed greens, cucumber, tomato, red onion, and olives.",
                "3. Arrange the cooked falafel on top of the salad.",
                "4. Add a generous dollop of hummus and drizzle with tahini dressing.",
                "5. Garnish with lemon wedges and season with salt and pepper to taste.",
                "6. Serve immediately and enjoy this fresh and satisfying meal."
            ]
        ),
        Recipe(
            name: "Roasted Broccoli and Quinoa Bowl",
            cookingTime: "35 Min",
            imageName: "roastedBroccoliQuinoaImage",
            description: "A hearty bowl with roasted broccoli, fluffy quinoa, and a simple dressing.",
            category: "Lunch",
            ingredients: [
                "1 head of broccoli, cut into florets",
                "1 cup quinoa",
                "2 tbsp olive oil",
                "Salt and pepper to taste",
                "1 tbsp lemon juice",
                "1 tbsp olive oil (for dressing)",
                "1 tsp dijon mustard",
                "1 clove garlic, minced"
            ],
            instructions: [
                "1. Preheat the oven to 400°F (200°C).",
                "2. Toss broccoli florets with 2 tbsp olive oil, salt, and pepper. Spread on a baking sheet and roast for 20-25 minutes, until tender and slightly browned.",
                "3. While the broccoli is roasting, cook the quinoa according to package instructions. Typically, bring 2 cups of water to a boil, add quinoa, reduce heat to a simmer, and cook for about 15 minutes.",
                "4. For the dressing, whisk together olive oil, lemon juice, dijon mustard, minced garlic, salt, and pepper.",
                "5. To assemble, divide the cooked quinoa into bowls, top with roasted broccoli, and drizzle with the dressing.",
                "6. Serve warm and enjoy a light but filling meal."
            ]
        ),
        Recipe(
            name: "Parmesan Cabbage Slices",
            cookingTime: "20 Min",
            imageName: "parmesanCabbageImage",
            description: "Crispy roasted cabbage slices coated with parmesan for an irresistible side dish.",
            category: "Dinner",
            ingredients: [
                "1 small head of cabbage, sliced into wedges",
                "2 tbsp olive oil",
                "1/2 cup grated parmesan cheese",
                "1/2 tsp garlic powder",
                "1/4 tsp crushed red pepper flakes (optional)",
                "Salt and freshly ground black pepper to taste"
            ],
            instructions: [
                "1. Preheat the oven to 425°F (220°C).",
                "2. Arrange the cabbage wedges on a baking sheet. Drizzle with olive oil and season with salt, pepper, garlic powder, and red pepper flakes (if using).",
                "3. Sprinkle grated parmesan cheese generously over the cabbage wedges.",
                "4. Roast for 15-20 minutes, flipping halfway through, until the cabbage is tender and the parmesan is golden brown and crispy.",
                "5. Serve immediately as a savory side dish."
            ]
        ),
        Recipe(
            name: "Chicken and Cauliflower Rice",
            cookingTime: "30 Min",
            imageName: "chickenCauliflowerRiceImage",
            description: "A wholesome, low-carb meal featuring seasoned chicken and cauliflower rice.",
            category: "Dinner",
            ingredients: [
                "2 chicken breasts, boneless and skinless",
                "1 head of cauliflower, grated into rice-sized pieces",
                "2 tbsp olive oil",
                "1 tsp smoked paprika",
                "1/2 tsp garlic powder",
                "Salt and pepper to taste",
                "1 tbsp fresh parsley, chopped (optional)"
            ],
            instructions: [
                "1. Heat 1 tbsp olive oil in a large pan over medium heat. Season the chicken breasts with paprika, garlic powder, salt, and pepper.",
                "2. Cook the chicken breasts for 6-7 minutes per side, or until fully cooked through and golden brown. Remove from the pan and let rest.",
                "3. In the same pan, add the remaining 1 tbsp olive oil and sauté the grated cauliflower rice for 5-7 minutes, until tender and lightly browned.",
                "4. Slice the cooked chicken breasts into strips and serve over the cauliflower rice.",
                "5. Garnish with chopped fresh parsley and serve immediately."
            ]
        ),
        Recipe(
            name: "Teriyaki Salmon with Green Beans",
            cookingTime: "20 Min",
            imageName: "teriyakiSalmonGreenBeansImage",
            description: "A flavorful dish of teriyaki-glazed salmon paired with sautéed green beans.",
            category: "Dinner",
            ingredients: [
                "2 salmon fillets",
                "1/4 cup teriyaki sauce",
                "1 tbsp honey",
                "1 tbsp olive oil",
                "2 cups green beans, trimmed",
                "1 clove garlic, minced",
                "Salt and pepper to taste",
                "Sesame seeds for garnish"
            ],
            instructions: [
                "1. Preheat the oven to 375°F (190°C).",
                "2. Place the salmon fillets on a baking sheet lined with parchment paper. In a small bowl, whisk together teriyaki sauce and honey, then brush it generously over the salmon fillets.",
                "3. Roast the salmon in the oven for 12-15 minutes, until cooked through and flaky.",
                "4. While the salmon is cooking, heat olive oil in a pan over medium heat. Add the green beans and sauté for 5-7 minutes, adding minced garlic halfway through and seasoning with salt and pepper.",
                "5. Serve the teriyaki salmon with the sautéed green beans, garnished with sesame seeds for a little crunch."
            ]
        ),
        Recipe(
            name: "Avocado Toast",
            cookingTime: "5 Min",
            imageName: "avocadoToastImage",
            description: "A simple yet delicious breakfast of mashed avocado on toasted bread, topped with your favorite seasonings.",
            category: "Breakfast",
            ingredients: [
                "2 slices of whole grain or sourdough bread",
                "1 ripe avocado",
                "Salt and pepper to taste",
                "1 tsp olive oil (optional)",
                "1/4 tsp red pepper flakes (optional)",
                "Lemon juice (optional)",
                "Fresh herbs for garnish (optional)"
            ],
            instructions: [
                "1. Toast the bread slices in a toaster or on a skillet until golden and crispy.",
                "2. While the bread is toasting, cut the avocado in half, remove the pit, and scoop the flesh into a bowl.",
                "3. Mash the avocado with a fork until smooth, and season with salt, pepper, and a squeeze of lemon juice if desired.",
                "4. Spread the mashed avocado evenly on the toasted bread.",
                "5. Drizzle with olive oil, sprinkle with red pepper flakes, and garnish with fresh herbs if desired.",
                "6. Serve immediately and enjoy your quick, nutritious breakfast."
            ]
        ),

        Recipe(
            name: "Chia Pudding",
            cookingTime: "5 Min (plus 2 hours to set)",
            imageName: "chiaPuddingImage",
            description: "A creamy, nutrient-packed chia pudding made with your choice of milk and sweetened to taste.",
            category: "Breakfast",
            ingredients: [
                "3 tbsp chia seeds",
                "1 cup almond milk (or milk of your choice)",
                "1 tsp vanilla extract",
                "1 tbsp maple syrup or honey",
                "Fresh fruit for topping (optional)",
                "Nuts and seeds for topping (optional)"
            ],
            instructions: [
                "1. In a bowl or mason jar, combine the chia seeds, almond milk, vanilla extract, and maple syrup or honey.",
                "2. Stir well to combine, ensuring the chia seeds are evenly distributed in the liquid.",
                "3. Cover the bowl or jar and refrigerate for at least 2 hours or overnight to allow the chia seeds to absorb the liquid and thicken.",
                "4. After the chia pudding has set, stir it again and add more sweetener if desired.",
                "5. Top with fresh fruit, nuts, or seeds for added texture and flavor.",
                "6. Serve cold and enjoy this simple, healthy breakfast."
            ]
        ),

        Recipe(
            name: "Banana Pancakes",
            cookingTime: "15 Min",
            imageName: "bananaPancakesImage",
            description: "Fluffy banana pancakes with a hint of cinnamon.",
            category: "Breakfast",
            ingredients: ["1 cup flour", "1 tbsp sugar", "1 tsp baking powder", "1/2 tsp baking soda", "1/4 tsp salt", "1/2 tsp cinnamon", "1 cup milk", "1 egg", "1 tbsp melted butter", "1 ripe banana, mashed"],
            instructions: [
                "1. In a bowl, mix flour, sugar, baking powder, baking soda, salt, and cinnamon.",
                "2. In a separate bowl, whisk together milk, egg, and melted butter.",
                "3. Add the wet ingredients to the dry ingredients, mixing until just combined.",
                "4. Stir in the mashed banana.",
                "5. Heat a non-stick skillet over medium heat and cook the pancakes for 2-3 minutes on each side, until golden brown.",
                "6. Serve with maple syrup and enjoy!"
            ]
        )
    ]
}

// Recipe Card View
struct RecipeCard: View {
    let recipe: Recipe

    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 20)
                .fill(Color.white)
                .frame(height: 180)
                .shadow(color: Color.black.opacity(0.1), radius: 10, x: 0, y: 5)

            HStack(spacing: 16) {
                Image(recipe.imageName)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 120, height: 120)
                    .clipShape(RoundedRectangle(cornerRadius: 15))
                    .padding(.leading, 10)

                VStack(alignment: .leading, spacing: 8) {
                    Text(recipe.name)
                        .font(.system(size: 20, weight: .bold))
                        .foregroundColor(Color.black)
                        .lineLimit(1)

                    Text(recipe.description)
                        .font(.system(size: 14))
                        .foregroundColor(Color.gray)
                        .lineLimit(2)

                    HStack {
                        Image(systemName: "clock")
                            .foregroundColor(.gray)
                        Text(recipe.cookingTime)
                            .font(.system(size: 14))
                            .foregroundColor(.gray)
                    }
                }
                .padding(.trailing, 10)
            }
        }
        .padding(.horizontal)
    }
}

// Recipe List Screen
struct RecipeListScreen: View {
    @State private var selectedCategory: String = "Breakfast" // State variable for selected category
    let categories = ["Breakfast", "Lunch", "Dinner"]
    let recipes = RecipeDatabase.recipes

    var filteredRecipes: [Recipe] {
        recipes.filter { $0.category == selectedCategory }
    }

    var body: some View {
        NavigationView {
            ScrollView {
                VStack(alignment: .leading, spacing: 20) {
                    HStack {
                        Text("Category")
                            .font(Font.custom("Sofia Pro", size: 20).weight(.heavy))
                            .foregroundColor(Color(red: 0.04, green: 0.15, blue: 0.20))
                        Spacer()
                        NavigationLink(destination: NewView()) {
                            Text("See All")
                                .font(Font.custom("Sofia Pro", size: 14).weight(.heavy))
                                .foregroundColor(Color(red: 0.38, green: 0.02, blue: 0.32))
                        }
                    }
                    .padding(.horizontal)

                    // Category Buttons
                    HStack(alignment: .top, spacing: 12) {
                        ForEach(categories, id: \.self) { category in
                            CategoryButton(
                                title: category,
                                isSelected: selectedCategory == category,
                                action: { selectedCategory = category }
                            )
                        }
                    }
                    .padding(.bottom, 20)

                    Text("Good Morning, User")
                        .font(.system(size: 24, weight: .heavy))
                        .foregroundColor(Color(red: 0.04, green: 0.15, blue: 0.20))
                        .padding(.top, 20)

                    Text("What would you like to cook today?")
                        .font(.system(size: 16))
                        .foregroundColor(Color.gray)
                        .padding(.bottom, 20)

                    ForEach(filteredRecipes) { recipe in
                        NavigationLink(destination: RecipeDetailScreen(recipe: recipe)) {
                            RecipeCard(recipe: recipe)
                                .padding(.bottom, 10)
                        }
                    }
                }
                .padding([.leading, .trailing], 20)
            }
            .background(Color(red: 0.9, green: 0.85, blue: 1.0).edgesIgnoringSafeArea(.all))
            .navigationTitle("")
            .navigationBarHidden(true)
        }
    }
}

// Category Button Component
struct CategoryButton: View {
    let title: String
    let isSelected: Bool
    let action: () -> Void

    var body: some View {
        Button(action: action) {
            Text(title)
                .font(Font.custom("Sofia Pro", size: 16))
                .foregroundColor(isSelected ? .white : Color(red: 0.04, green: 0.15, blue: 0.20))
                .padding(EdgeInsets(top: 9, leading: 24, bottom: 9, trailing: 24))
                .background(isSelected ? Color(red: 0.38, green: 0.02, blue: 0.32) : Color(red: 0.95, green: 0.96, blue: 0.96))
                .cornerRadius(40)
                .shadow(color: Color(red: 0.42, green: 0.64, blue: 0.65).opacity(0.10), radius: 8)
        }
    }
}

// Recipe Detail Screen
struct RecipeDetailScreen: View {
    let recipe: Recipe

    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 20) {
                Image(recipe.imageName)
                    .resizable()
                    .scaledToFill()
                    .frame(height: 300)
                    .clipped()

                Text(recipe.name)
                    .font(.system(size: 28, weight: .bold))
                    .padding([.top, .horizontal])

                Text("Cooking Time: \(recipe.cookingTime)")
                    .font(.system(size: 16))
                    .foregroundColor(.gray)
                    .padding(.horizontal)

                Text(recipe.description)
                    .font(.system(size: 16))
                    .padding(.horizontal)

                Text("Ingredients")
                    .font(.system(size: 20, weight: .bold))
                    .padding(.horizontal)

                VStack(alignment: .leading) {
                    ForEach(recipe.ingredients, id: \.self) { ingredient in
                        Text("• \(ingredient)")
                            .font(.system(size: 16))
                            .padding(.horizontal)
                    }
                }

                Text("Instructions")
                    .font(.system(size: 20, weight: .bold))
                    .padding(.top, 20)
                    .padding(.horizontal)

                VStack(alignment: .leading) {
                    ForEach(recipe.instructions, id: \.self) { instruction in
                        Text(instruction)
                            .font(.system(size: 16))
                            .padding(.horizontal)
                            .lineLimit(nil) // Allow long instructions to wrap to the next line
                            .fixedSize(horizontal: false, vertical: true) // Allow vertical expansion
                    }
                }
            }
            .background(Color.white)
            .edgesIgnoringSafeArea(.top)
        }
    }
}


struct RecipeListScreen_Previews: PreviewProvider {
    static var previews: some View {
        RecipeListScreen()
    }
}
