import 'package:flutter/material.dart';
import 'package:help_evans_escape/configs/first_time.dart';
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
      home: LandingPage(),
    );
  }
}
