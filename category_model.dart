import 'package:flutter/material.dart';

class CategoryModel {
  String name;
  String
      iconPath; //The reason icon is string cuz we essentially use the path ofgthe icon we use.
  Color boxColor;
  CategoryModel(
      {required this.name, required this.iconPath, required this.boxColor});

  static List<CategoryModel> getCategories() {
    //here we are making a method called getCategories() which has a return type as List of objcets of class CategoryModel.
    List<CategoryModel> categories = [];

    categories.add(CategoryModel(
        name: 'Salad',
        iconPath: 'assets/icons/plate.svg',
        boxColor: const Color(0xff92A3FD)));

    categories.add(CategoryModel(
        name: 'Cake',
        iconPath: 'assets/icons/pancakes.svg',
        boxColor: const Color(0xffC588F2)));

    categories.add(CategoryModel(
        name: 'Pie',
        iconPath: 'assets/icons/pie.svg',
        boxColor: const Color(0xff92A3FD)));

    categories.add(CategoryModel(
        name: 'Smoothie',
        iconPath: 'assets/icons/orange-snacks.svg',
        boxColor: const Color(0xffC588F2)));

    return categories;
  }
}
