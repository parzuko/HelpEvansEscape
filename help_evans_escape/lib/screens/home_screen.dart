import 'package:flutter/material.dart';
import 'package:help_evans_escape/configs/palette.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    final double screenWidth = MediaQuery.of(context).size.width;
    final double topPadding = (screenHeight / 9);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Palette.scaffold,
        elevation: 0.0,
        title: Text(
          "Help Evans Escape !",
        ),
      ),
      body: Container(
        padding: EdgeInsets.fromLTRB(0, topPadding, 0, 0),
        width: screenWidth,
        height: screenHeight,
        color: Colors.transparent,
        child: Container(
          decoration: BoxDecoration(
            color: Palette.iconBack,
            borderRadius: BorderRadius.only(
              topLeft: const Radius.circular(60.0),
              //topRight: const Radius.circular(40.0),
            ),
          ),
          // child: ,
        ),
      ),
    );
  }
}
