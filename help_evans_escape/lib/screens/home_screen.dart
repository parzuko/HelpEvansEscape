import 'package:flutter/material.dart';
import 'package:help_evans_escape/configs/palette.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Palette.scaffold,
        elevation: 0.0,
        title: Text(
          "Help Evans Escape !",
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(0, 200, 0, 0),
        child: Container(
          height: 800,
          color: Palette.iconBack,
        ),
      ),
    );
  }
}
