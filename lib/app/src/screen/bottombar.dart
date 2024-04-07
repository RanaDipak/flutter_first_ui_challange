import 'package:flutter/material.dart';
import 'package:flutter_first_ui/app/src/screen/statistics_page.dart';
import 'package:flutter_first_ui/generated/assets.dart'; // Import StatisticsPage here

class BottomBarDashboard extends StatefulWidget {
  const BottomBarDashboard();
  @override
  _BottomBarDashboardState createState() => _BottomBarDashboardState();
}

class _BottomBarDashboardState extends State<BottomBarDashboard> {
  int _selectedIndex = 0;

  static List<Widget> _widgetOptions = <Widget>[
    DashboardPage(),
    StatisticsPage(), // Use StatisticsPage here
    TransactionsPage(),
    ShopPage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: _widgetOptions.elementAt(_selectedIndex),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Image.asset(Assets.assetsDashboardIcon),
              label: 'Dashboard',
            ),
            BottomNavigationBarItem(
              icon: Image.asset(Assets.assetsTrendIcon),
              label: 'Statistics',
            ),
            BottomNavigationBarItem(
              icon: Image.asset(Assets.assetsTransactionIcon),
              label: 'Transactions',
            ),
            BottomNavigationBarItem(
              icon: Image.asset(Assets.assetsShoppingIcon),
              label: 'Shop',
            ),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.orange,
          unselectedItemColor: Colors.grey,
          showSelectedLabels: true,
          showUnselectedLabels: true,
          onTap: _onItemTapped,
        ),
      ),
    );
  }
}

class DashboardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Dashboard',
        style: TextStyle(fontSize: 24),
      ),
    );
  }
}

class TransactionsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Transactions Page',
        style: TextStyle(fontSize: 24),
      ),
    );
  }
}

class ShopPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Shop Page',
        style: TextStyle(fontSize: 24),
      ),
    );
  }
}
