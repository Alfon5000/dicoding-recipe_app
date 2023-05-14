import 'package:flutter/material.dart';
import 'package:recipe_app/model/recipes.dart';

class DetailScreen extends StatelessWidget {
  final Recipe recipe;

  const DetailScreen({Key? key, required this.recipe}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        if (constraints.maxWidth <= 1080) {
          return DetailMobile(
            recipe: recipe,
          );
        } else {
          return DetailWeb(
            recipe: recipe,
          );
        }
      },
    );
  }
}

class DetailMobile extends StatelessWidget {
  final Recipe recipe;
  final TextStyle subtitleStyle =
      const TextStyle(fontSize: 16, color: Colors.green);

  const DetailMobile({Key? key, required this.recipe}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int num = 1;
    return Scaffold(
      appBar: AppBar(
        title: Text('${recipe.name} Recipe Detail'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(10),
        child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Expanded(
              flex: 2,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 10),
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Image.asset(recipe.image),
                  ),
                  Card(
                      child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      children: [
                        Row(children: [
                          const SizedBox(
                            width: 25,
                            child: Icon(Icons.person,
                                size: 18, color: Colors.green),
                          ),
                          Expanded(
                            child: Text(
                              'Yields: ',
                              style: subtitleStyle,
                            ),
                          ),
                        ]),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            const SizedBox(
                              width: 25,
                            ),
                            Expanded(
                              child: Text(recipe.yields),
                            ),
                          ],
                        ),
                      ],
                    ),
                  )),
                  const SizedBox(
                    height: 5,
                  ),
                  Card(
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        children: [
                          Row(children: [
                            const SizedBox(
                              width: 25,
                              child: Icon(Icons.punch_clock,
                                  size: 18, color: Colors.green),
                            ),
                            Expanded(
                              child: Text(
                                'Prep Time: ',
                                style: subtitleStyle,
                              ),
                            ),
                          ]),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              const SizedBox(
                                width: 25,
                              ),
                              Expanded(
                                child: Text(recipe.prepTime),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              const SizedBox(
                                width: 25,
                              ),
                              Expanded(
                                child: Text(
                                  'Cook Time: ',
                                  style: subtitleStyle,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              const SizedBox(
                                width: 25,
                              ),
                              Expanded(
                                child: Text(recipe.cookTime),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Card(
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Column(children: [
                        Row(
                          children: [
                            const SizedBox(
                              width: 25,
                              child: Icon(
                                Icons.food_bank,
                                color: Colors.green,
                                size: 18,
                              ),
                            ),
                            Expanded(
                              child: Text(
                                'Meal Type: ',
                                style: subtitleStyle,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            const SizedBox(
                              width: 25,
                            ),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: recipe.mealType
                                    .map(
                                      (type) => Container(
                                        margin:
                                            const EdgeInsets.only(bottom: 10),
                                        child: Text(type),
                                      ),
                                    )
                                    .toList(),
                              ),
                            ),
                          ],
                        ),
                      ]),
                    ),
                  )
                ],
              )),
          Expanded(
              flex: 3,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Text(recipe.name,
                              style: const TextStyle(
                                  fontSize: 22, color: Colors.green)),
                        ),
                        const FavoriteButton(),
                      ],
                    ),
                    const Divider(
                      thickness: 1,
                      color: Colors.green,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      recipe.description,
                      style: const TextStyle(fontSize: 14),
                      textAlign: TextAlign.justify,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Ingredients: ',
                      style: subtitleStyle,
                      textAlign: TextAlign.start,
                    ),
                    const Divider(
                      thickness: 1,
                      color: Colors.green,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: recipe.ingredients
                          .map((ingredient) => Container(
                                margin: const EdgeInsets.only(bottom: 10),
                                child: Text(ingredient),
                              ))
                          .toList(),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Directions: ',
                      style: subtitleStyle,
                      textAlign: TextAlign.start,
                    ),
                    const Divider(
                      thickness: 1,
                      color: Colors.green,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: recipe.directions
                          .map((direction) => Container(
                                margin: const EdgeInsets.only(bottom: 10),
                                child: Text('${num++}. $direction'),
                              ))
                          .toList(),
                    ),
                  ],
                ),
              )),
        ]),
      ),
    );
  }
}

