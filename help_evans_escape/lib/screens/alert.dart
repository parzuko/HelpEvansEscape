import 'package:flutter/material.dart';
import 'package:help_evans_escape/configs/palette.dart';
import 'package:help_evans_escape/screens/info.dart';

class InfoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Palette.lightPink,
      title: Center(
        child: Text(
          "About",
          style: const TextStyle(
            color: Palette.scaffold,
            fontSize: 30.0,
            fontWeight: FontWeight.bold,
            letterSpacing: 4,
            fontFamily: 'Pacifico',
          ),
        ),
      ),
      content: IntroScreen(),
    );
  }
}
