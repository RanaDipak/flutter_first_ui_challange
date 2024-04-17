import 'package:flutter_ui_app/generated/assets.dart';

class CategoryData {
  String imageName;
  String title;

  CategoryData({required this.imageName, required this.title});
}

List<CategoryData> getCategoryDataList = [
  CategoryData(imageName: Assets.category_1Icon, title: "Mens\n Wear"),
  CategoryData(imageName: Assets.category_2Icon, title: "Womens\n Wear"),
  CategoryData(imageName: Assets.category_3Icon, title: "Kids\n Wear"),
  CategoryData(imageName: Assets.category_4Icon, title: "Home"),
];

class Brand {
  String name;

  Brand({required this.name});
}

List<Brand> getBrandList = [
  Brand(name: "Nike"),
  Brand(name: "Puma"),
  Brand(name: "Lacoste"),
  Brand(name: "Vans"),
];
