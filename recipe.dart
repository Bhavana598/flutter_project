import 'package:flutter/material.dart';

void main() {
  runApp(const RecipeBookApp());
}

// ---------------- MAIN APP ----------------

class RecipeBookApp extends StatelessWidget {
  const RecipeBookApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Recipe Book',
      theme: ThemeData(
        primarySwatch: Colors.orange,
        scaffoldBackgroundColor: Colors.orange.shade50,
        useMaterial3: true,
      ),
      home: const LoginPage(),
    );
  }
}

// ---------------- RECIPE MODEL ----------------

class Recipe {
  final String name;
  final String category;
  final List<String> ingredients;
  final List<String> steps;

  const Recipe({
    required this.name,
    required this.category,
    required this.ingredients,
    required this.steps,
  });
}

// ---------------- RECIPES ----------------

final List<Recipe> recipes = [
  Recipe(
    name: 'Veg Fried Rice',
    category: 'Main Course',
    ingredients: [
      '2 cups cooked rice',
      '1 cup mixed vegetables',
      '2 tablespoons oil',
      '1 tablespoon soy sauce',
      'Salt',
      'Pepper',
    ],
    steps: [
      'Heat oil in a pan.',
      'Add mixed vegetables and cook for 3 minutes.',
      'Add cooked rice.',
      'Add soy sauce, salt and pepper.',
      'Mix well and cook for 2 minutes.',
      'Serve hot.',
    ],
  ),
  Recipe(
    name: 'Pasta',
    category: 'Main Course',
    ingredients: [
      '200g pasta',
      '1 cup tomato sauce',
      '1 onion',
      '2 cloves garlic',
      '1 tablespoon oil',
      'Salt',
    ],
    steps: [
      'Boil water and cook the pasta.',
      'Heat oil in a pan.',
      'Add onion and garlic.',
      'Add tomato sauce.',
      'Add cooked pasta.',
      'Mix well and serve.',
    ],
  ),
  Recipe(
    name: 'Pancakes',
    category: 'Breakfast',
    ingredients: [
      '1 cup flour',
      '1 cup milk',
      '1 egg',
      '2 tablespoons sugar',
      '1 teaspoon baking powder',
      'Butter',
    ],
    steps: [
      'Mix flour, sugar and baking powder.',
      'Add milk and egg.',
      'Mix until smooth.',
      'Heat a pan and add butter.',
      'Pour the batter.',
      'Cook both sides until golden.',
    ],
  ),
  Recipe(
    name: 'Fruit Salad',
    category: 'Healthy',
    ingredients: [
      '1 apple',
      '1 banana',
      '1 orange',
      '1 cup grapes',
      '1 tablespoon honey',
    ],
    steps: [
      'Wash all the fruits.',
      'Cut fruits into small pieces.',
      'Add all fruits to a bowl.',
      'Add honey.',
      'Mix gently and serve.',
    ],
  ),
  Recipe(
    name: 'Chicken Biryani',
    category: 'Main Course',
    ingredients: [
      '2 cups basmati rice',
      '500g chicken',
      '2 onions',
      '2 tomatoes',
      'Biryani masala',
      'Ginger garlic paste',
      'Salt',
      'Oil',
    ],
    steps: [
      'Wash and soak the rice.',
      'Cook chicken with spices and onions.',
      'Add tomatoes and biryani masala.',
      'Cook until chicken is tender.',
      'Add partially cooked rice.',
      'Cover and cook on low flame until done.',
      'Serve hot.',
    ],
  ),
  Recipe(
    name: 'Masala Dosa',
    category: 'Breakfast',
    ingredients: [
      'Dosa batter',
      '3 potatoes',
      '1 onion',
      'Green chillies',
      'Mustard seeds',
      'Turmeric',
      'Salt',
      'Oil',
    ],
    steps: [
      'Boil and mash the potatoes.',
      'Cook onions with mustard seeds.',
      'Add potatoes, turmeric and salt.',
      'Heat a dosa pan.',
      'Spread dosa batter thinly.',
      'Add potato filling.',
      'Fold and serve.',
    ],
  ),
  Recipe(
    name: 'Veg Sandwich',
    category: 'Snacks',
    ingredients: [
      '4 bread slices',
      '1 tomato',
      '1 cucumber',
      '1 onion',
      'Butter',
      'Green chutney',
      'Salt',
    ],
    steps: [
      'Apply butter on bread.',
      'Spread green chutney.',
      'Add sliced vegetables.',
      'Add salt.',
      'Cover with another bread slice.',
      'Toast and serve.',
    ],
  ),
  Recipe(
    name: 'Tomato Soup',
    category: 'Soup',
    ingredients: [
      '4 tomatoes',
      '1 onion',
      '2 cloves garlic',
      '1 tablespoon butter',
      'Salt',
      'Pepper',
    ],
    steps: [
      'Chop tomatoes and onion.',
      'Cook them with garlic.',
      'Add water and boil.',
      'Blend the mixture.',
      'Add salt and pepper.',
      'Heat again and serve.',
    ],
  ),
  Recipe(
    name: 'Chocolate Cake',
    category: 'Dessert',
    ingredients: [
      '1 cup flour',
      '1 cup sugar',
      '1/2 cup cocoa powder',
      '2 eggs',
      '1 cup milk',
      '1 teaspoon baking powder',
    ],
    steps: [
      'Mix flour, cocoa and baking powder.',
      'Add sugar and eggs.',
      'Add milk and mix well.',
      'Pour into a cake pan.',
      'Bake until fully cooked.',
      'Cool and serve.',
    ],
  ),
  Recipe(
    name: 'Mango Smoothie',
    category: 'Drinks',
    ingredients: [
      '1 ripe mango',
      '1 cup milk',
      '2 tablespoons sugar',
      'Ice cubes',
    ],
    steps: [
      'Peel and cut the mango.',
      'Add mango to a blender.',
      'Add milk and sugar.',
      'Add ice cubes.',
      'Blend until smooth.',
      'Serve chilled.',
    ],
  ),
  Recipe(
    name: 'Paneer Tikka',
    category: 'Snacks',
    ingredients: [
      '250g paneer',
      '1 capsicum',
      '1 onion',
      '1/2 cup yogurt',
      'Tikka masala',
      'Salt',
      'Oil',
    ],
    steps: [
      'Cut paneer and vegetables.',
      'Mix yogurt with spices.',
      'Add paneer and vegetables.',
      'Marinate for 30 minutes.',
      'Cook on a pan or grill.',
      'Serve hot.',
    ],
  ),
  Recipe(
    name: 'Veg Noodles',
    category: 'Main Course',
    ingredients: [
      '200g noodles',
      '1 carrot',
      '1 capsicum',
      '1 onion',
      'Soy sauce',
      'Pepper',
      'Oil',
    ],
    steps: [
      'Boil the noodles.',
      'Heat oil in a pan.',
      'Add chopped vegetables.',
      'Add cooked noodles.',
      'Add soy sauce and pepper.',
      'Mix well and serve.',
    ],
  ),
  Recipe(
    name: 'Gulab Jamun',
    category: 'Dessert',
    ingredients: [
      'Gulab jamun mix',
      'Sugar',
      'Water',
      'Cardamom',
      'Oil',
    ],
    steps: [
      'Prepare the dough using gulab jamun mix.',
      'Make small balls.',
      'Heat oil and fry the balls.',
      'Prepare sugar syrup.',
      'Add fried balls to the syrup.',
      'Let them soak and serve.',
    ],
  ),
  Recipe(
    name: 'Greek Salad',
    category: 'Healthy',
    ingredients: [
      '1 cucumber',
      '2 tomatoes',
      '1 onion',
      'Olives',
      'Feta cheese',
      'Olive oil',
      'Salt',
    ],
    steps: [
      'Chop cucumber and tomatoes.',
      'Slice the onion.',
      'Add olives and feta cheese.',
      'Add olive oil and salt.',
      'Mix gently.',
      'Serve fresh.',
    ],
  ),
];

