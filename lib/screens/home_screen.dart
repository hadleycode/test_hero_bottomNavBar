import 'package:flutter/material.dart';
import 'package:test_hero/screens/select_screen.dart';

import 'card_screen.dart';

class HomeScreen extends StatefulWidget {
  static const String id = 'home_screen';

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;
  final List<Widget> _children = [CardScreen(), SelectScreen()];

  @override
  void initState() {
    super.initState();
  }

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
          onTap: onTabTapped,
          currentIndex: _currentIndex,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.grey,
          type: BottomNavigationBarType.shifting,
          items: [
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
    );
  }
}
