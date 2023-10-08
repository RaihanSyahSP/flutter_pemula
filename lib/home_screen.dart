import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:flutter_pemula/detail_screen.dart';
import 'package:flutter_pemula/model/category_food.dart';
import 'package:flutter_pemula/model/food_data.dart';
import 'package:flutter_pemula/model/list_foods_bycategory.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<ListFoodsByCategory> filteredFoods = listFoodsByCategory;

  String selectedCategory = '';

  void updateFilteredFoods(List<ListFoodsByCategory> newFilteredFoods) {
    setState(() {
      filteredFoods = newFilteredFoods;
    });
  }

  void updateSelectedCategory(String category) {
    setState(() {
      selectedCategory = category;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: <Widget>[
                  //Logo
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image.asset(
                          'images/logo.png',
                          width: 70,
                          height: 70,
                          fit: BoxFit.contain,
                        ),
                      ),
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            'Recipy',
                            style: TextStyle(
                              fontSize: 21,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            'List of Recipe Foods From Different Country',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const Row(
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(top: 16.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              'Popular Dish',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const Column(
                    children: <Widget>[
                      SizedBox(
                        height: 110,
                        child: PopularFoodList(),
                      )
                      //List of food
                    ],
                  ),
                  const Row(
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(top: 16.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              'Categories',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      SizedBox(
                        height: 50,
                        child: ListCategory(
                            updateFilteredFoods: updateFilteredFoods,
                            selectedCategory: selectedCategory,
                            updateSelectedCategory: updateSelectedCategory),
                      )
                      //List of food
                    ],
                  ),
                  const SizedBox(height: 20),

                  const Column(
                    children: <Widget>[
                      //List of food
                    ],
                  ),
                  const SizedBox(height: 10),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.6,
                    child: FoodDataListView(filteredFoods: filteredFoods),
                  )

                  // Expanded(child: FoodDataListView())
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class GridFood extends StatelessWidget {
  const GridFood({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

List<ListFoodsByCategory> filterFoodsByCategory(
    List<ListFoodsByCategory> foodsList, String category) {
  return foodsList.where((food) => food.category == category).toList();
}

// ignore: must_be_immutable
class ListCategory extends StatelessWidget {
  final Function(List<ListFoodsByCategory>) updateFilteredFoods;
  final Function(String) updateSelectedCategory;
  final String selectedCategory;

  ListCategory(
      {Key? key,
      required this.updateFilteredFoods,
      required this.selectedCategory,
      required this.updateSelectedCategory})
      : super(key: key);

  final categoryFood = foodCategory.map((e) => e.category).toSet().toList();
  List<ListFoodsByCategory> filteredFoods = listFoodsByCategory;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          final category = categoryFood[index];
          final isActive = category == selectedCategory;
          return Container(
            clipBehavior: Clip.antiAlias,
            margin: const EdgeInsets.only(right: 10),
            decoration: BoxDecoration(
              border: Border.all(
                  color: isActive ? Colors.lightGreenAccent : Colors.black38,
                  width: isActive ? 2.5 : 1),
              borderRadius: BorderRadius.circular(15),
            ),
            child: InkWell(
              onTap: () {
                // Filter the list based on the selected category
                final selectedCategory = categoryFood[index];
                final filteredFoods = filterFoodsByCategory(
                    listFoodsByCategory, selectedCategory);

                // Update filtered data in the parent widget
                updateFilteredFoods(filteredFoods);

                // Update selected category in the parent widget
                updateSelectedCategory(selectedCategory);

                // Rebuild the widget tree
                Scaffold.of(context).setState(() {});
              },
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      categoryFood[index],
                      style: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
        itemCount: categoryFood.length,
      ),
    );
  }
}

class PopularFoodList extends StatelessWidget {
  const PopularFoodList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          final FoodData foodData = popularFoodList[index];
          final CategoryFood categoryFood = foodCategory[index];
          return Card(
            clipBehavior: Clip.antiAlias,
            elevation: 2,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) {
                    return DetailScreen(
                      foodData: foodData,
                    );
                  }),
                );
              },
              child: Stack(
                children: <Widget>[
                  ClipRRect(
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                    ),
                    child: Image.asset(
                      foodData.imagePoster,
                      width: 150,
                      height: 100,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(5.0),
                    width: 150,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: <Color>[
                          Colors.black.withAlpha(0),
                          Colors.black12,
                          Colors.black45
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        Text(
                          foodData.name,
                          style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          foodData.category,
                          style: const TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w300,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
        itemCount: popularFoodList.length);
  }
}

class FoodDataListView extends StatelessWidget {
  final List<ListFoodsByCategory> filteredFoods;

  FoodDataListView({Key? key, required this.filteredFoods}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: filteredFoods.length,
      itemBuilder: (context, index) {
        final ListFoodsByCategory listFood = filteredFoods[index];
        return Card(
          clipBehavior: Clip.antiAlias,
          elevation: 2,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          child: InkWell(
            onTap: () {
              // // print(foodData.name);
              // Navigator.push(
              //   context,
              //   MaterialPageRoute(
              //     builder: (context) {
              //       return DetailScreen(
              //         foodData: foodData,
              //       );
              //     },
              //   ),
              // );
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                ClipRRect(
                    child: Image.network(listFood.thumbnailFood,
                        width: 150, height: 100, fit: BoxFit.cover)),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 10.0,
                    bottom: 30.0,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      Text(
                        listFood.food,
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 3),
                      Text(
                        'Category ${listFood.category}',
                        style: const TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
