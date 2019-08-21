import 'package:flutter/material.dart';
import 'package:test_hero/screens/card_screen.dart';
import 'package:test_hero/screens/home_screen.dart';
import 'package:test_hero/screens/select_screen.dart';

Future main() async {
  runApp(SelectCardApp());
}

class SelectCardApp extends StatefulWidget {
  @override
  _SelectCardAppState createState() => _SelectCardAppState();
}

class _SelectCardAppState extends State<SelectCardApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: HomeScreen.id,
      routes: {
        HomeScreen.id: (context) => HomeScreen(),
        CardScreen.id: (context) => CardScreen(),
        SelectScreen.id: (context) => SelectScreen(),
      },
    );
  }
}
