import 'package:flutter/material.dart';
import 'package:flutter_ui_app/second_ui/src/screen/bottom_bar/bottom_bar.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: HomeScreen(),
      // home: BottomBarDashboard(),/// first ui
      home: BottomBar(),
    );
  }
}
