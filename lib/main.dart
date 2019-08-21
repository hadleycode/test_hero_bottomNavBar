import 'package:flutter/material.dart';
import 'package:test_hero/screens/card_screen.dart';
import 'package:test_hero/screens/select_screen.dart';

Future main() async {
  runApp(SelectCardApp());
}

class SelectCardApp extends StatefulWidget {
  @override
  _SelectCardAppState createState() => _SelectCardAppState();
}

class _SelectCardAppState extends State<SelectCardApp> {
  final navigatorKey = GlobalKey<NavigatorState>();

  final screenRouteFactories = {
    '/': () => MaterialPageRoute(builder: (context) => CardScreen()),
    "Select": () => MaterialPageRoute(builder: (context) => SelectScreen()),
  };

  @override
  Widget build(BuildContext context) => MaterialApp(
        home: Scaffold(
          body: _buildBody(),
          bottomNavigationBar: _buildBottomNavigationBar(context),
        ),
      );

  Widget _buildBody() => MaterialApp(
      navigatorKey: navigatorKey,
      onGenerateRoute: (route) => screenRouteFactories[route.name]());

  Widget _buildBottomNavigationBar(context) => BottomNavigationBar(
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey,
        type: BottomNavigationBarType.shifting,
        items: [
          _buildBottomNavigationBarItem(
              "Card", Icons.text_fields, Colors.lightBlue),
          _buildBottomNavigationBarItem(
              "Select", Icons.settings, Colors.blueAccent),
        ],
        onTap: (routeIndex) => navigatorKey.currentState
            .pushNamed(screenRouteFactories.keys.toList()[routeIndex]),
      );

  _buildBottomNavigationBarItem(name, icon, colour) => BottomNavigationBarItem(
      icon: Icon(icon), title: Text(name), backgroundColor: colour);
}
