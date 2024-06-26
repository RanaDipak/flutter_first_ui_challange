import 'package:flutter/material.dart';
import 'package:flutter_ui_app/third_ui/routes/app_pages.dart';
import 'package:get/get.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      // home: HomeScreen(),
      // home: BottomBarDashboard(),/// first ui
      // home: BottomBar(),
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
    );
  }
}
