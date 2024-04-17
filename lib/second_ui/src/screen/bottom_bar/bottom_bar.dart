import 'package:flutter/material.dart';
import 'package:flutter_ui_app/generated/assets.dart';
import 'package:flutter_ui_app/second_ui/src/screen/home/home_screen.dart';
import 'package:flutter_ui_app/utils/appThemes.dart';
import 'package:flutter_ui_app/utils/color_constant.dart'; // Import StatisticsPage here

class BottomBar extends StatefulWidget {
  const BottomBar();
  @override
  _BottomBarState createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int _selectedIndex = 0;

  static List<Widget> _widgetOptions = <Widget>[
    HomeScreen(),
    ShopPage(), // Use StatisticsPage here
    MessagePage(),
    SellPage(),
    SettingPage(),
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
          type: BottomNavigationBarType.fixed,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Image.asset(
                Assets.homeIcon,
                color: HexColor(ColorConstants.primaryColor),
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                Assets.shopIcon,
                color: HexColor(ColorConstants.primaryColor),
              ),
              label: 'Shop',
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                Assets.chatIcon,
                color: HexColor(ColorConstants.primaryColor),
              ),
              label: 'Messages',
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                Assets.coinIcon,
                color: HexColor(ColorConstants.primaryColor),
              ),
              label: 'Sell',
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                Assets.settingIcon,
                color: HexColor(ColorConstants.primaryColor),
              ),
              label: 'Settings',
            ),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: HexColor(ColorConstants.primaryColor),
          unselectedItemColor: Colors.grey,
          showSelectedLabels: true,
          showUnselectedLabels: true,
          onTap: _onItemTapped,
          selectedLabelStyle: AppThemes.black12TextStyle.copyWith(
            color: HexColor(ColorConstants.primaryColor),
            fontWeight: FontWeight.w700,
          ),
          unselectedLabelStyle: AppThemes.black12TextStyle.copyWith(
            color: HexColor(ColorConstants.primaryColor),
            fontWeight: FontWeight.w700,
          ),
        ),
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
        style: AppThemes.white26TextStyle.copyWith(
          color: HexColor(ColorConstants.primaryColor),
          fontWeight: FontWeight.w700,
        ),
      ),
    );
  }
}

class MessagePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Message Page',
        style: AppThemes.white26TextStyle.copyWith(
          color: HexColor(ColorConstants.primaryColor),
          fontWeight: FontWeight.w700,
        ),
      ),
    );
  }
}

class SellPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Sell Page',
        style: AppThemes.white26TextStyle.copyWith(
          color: HexColor(ColorConstants.primaryColor),
          fontWeight: FontWeight.w700,
        ),
      ),
    );
  }
}

class SettingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Settings Page',
        style: AppThemes.white26TextStyle.copyWith(
          color: HexColor(ColorConstants.primaryColor),
          fontWeight: FontWeight.w700,
        ),
      ),
    );
  }
}
