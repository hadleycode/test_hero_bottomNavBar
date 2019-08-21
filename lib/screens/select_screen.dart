import 'package:flutter/material.dart';

class SelectScreen extends StatefulWidget {
  static const String id = 'select_allergies_screen';
  @override
  _SelectScreenState createState() => _SelectScreenState();
}

class _SelectScreenState extends State<SelectScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Hero(
          tag: 'hello',
          child: Text('HELLO'),
        ),
      ),
    );
  }
}