// ---------------- LOGIN PAGE ----------------

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final formKey = GlobalKey<FormState>();
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  bool hidePassword = true;

  void login() {
    if (formKey.currentState!.validate()) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => const HomePage(),
        ),
      );
    }
  }

  @override
  void dispose() {
    usernameController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(25),
          child: Form(
            key: formKey,
            child: Column(
              children: [
                const Icon(
                  Icons.restaurant_menu,
                  size: 90,
                  color: Colors.orange,
                ),
                const SizedBox(height: 15),
                const Text(
                  'Recipe Book',
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 10),
                const Text(
                  'Login to explore delicious recipes',
                  style: TextStyle(color: Colors.grey),
                ),
                const SizedBox(height: 35),
                TextFormField(
                  controller: usernameController,
                  decoration: const InputDecoration(
                    labelText: 'Username',
                    prefixIcon: Icon(Icons.person),
                    border: OutlineInputBorder(),
                  ),
                  validator: (value) {
                    if (value == null || value.trim().isEmpty) {
                      return 'Please enter your username';
                    }
                    if (value.trim().length < 3) {
                      return 'Username must be at least 3 characters';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 20),
                TextFormField(
                  controller: passwordController,
                  obscureText: hidePassword,
                  decoration: InputDecoration(
                    labelText: 'Password',
                    prefixIcon: const Icon(Icons.lock),
                    border: const OutlineInputBorder(),
                    suffixIcon: IconButton(
                      icon: Icon(
                        hidePassword
                            ? Icons.visibility
                            : Icons.visibility_off,
                      ),
                      onPressed: () {
                        setState(() {
                          hidePassword = !hidePassword;
                        });
                      },
                    ),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your password';
                    }
                    if (value.length < 6) {
                      return 'Password must be at least 6 characters';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 30),
                SizedBox(
                  width: double.infinity,
                  height: 50,
                  child: ElevatedButton(
                    onPressed: login,
                    child: const Text(
                      'LOGIN',
                      style: TextStyle(fontSize: 17),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// ---------------- HOME PAGE ----------------

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String searchText = '';
  final Set<String> favorites = {};

  List<Recipe> get filteredRecipes {
    if (searchText.trim().isEmpty) {
      return recipes;
    }

    return recipes.where((recipe) {
      return recipe.name
              .toLowerCase()
              .contains(searchText.toLowerCase()) ||
          recipe.category
              .toLowerCase()
              .contains(searchText.toLowerCase());
    }).toList();
  }

  void toggleFavorite(String recipeName) {
    setState(() {
      if (favorites.contains(recipeName)) {
        favorites.remove(recipeName);
      } else {
        favorites.add(recipeName);
      }
    });
  }

  void logout() {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) => const LoginPage(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Recipe Book',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(Icons.logout),
            onPressed: logout,
            tooltip: 'Logout',
          ),
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(15),
            child: TextField(
              onChanged: (value) {
                setState(() {
                  searchText = value;
                });
              },
              decoration: InputDecoration(
                hintText: 'Search recipes...',
                prefixIcon: const Icon(Icons.search),
                suffixIcon: searchText.isNotEmpty
                    ? IconButton(
                        icon: const Icon(Icons.clear),
                        onPressed: () {
                          setState(() {
                            searchText = '';
                          });
                        },
                      )
                    : null,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
            ),
          ),
          Expanded(
            child: filteredRecipes.isEmpty
                ? const Center(
                    child: Text(
                      'No recipes found',
                      style: TextStyle(fontSize: 18),
                    ),
                  )
                : ListView.builder(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    itemCount: filteredRecipes.length,
                    itemBuilder: (context, index) {
                      final recipe = filteredRecipes[index];

                      return RecipeCard(
                        recipe: recipe,
                        isFavorite: favorites.contains(recipe.name),
                        onFavorite: () {
                          toggleFavorite(recipe.name);
                        },
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => RecipeDetails(
                                recipe: recipe,
                                isFavorite:
                                    favorites.contains(recipe.name),
                                onFavorite: () {
                                  toggleFavorite(recipe.name);
                                },
                              ),
                            ),
                          ).then((_) {
                            setState(() {});
                          });
                        },
                      );
                    },
                  ),
          ),
        ],
      ),
    );
  }
}

// ---------------- RECIPE CARD ----------------

class RecipeCard extends StatelessWidget {
  final Recipe recipe;
  final bool isFavorite;
  final VoidCallback onFavorite;
  final VoidCallback onTap;

  const RecipeCard({
    super.key,
    required this.recipe,
    required this.isFavorite,
    required this.onFavorite,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(bottom: 12),
      elevation: 3,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      child: ListTile(
        contentPadding: const EdgeInsets.all(15),
        onTap: onTap,
        leading: const CircleAvatar(
          radius: 25,
          backgroundColor: Color(0xFFFFE0B2),
          child: Icon(
            Icons.restaurant_menu,
            color: Colors.deepOrange,
            size: 28,
          ),
        ),
        title: Text(
          recipe.name,
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        subtitle: Padding(
          padding: const EdgeInsets.only(top: 5),
          child: Text(
            recipe.category,
            style: TextStyle(
              color: Colors.orange.shade800,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        trailing: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            IconButton(
              icon: Icon(
                isFavorite ? Icons.favorite : Icons.favorite_border,
                color: isFavorite ? Colors.red : Colors.grey,
              ),
              onPressed: onFavorite,
            ),
            const Icon(
              Icons.arrow_forward_ios,
              size: 16,
            ),
          ],
        ),
      ),
    );
  }
}

// ---------------- RECIPE DETAILS ----------------

class RecipeDetails extends StatefulWidget {
  final Recipe recipe;
  final bool isFavorite;
  final VoidCallback onFavorite;

  const RecipeDetails({
    super.key,
    required this.recipe,
    required this.isFavorite,
    required this.onFavorite,
  });

  @override
  State<RecipeDetails> createState() => _RecipeDetailsState();
}

class _RecipeDetailsState extends State<RecipeDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.recipe.name),
        actions: [
          IconButton(
            icon: Icon(
              widget.isFavorite
                  ? Icons.favorite
                  : Icons.favorite_border,
              color: widget.isFavorite ? Colors.red : null,
            ),
            onPressed: () {
              widget.onFavorite();
              setState(() {});
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const CircleAvatar(
                radius: 35,
                backgroundColor: Color(0xFFFFE0B2),
                child: Icon(
                  Icons.restaurant_menu,
                  size: 40,
                  color: Colors.deepOrange,
                ),
              ),
              const SizedBox(height: 15),
              Text(
                widget.recipe.name,
                style: const TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 5),
              Text(
                widget.recipe.category,
                style: TextStyle(
                  fontSize: 17,
                  color: Colors.orange.shade800,
                ),
              ),
              const SizedBox(height: 25),
              const Text(
                'Ingredients',
                style: TextStyle(
                  fontSize: 23,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 10),
              ...widget.recipe.ingredients.map(
                (ingredient) => Padding(
                  padding: const EdgeInsets.symmetric(vertical: 6),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Icon(
                        Icons.check_circle,
                        size: 20,
                        color: Colors.green,
                      ),
                      const SizedBox(width: 10),
                      Expanded(
                        child: Text(
                          ingredient,
                          style: const TextStyle(fontSize: 16),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 25),
              const Text(
                'Cooking Steps',
                style: TextStyle(
                  fontSize: 23,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 10),
              ...widget.recipe.steps.asMap().entries.map(
                (entry) {
                  final index = entry.key;
                  final step = entry.value;

                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CircleAvatar(
                          radius: 14,
                          backgroundColor: Colors.orange,
                          child: Text(
                            '${index + 1}',
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 13,
                            ),
                          ),
                        ),
                        const SizedBox(width: 12),
                        Expanded(
                          child: Text(
                            step,
                            style: const TextStyle(fontSize: 16),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
