import 'package:flutter/material.dart';
import 'package:help_evans_escape/configs/config.dart';
import 'package:help_evans_escape/configs/first_time.dart';
import 'package:splashscreen/splashscreen.dart';

class Splash extends StatefulWidget {
  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    return SplashScreen(
      title: Text(
        "Help Evans Escape !\n         The Game",
        style: const TextStyle(
          color: Palette.scaffold,
          fontSize: 37.0,
          //fontWeight: FontWeight.bold,
          //letterSpacing: -2,
          fontFamily: "Alata",
        ),
      ),
      seconds: 1,
      image: Image.asset("assets/lightblueevans.jpg"),
      backgroundColor: Palette.lightBlue,
      loaderColor: Palette.scaffold,
      photoSize: screenHeight / 4,
      navigateAfterSeconds: LandingPage(),
    );
  }
}
