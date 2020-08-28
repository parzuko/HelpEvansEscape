import 'package:flutter/material.dart';
import 'package:help_evans_escape/configs/palette.dart';
import 'package:introduction_screen/introduction_screen.dart';

class IntroScreen extends StatelessWidget {
  final pageDecoration = PageDecoration(
    titleTextStyle: TextStyle(
      color: Palette.scaffold,
      fontSize: 18.0,
      fontWeight: FontWeight.bold,
      letterSpacing: 1,
      fontFamily: 'Alata',
    ),
    contentPadding: const EdgeInsets.all(50),
  );

  List<PageViewModel> getPages() {
    return [
      PageViewModel(
        image: Center(
          child: Image.asset(
            "assets/policeman.png",
            height: 275.0,
          ),
        ),
        title: "McLeary's blunders enabled Evans to escape! ",
        body: "",
        // footer: Text("Hello"),
        decoration: pageDecoration,
      ),
      PageViewModel(
        image: Center(
          child: Image.asset(
            "assets/young.png",
            height: 275.0,
          ),
        ),
        title: "The Governer is extremely furious.",
        body: "",
        // footer: Text("Hello"),
        decoration: pageDecoration,
      ),
      PageViewModel(
        image: Center(
          child: Image.asset(
            "assets/jail.png",
            height: 275.0,
          ),
        ),
        title: "The entire Police is after Evans the Break",
        body: "",
        // footer: Text("Hello"),
        decoration: pageDecoration,
      ),
      PageViewModel(
        image: Center(
          child: Image.asset(
            "assets/handcuffs.png",
            height: 275.0,
          ),
        ),
        title: "Help Evans Esacpe & get to his runaway van!",
        body: "",
        // footer: Text("Hello"),
        decoration: pageDecoration,
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    final double screenWidth = MediaQuery.of(context).size.width;
    return Container(
      height: screenHeight / 3,
      width: screenWidth,
      child: IntroductionScreen(
        curve: Curves.fastOutSlowIn,
        dotsDecorator: DotsDecorator(
          size: const Size.square(10.0),
          activeSize: const Size(20.0, 10.0),
          activeColor: Palette.scaffold,
          color: Palette.textColor,
          spacing: const EdgeInsets.symmetric(horizontal: 3.0),
          activeShape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(25.0)),
        ),
        skip: Text(
          "Skip",
          style: TextStyle(
            color: Palette.textColor,
            fontFamily: "Alata",
            fontSize: 14,
          ),
        ),
        showSkipButton: true,
        next: const Icon(Icons.navigate_next),
        showNextButton: true,
        done: Text(
          "Start",
          style: TextStyle(
            color: Palette.textColor,
            fontFamily: "Alata",
            fontSize: 14,
          ),
        ),
        globalBackgroundColor: Palette.lightPink,
        pages: getPages(),
        onDone: () {
          // Navigator.push(
          //   context,
          //   MaterialPageRoute(builder: (context) => HomeScreen()),
          // );
          Navigator.pop(context);
        },
      ),
    );
  }
}