class DetailWeb extends StatelessWidget {
  final Recipe recipe;
  final TextStyle subtitleStyle =
      const TextStyle(fontSize: 16, color: Colors.green);

  const DetailWeb({Key? key, required this.recipe}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int num = 1;
    return Scaffold(
      appBar: AppBar(
        title: Text('${recipe.name} Recipe Detail'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 200),
        child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Expanded(
              flex: 3,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 10),
                    child: Image.asset(recipe.image),
                  ),
                  Card(
                      child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      children: [
                        Row(children: [
                          const SizedBox(
                            width: 25,
                            child: Icon(Icons.person,
                                size: 18, color: Colors.green),
                          ),
                          Expanded(
                            child: Text(
                              'Yields: ',
                              style: subtitleStyle,
                            ),
                          ),
                        ]),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            const SizedBox(
                              width: 25,
                            ),
                            Expanded(
                              child: Text(recipe.yields),
                            ),
                          ],
                        ),
                      ],
                    ),
                  )),
                  const SizedBox(
                    height: 5,
                  ),
                  Card(
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        children: [
                          Row(children: [
                            const SizedBox(
                              width: 25,
                              child: Icon(Icons.punch_clock,
                                  size: 18, color: Colors.green),
                            ),
                            Expanded(
                              child: Text(
                                'Prep Time: ',
                                style: subtitleStyle,
                              ),
                            ),
                          ]),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              const SizedBox(
                                width: 25,
                              ),
                              Expanded(
                                child: Text(recipe.prepTime),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              const SizedBox(
                                width: 25,
                              ),
                              Expanded(
                                child: Text(
                                  'Cook Time: ',
                                  style: subtitleStyle,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              const SizedBox(
                                width: 25,
                              ),
                              Expanded(
                                child: Text(recipe.cookTime),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Card(
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Column(children: [
                        Row(
                          children: [
                            const SizedBox(
                              width: 25,
                              child: Icon(
                                Icons.food_bank,
                                color: Colors.green,
                                size: 18,
                              ),
                            ),
                            Expanded(
                              child: Text(
                                'Meal Type: ',
                                style: subtitleStyle,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            const SizedBox(
                              width: 25,
                            ),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: recipe.mealType
                                    .map((type) => Container(
                                          margin:
                                              const EdgeInsets.only(bottom: 10),
                                          child: Text(type),
                                        ))
                                    .toList(),
                              ),
                            ),
                          ],
                        ),
                      ]),
                    ),
                  ),
                ],
              )),
          const SizedBox(
            width: 10,
          ),
          Expanded(
            flex: 5,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Text(recipe.name,
                          style: const TextStyle(
                              fontSize: 24, color: Colors.green)),
                    ),
                    const FavoriteButton(),
                  ],
                ),
                const Divider(
                  thickness: 1,
                  color: Colors.green,
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  recipe.description,
                  style: const TextStyle(fontSize: 14),
                  textAlign: TextAlign.justify,
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  'Ingredients: ',
                  style: subtitleStyle,
                  textAlign: TextAlign.start,
                ),
                const Divider(
                  thickness: 1,
                  color: Colors.green,
                ),
                const SizedBox(
                  height: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: recipe.ingredients
                      .map((ingredient) => Container(
                            margin: const EdgeInsets.only(bottom: 10),
                            child: Text(ingredient),
                          ))
                      .toList(),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  'Directions: ',
                  style: subtitleStyle,
                  textAlign: TextAlign.start,
                ),
                const Divider(
                  thickness: 1,
                  color: Colors.green,
                ),
                const SizedBox(
                  height: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: recipe.directions
                      .map((direction) => Container(
                            margin: const EdgeInsets.only(bottom: 10),
                            child: Text('${num++}. $direction'),
                          ))
                      .toList(),
                ),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}

class FavoriteButton extends StatefulWidget {
  const FavoriteButton({Key? key}) : super(key: key);

  @override
  _FavoriteButtonState createState() => _FavoriteButtonState();
}

class _FavoriteButtonState extends State<FavoriteButton> {
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(
        isFavorite ? Icons.favorite : Icons.favorite_border,
        color: Colors.red,
      ),
      onPressed: () {
        setState(() {
          isFavorite = !isFavorite;
        });
      },
    );
  }
}
