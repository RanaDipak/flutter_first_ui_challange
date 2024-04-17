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

class Popular {
  String? imageName;
  String? title;
  String? originalPrice;
  String? discountPrice;
  bool? isLike;

  Popular(
      {this.imageName,
      this.title,
      this.originalPrice,
      this.discountPrice,
      this.isLike});
}

List<Popular> getPopularDataList = [
  Popular(
    imageName: Assets.pop1Icon,
    title: "Elegant Blazer",
    discountPrice: "\$89.99",
    originalPrice: "\$120",
    isLike: true,
  ),
  Popular(
    imageName: Assets.pop2Icon,
    title: "Puma round ne..",
    discountPrice: "\$29.99",
    originalPrice: "\$40",
    isLike: false,
  ),
  Popular(
    imageName: Assets.pop3Icon,
    title: "Jack & Jonas Ja..",
    discountPrice: "\$67.99",
    originalPrice: "\$80",
    isLike: false,
  ),
];
