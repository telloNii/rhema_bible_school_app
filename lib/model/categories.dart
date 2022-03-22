import 'package:flutter/material.dart';
import 'package:project_rhema/model/categories_items_lists.dart';

class Category {
  Category({
    required this.label,
    required this.itemsAvailable,
    required this.image,
    required this.color,
    required this.textColor,
    required this.categoryItemsList,
  });
  late final String label;
  late final String itemsAvailable;
  late final String image;
  late final Color color;
  late final Color textColor;
  late final List<CategoryItems> categoryItemsList;
}

List<Category> categoryList = [
  Category(
    label: "LESSONS",
    itemsAvailable: "128 Lessons - 11 Subjects",
    image: "assets/images/lessons_image.png",
    color: const Color(0xFF54B7FF),
    textColor: Colors.white,
    categoryItemsList: lessonsItemList,
  ),
  Category(
    label: "STORIES",
    itemsAvailable: "500 Bible Stories",
    image: "assets/images/stories_image.png",
    color: const Color(0xFFFFDE59),
    textColor: Colors.grey,
    categoryItemsList: storiesItemList,
  ),
  Category(
    label: "DOCTRINE",
    itemsAvailable: "50 Games to Play",
    image: "assets/images/doctrine_image.png",
    color: const Color(0xFF000000),
    textColor: Colors.white,
    categoryItemsList: doctrineItemList,
  ),
  Category(
    label: "MY FOUNDATION",
    itemsAvailable: "6 Foundation Classes",
    image: "assets/images/my_foundation_image.png",
    color: const Color(0xFF737373),
    textColor: Colors.white,
    categoryItemsList: foundationSchoolItemList,
  ),
];
