import 'package:flutter/material.dart';
import 'package:help_evans_escape/configs/palette.dart';
import 'package:introduction_screen/introduction_screen.dart';

class NewGamePrompt extends StatelessWidget {
  final pageDecoration = PageDecoration(
    titleTextStyle: TextStyle(
      color: Palette.scaffold,
      fontSize: 18.0,
      fontWeight: FontWeight.bold,
      letterSpacing: -1,
      fontFamily: 'Alata',
    ),
    contentPadding: const EdgeInsets.all(50),
  );

  List<PageViewModel> getPages() {
    return [
      PageViewModel(
        image: Center(
          child: Image.asset(
            "assets/exercise.png",
            height: 275.0,
          ),
        ),
        title: "Woohooo🎉🎉 \nThe Governer was fooled again !",
        body: "",
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
          activeColor: Palette.textColor,
          color: Palette.textColor,
          spacing: const EdgeInsets.symmetric(horizontal: 3.0),
          activeShape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(25.0)),
        ),
        done: Text(
          "New Game",
          style: const TextStyle(
            color: Palette.scaffold,
            fontFamily: "Pacifico",
            //fontWeight: FontWeight,
            fontSize: 16,
            letterSpacing: -1,
          ),
        ),
        globalBackgroundColor: Palette.lightBlue,
        pages: getPages(),
        onDone: () {
          Navigator.pop(context, 1);
        },
      ),
    );
  }
}
