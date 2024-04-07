import 'package:flutter/material.dart';

import 'app/src/screen/bottombar.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: HomeScreen(),
      home: BottomBarDashboard(),
    );
  }
}
