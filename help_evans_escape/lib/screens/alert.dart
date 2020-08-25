import 'package:flutter/material.dart';
import 'package:help_evans_escape/configs/palette.dart';
import 'package:help_evans_escape/screens/info.dart';

class InfoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Center(
        child: Text(
          "About",
          style: const TextStyle(
            color: Palette.textColor,
            fontSize: 30.0,
            fontWeight: FontWeight.bold,
            letterSpacing: -2,
            fontFamily: 'Domine',
          ),
        ),
      ),
      content: IntroScreen(),
    );
  }

  // void getInfo(BuildContext context) {
  //   var infoPage = AlertDialog(
  //     title: Text("Hello"),
  //     content: Text("Sliding Images"),
  //   );

  //   showInfo(
  //     context: context,
  //     builder: (BuildContext context) {
  //       return infoPage;
  //     },
  //   );
  // }
}
