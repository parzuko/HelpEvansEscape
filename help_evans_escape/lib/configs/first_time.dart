import 'package:flutter/material.dart';
import 'package:help_evans_escape/configs/config.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:help_evans_escape/screens/screen.dart';

class LandingPage extends StatelessWidget {
  final pageDecoration = PageDecoration(
    titleTextStyle: TextStyle(
      color: Colors.greenAccent,
      fontSize: 25.0,
      fontWeight: FontWeight.bold,
      letterSpacing: 1,
      fontFamily: 'Pacifico',
    ),
    bodyTextStyle: TextStyle(
      color: Palette.scaffold,
      fontSize: 17.0,
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
        title: "Stephens Stupidity",
        body:
            "Stephens was given the responsibility of ensuring the utmost security of \nJames Rodrick Evans. \nHe however, was not fit for the task and personally escorted Evans out of the prison gates. ",
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
        title: "Good For a Giggle Gullible Governor",
        body:
            "The Governer was decieved again and again by Evans.\n Despite having a hunch on the sanctity of the phone calls, he did not do anything. ",
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
        title: "Evans the Break",
        body:
            "After excaping from the prison, pretending to be McLeary, the police finally caught up with Evans. ",
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
        title: "Help Evans Esacpe",
        body:
            "Help Evans get to his runaway van and fool the Governer and his army of officers again!",
        // footer: Text("Hello"),
        decoration: pageDecoration,
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IntroductionScreen(
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
        globalBackgroundColor: Palette.lightBlue,
        pages: getPages(),
        onDone: () {
          Navigator.pushReplacement(
            context,
            SizeRoute(page: HomeScreen()),
          );
        },
      ),
    );
  }
}
