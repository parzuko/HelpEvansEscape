import 'package:flutter/material.dart';
import 'package:help_evans_escape/screens/screen.dart';
import 'configs/palette.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'HelpEvansEscape',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.amber,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        scaffoldBackgroundColor: Palette.lightPink,
      ),
      home: HomeScreen(),
      routes: {
        "/easy": (_) => HomeScreen(),
        "/medium": (_) => MediumMode(),
        "/hard": (_) => HardMode(),
      },
    );
  }
}
