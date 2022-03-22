import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:project_rhema/model/categories.dart';
import 'package:project_rhema/screens/foundation_school_screen.dart';

class CategoriesScreen extends StatelessWidget {
  static const String id = " categories screen route";
  const CategoriesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color(0xFF737373),
        onPressed: () {},
        child: const Icon(Icons.arrow_forward_ios),
      ),
      appBar: AppBar(
        centerTitle: true,
        elevation: 0.2,
        title: const Text(
          "CATEGORIES",
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 18.0,
        ),
        child: GridView.custom(
          gridDelegate: SliverWovenGridDelegate.count(
            crossAxisCount: 2,
            pattern: [
              const WovenGridTile(4.2 / 7),
              const WovenGridTile(
                3 / 7,
                crossAxisRatio: 0.9,
                alignment: AlignmentDirectional.centerEnd,
              ),
            ],
          ),
          childrenDelegate: SliverChildBuilderDelegate((BuildContext context, int index) {
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => SelectedCategoryScreen(
                                title: categoryList[index].label,
                                loadList: [],
                              )));
                },
                child: Container(
                  padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                  decoration: BoxDecoration(
                    color: categoryList[index].color,
                    borderRadius: BorderRadius.circular(25),
                  ),
                  height: 100,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        categoryList[index].label,
                        style: TextStyle(
                            color: categoryList[index].textColor,
                            fontSize: 20,
                            fontWeight: FontWeight.w600),
                      ),
                      Text(
                        categoryList[index].itemsAvailable,
                        style: TextStyle(
                            color: categoryList[index].textColor,
                            fontSize: 11,
                            fontWeight: FontWeight.w400),
                      ),
                      const SizedBox(
                        height: 50,
                      ),
                      Image.asset(categoryList[index].image),
                    ],
                  ),
                ),
              ),
            );
          }, childCount: categoryList.length),
        ),
      ),
    );
  }
}
