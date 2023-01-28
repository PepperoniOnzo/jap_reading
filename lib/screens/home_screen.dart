import 'package:flutter/material.dart';
import 'package:jap_reading/screens/widgets/touch_part.dart';
import 'package:jap_reading/screens/widgets/word_part.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: const <Widget>[TouchPart(), WordPart()]),
    );
  }
}
