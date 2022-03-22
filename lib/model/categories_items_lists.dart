import 'dart:core';

class CategoryItems {
  CategoryItems({
    required this.itemName,
    required this.itemDuration,
    required this.itemImage,
    required this.homeworkDue,
    required this.isCompleted,
    required this.isOpen,
  });

  late final String itemName;
  late final int itemDuration;
  late final String itemImage;
  late bool homeworkDue;
  late bool isCompleted;
  late bool isOpen;
}

List<CategoryItems> foundationSchoolItemList = [
  CategoryItems(
    itemName: "Class 1",
    itemDuration: 3,
    itemImage: "itemImage",
    homeworkDue: true,
    isCompleted: false,
    isOpen: true,
  ),
  CategoryItems(
    itemName: "Class 2",
    itemDuration: 3,
    itemImage: "itemImage",
    homeworkDue: false,
    isCompleted: false,
    isOpen: false,
  ),
  CategoryItems(
    itemName: "Class 3",
    itemDuration: 3,
    itemImage: "itemImage",
    homeworkDue: false,
    isCompleted: false,
    isOpen: false,
  ),
  CategoryItems(
    itemName: "Class 4",
    itemDuration: 3,
    itemImage: "itemImage",
    homeworkDue: false,
    isCompleted: false,
    isOpen: false,
  ),
  CategoryItems(
    itemName: "Class 5",
    itemDuration: 3,
    itemImage: "itemImage",
    homeworkDue: false,
    isCompleted: false,
    isOpen: false,
  ),
  CategoryItems(
    itemName: "Class 6",
    itemDuration: 3,
    itemImage: "itemImage",
    homeworkDue: false,
    isCompleted: false,
    isOpen: false,
  ),
];
List<CategoryItems> lessonsItemList = [];
List<CategoryItems> storiesItemList = [];
List<CategoryItems> doctrineItemList = [];
