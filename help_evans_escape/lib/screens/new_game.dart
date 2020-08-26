import 'package:flutter/material.dart';
import 'package:help_evans_escape/configs/palette.dart';
import 'package:help_evans_escape/screens/screen.dart';

class NewGameInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Center(
        child: Text(
          "Evans is Safe!",
          style: const TextStyle(
            color: Palette.scaffold,
            fontSize: 30.0,
            fontWeight: FontWeight.bold,
            letterSpacing: 2,
            fontFamily: 'Pacifico',
          ),
        ),
      ),
      backgroundColor: Palette.lightBlue,
      content: NewGamePrompt(),
    );
  }
}
