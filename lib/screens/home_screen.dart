import 'package:flutter/material.dart';
import 'package:test_hero/screens/select_screen.dart';
import 'package:flutter/cupertino.dart';
import 'card_screen.dart';

class HomeScreen extends StatefulWidget {
  static const String id = 'home_screen';

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
      tabBar: CupertinoTabBar(items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
            backgroundColor: Colors.blueAccent,
            icon: Icon(
              Icons.text_fields,
            ),
            title: Text('Chef Card')),
        BottomNavigationBarItem(
            backgroundColor: Colors.lightBlue,
            icon: Icon(
              Icons.settings,
            ),
            title: Text('Select Allergies')),
      ]),
      tabBuilder: (BuildContext context, int index) {
        assert(index >= 0 && index <= 1);
        switch (index) {
          case 0:
            return CupertinoTabView(
                builder: (BuildContext context) => CardScreen());
            break;
          case 1:
            return CupertinoTabView(
                builder: (BuildContext context) => SelectScreen());
            break;
        }
        return null;
      },
    );
  }
}
