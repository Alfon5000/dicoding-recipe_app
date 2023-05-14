class Recipe {
  String name;
  String image;
  String description;
  List<String> ingredients;
  List<String> directions;
  String yields;
  String prepTime;
  String cookTime;
  List<String> mealType;

  Recipe(
      {required this.name,
      required this.image,
      required this.description,
      required this.ingredients,
      required this.directions,
      required this.yields,
      required this.prepTime,
      required this.cookTime,
      required this.mealType});
}

var recipes = [
  Recipe(
      name: 'Poulet Moutarde',
      image: 'images/poulet-moutarde.jpg',
      description: 'Chicken thighs in a delicious creamy Dijon mustard sauce.',
      ingredients: [
        '6 oz nonfat yogurt',
        '1 gherkin pickle',
        '1 dash pepper',
        '1 dash salt',
        '1/4 tbsp vegetable oil',
        '1 tsp thyme',
        '4 oz Dijon mustard',
        '32 oz skinless chicken thighs',
      ],
      directions: [
        'Pre-heat the oven to 400 °F (200 °C).',
        'In a bowl, mix together the chicken, mustard and thyme, so the chicken is nicely coated.',
        'Lay a sheet of foil over a large baking tray, then place the chicken on the foil. Lay another sheet of foil over the first, and fold over the edges tightly to make a pouch. This will need to be placed in the oven for 45-60 minutes.',
        'Just before the chicken has finished cooking, you can prepare the sauce by mixing together the oil with the yogurt or fromage frais, and add a sprinkling of salt and black pepper.',
        'Once the chicken has cooked, remove the foil and pour over the sauce. Serve with slices of pickles or gherkins.',
      ],
      yields: '4 servings',
      prepTime: '15 mins',
      cookTime: '45 mins',
      mealType: ['Main Dishes']),
  Recipe(
      name: 'French Ratatouille',
      image: 'images/french-ratatouille.jpg',
      description:
          'An incredibly hearty low-calorie vegetable stew that\'s great alone, on whole wheat pasta or folded into an omelet.',
      ingredients: [
        '7 cups diced tomatoes',
        '4 oz tomato paste',
        '4 garlic cloves',
        '15 basil leaves',
        '2 medium summer squash',
        '2 peeled eggplants',
        '2 large zucchinis',
        '3 large bell peppers',
        '2 tbsps olive oil',
        '2 large yellow onions',
      ],
      directions: [
        'In a large skillet, heat olive oil over medium-high heat.',
        'Slice onions thinly and add to skillet. Cook about 4 minutes, or until onions start to become soft. Seed and dice bell peppers, about 1/4 inch or to your liking. Add to onions and cook 4 minutes.',
        'Dice zucchini and summer squash the same size as the bell pepper, add to the skillet and cook about 5 minutes.',
        'Dice eggplant and add-- you can peel or leave the skins on. Cook about 7 minutes. Dice garlic and add to the mix.',
        'Add diced tomatoes and tomato paste and mix well. Add salt and pepper to taste.',
        'Simmer on low about 40 minutes or until vegetables are soft and the mixture is slightly thickened. Slice basil into thin strips.',
        'Turn off the heat and mix basil into vegetable mixture. Enjoy.',
        'Note: this recipe is very versatile and does not need to be followed to a T. You may add most any vegetable you like that take well to the stewing method.',
      ],
      yields: '15 servings',
      prepTime: '25 mins',
      cookTime: '1 hr',
      mealType: ['Main Dishes', 'Side Dishes', 'Lunch']),
  Recipe(
      name: 'Crab and Avocado Salad',
      image: 'images/crab-and-avocado-salad.jpg',
      description:
          'An appetizing salad of mixed greens with crab and avocado in a creamy sauce.',
      ingredients: [
        '1 tbsp chopped red onion',
        '2 oz mixed salad greens',
        '1 dash pepper',
        '1 dash salt',
        '1 tsp cayenne pepper',
        '1/2 lime',
        '1 tbsp lowfat yogurt',
        '1/2 tbsp mayonnaise',
        '1/2 cup cilantro',
        '1/2 cup sliced cucumber',
        '2 medium whole tomatoes',
        '1 can crab',
        '1 avocado',
      ],
      directions: [
        'Drain the tinned crab and place in a bowl.',
        'Chop up tomatoes, cucumber, cilantro and avocado and add to the bowl, and squeeze the lime into the mixture.',
        'Add the red onion, yogurt and mayonnaise, and the cayenne, salt and pepper and mix it all together.',
        'Serve with the salad leaves. You could top with some pine nuts if you\'re feeling artistic.',
        'Note: based on a recipe from the South Beach diet.',
      ],
      yields: '2 servings',
      prepTime: '15 mins',
      cookTime: '-',
      mealType: ['Main Dishes', 'Salads and Salad', 'Dressings']),
  Recipe(
      name: 'Fiesta Lime Chicken With Zucchini',
      image: 'images/fiesta-lime-chicken-with-zucchini.jpg',
      description:
          'Chicken breast cutlet sauteed with lime with a side of zucchini and yellow squash.',
      ingredients: [
        '2 pieces skinless boneless chicken breast cutlets',
        '2 large zucchini',
        '1 yellow squash',
        '2 tbsp extra virgin olive oil',
        '1 1/2 tsp Montreal chicken seasoning',
        '1 tbsp paprika',
        '1/2 cup parsley',
        '1 1/2 tsp minced garlic',
        '1/4 cup lime juice',
        '2 1/2 Italian tomatoes',
        '1/2 cup chopped scallion',
        '1/4 cup cilantro',
        '1 dash salt',
        '1 1/2 dashes pepper',
        '1 fl oz white wine',
      ],
      directions: [
        'To prepare, slice zucchini and yellow squash into 1/4" sections.',
        'Dice tomatoes into the texture of salsa crudo. Mince garlic, parsley, scallions and cilantro.',
        'Combine diced tomatoes with cilantro, scallions, salt and pepper to create salsa crudo topping.',
        'Season chicken breast cutlets with seasoning, paprika and parsley. Begin to warm garlic & extra virgin olive oil in sauté pan.',
        'When garlic aromas become apparent, add seasoned chicken cutlets and add white wine.',
        'Sauté chicken in pan until chicken is 3/4 done. At that point, add zucchini, yellow squash, and lime juice. Cover and steam until vegetables reach desired texture.',
        'Remove chicken and vegetables when cutlets reach a caramelized-looking texture.',
        'Plate chicken and vegetables, and finish by adding desired amount of salsa crudo to the top of chicken. Enjoy!',
      ],
      yields: '2 servings',
      prepTime: '15 mins',
      cookTime: '30 mins',
      mealType: ['Main Dishes', 'Lunch']),
  Recipe(
      name: 'Mexican Chicken Soup',
      image: 'images/mexican-chicken-soup.jpg',
      description: 'Super fast and delicious spicy Mexican soup.',
      ingredients: [
        '1 tbsp canola oil',
        '1 small onion, chopped',
        '1 jalapeno, diced',
        '2 cloves garlic, minced',
        '5 cups chicken broth',
        '1 1/2 lbs boneless, skinless, chicken breasts, cut in strips',
        '2 cups mild salsa',
      ],
      directions: [
        'Heat oil in a large sauce pan over medium heat. Add onion and jalapeno; cook, stirring often until they are tender, about 5 minutes. Stir in garlic; cook 30 seconds more.',
        'Add broth (low sodium if possible), increase heat to high, and bring to a rapid simmer. Add chicken and cook until no longer pink, about 3 minutes.',
        'Stir in salsa, bring back to a simmer, season with salt and pepper to taste, and serve hot.',
        'Note: servings are approximately 2 1/2 cups. Jalapeno can be left out if soup is too spicy.',
      ],
      yields: '4 servings',
      prepTime: '2 mins',
      cookTime: '25 mins',
      mealType: ['Soups']),
  Recipe(
      name: 'Fruit Smoothie',
      image: 'images/fruit-smoothie.jpg',
      description:
          'Low calorie version of a smoothie that will satisfy a sweet tooth without sending you into sugar shock. It\'s thick enough that it can be eaten as a sorbet.',
      ingredients: [
        '4 medium strawberries',
        '7 cherries',
        '5 blackberries',
        '6 fl oz soy milk',
        '4 ice cubes',
      ],
      directions: [
        'In a blender add the ice, then the fruit, then the soy milk.',
        'Blend for 2-5 minutes until the fruit is completely blended.',
        'Pour into a cup and enjoy with either a spoon or a straw.',
        'Note: fruit can be fresh or frozen.',
      ],
      yields: '1 serving',
      prepTime: '5 mins',
      cookTime: '5 mins',
      mealType: ['Desserts', 'Beverages', 'Breakfast']),
  Recipe(
      name: 'Matcha Lemonade',
      image: 'images/matcha-lemonade.jpg',
      description: 'A low-calorie drink to brighten up your day.',
      ingredients: [
        '3-4 drops liquid stevia',
        '1 cup water',
        '1 lemon',
        '1/2 tsp matcha',
      ],
      directions: [
        'Squeeze the juice of lemon then add stevia drops and water.',
        'Add matcha and stir to dissolve.',
        'Garnish with lemon slices and ice as desired.',
      ],
      yields: '1 serving',
      prepTime: '5 mins',
      cookTime: '-',
      mealType: ['Beverages']),
  Recipe(
      name: 'Mango Lassi',
      image: 'images/mango-lassi.jpg',
      description: 'A non-fat, tasty, healthy, refreshing Indian beverage.',
      ingredients: [
        '1 tbsp agave nectar',
        '5.3 oz 0% plain Greek yogurt',
        '1 cup 100% mango fruit juice blend',
      ],
      directions: [
        'Combine all of the ingredients in a jar.'
            'Shake to blend.',
        'Serve in chilled glasses.',
      ],
      yields: '2 servings',
      prepTime: '2 mins',
      cookTime: '-',
      mealType: ['Beverages']),
];
