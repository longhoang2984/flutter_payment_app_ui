import 'package:flutter/material.dart';
import 'package:payment_app/history/history_page.dart';
import 'package:payment_app/home/homepage.dart';
import 'package:payment_app/profile/profile_page.dart';
import 'package:payment_app/settings/settings_page.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'Poppins',
      ),
      home: new MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _curIndex = 0;

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _curIndex,
//          iconSize: 22.0,
          onTap: (index) {
            _curIndex = index;
            setState(() {});
          },
          items: [
            BottomNavigationBarItem(
              icon: Image.asset('images/ico_home.png'),
              label: 'Home',
              activeIcon: Image.asset('images/ico_home_selected.png'),
            ),
            BottomNavigationBarItem(
              icon: Image.asset('images/ico_history.png'),
              label: 'History',
              activeIcon: Image.asset('images/ico_history_selected.png'),
            ),
            BottomNavigationBarItem(
              icon: Image.asset('images/ico_profile.png'),
              label: 'Profile',
              activeIcon: Image.asset('images/ico_profile_selected.png'),
            ),
            BottomNavigationBarItem(
              icon: Image.asset('images/ico_settings.png'),
              label: 'Settings',
              activeIcon: Image.asset('images/ico_settings_selected.png'),
            ),
          ]),
      body: new Center(
        child: _getWidget(),
      ),
    );
  }

  Widget _getWidget() {
    switch (_curIndex) {
      case 0:
        return Container(
          color: Colors.red,
          child: HomePage(),
        );
      case 1:
        return Container(
          child: HistoryPage(),
        );
      case 2:
        return Container(
          child: ProfilePage(),
        );
      default:
        return Container(
          child: SettingsPage(),
        );
    }
  }
}
