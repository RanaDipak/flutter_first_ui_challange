import 'package:flutter_ui_app/third_ui/pages/home/binding/home_binding.dart';
import 'package:flutter_ui_app/third_ui/pages/home/screen/home.dart';
import 'package:flutter_ui_app/third_ui/routes/app_rouotes.dart';
import 'package:get/get.dart';

class AppPages {
  AppPages._();
  static const INITIAL = AppRoutes.HOME;
  static final routes = [
    GetPage(
      name: Paths.HOME,
      page: () => HomeScreen(),
      binding: HomeBinding(),
    ),
  ];
}
