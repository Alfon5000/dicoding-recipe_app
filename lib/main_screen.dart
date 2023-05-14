import 'package:flutter/material.dart';
import 'package:recipe_app/detail_screen.dart';
import 'package:recipe_app/model/recipes.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        if (constraints.maxWidth <= 720) {
          return const MainListView();
        } else if (constraints.maxWidth <= 1080) {
          return const MainGridView(gridCount: 2);
        } else if (constraints.maxWidth <= 1440) {
          return const MainGridView(
            gridCount: 3,
          );
        } else {
          return const MainGridView(gridCount: 4);
        }
      },
    );
  }
}

class MainListView extends StatelessWidget {
  const MainListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Recipe App'),
        ),
        body: ListView.builder(
          itemBuilder: (context, index) {
            final Recipe recipe = recipes[index];
            return InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return DetailScreen(
                    recipe: recipe,
                  );
                }));
              },
              child: Card(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                        flex: 1,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image.asset(
                              recipe.image,
                            )
                          ],
                        )),
                    Expanded(
                        flex: 2,
                        child: Padding(
                          padding: const EdgeInsets.all(10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                recipe.name,
                                style: const TextStyle(
                                    fontSize: 18, color: Colors.green),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Text(
                                recipe.description,
                                style: const TextStyle(fontSize: 14),
                                textAlign: TextAlign.justify,
                              ),
                            ],
                          ),
                        )),
                  ],
                ),
              ),
            );
          },
          itemCount: recipes.length,
        ));
  }
}

class MainGridView extends StatelessWidget {
  final int gridCount;

  const MainGridView({Key? key, required this.gridCount}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Recipe App')),
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 150),
          child: GridView.count(
            crossAxisCount: gridCount,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            children: recipes.map((recipe) {
              return Card(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Expanded(
                      child: Image.asset(
                        recipe.image,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(top: 10, left: 10, bottom: 10),
                      child: Text(
                        recipe.name,
                        style: const TextStyle(
                          fontSize: 16,
                          color: Colors.green,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10, bottom: 10),
                      child: Text(
                        recipe.description,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10, bottom: 10),
                      child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return DetailScreen(
                                recipe: recipe,
                              );
                            }));
                          },
                          child: const Text('Recipe Detail')),
                    ),
                  ],
                ),
              );
            }).toList(),
          ),
        ));
  }
}
