import 'package:flutter/material.dart';

class CardScreen extends StatefulWidget {
  static const String id = 'chef_card_screen';
  @override
  _ChefCardState createState() => _ChefCardState();
}

class _ChefCardState extends State<CardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Hero(
            tag: 'hello',
            child: Text('HELLO'),
          ),
        ),
      ),
    );
  }
}
