import 'package:flutter/material.dart';
import 'package:help_evans_escape/configs/palette.dart';
import 'package:help_evans_escape/screens/new_game_prompt.dart';

class NewGameInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Center(
        child: Text(
          "Evans is Safe!",
          style: const TextStyle(
            color: Palette.textColor,
            fontSize: 30.0,
            fontWeight: FontWeight.bold,
            letterSpacing: -2,
            fontFamily: 'Domine',
          ),
        ),
      ),
      content: NewGamePrompt(),
    );
  }
}
