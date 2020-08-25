import 'package:help_evans_escape/configs/restart.dart';
import 'package:flutter/material.dart';
import 'package:help_evans_escape/configs/palette.dart';
import 'package:help_evans_escape/screens/alert.dart';
import 'package:help_evans_escape/screens/new_game.dart';

import 'package:maze/maze.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  restart() {
    HotRestartController.performHotRestart(context);
  }

  void getInfo() async {
    await showDialog(
        context: context,
        builder: (context) {
          return Container(
            child: InfoPage(),
          );
        });
  }

  void newGame() async {
    var shouldRestart = await showDialog(
        context: context,
        builder: (context) {
          return Container(
            child: NewGameInfo(),
          );
        });

    if (shouldRestart == 1) {
      setState(() {});
      restart();
    }
  }

  @override
  Widget build(BuildContext context) {
    final modes = {
      "Easy": Maze(
        player: MazeItem(
          "assets/exercise.png",
          ImageType.asset,
        ),
        columns: 5,
        rows: 10,
        wallThickness: 5,
        wallColor: Palette.easy,
        finish: MazeItem(
          "assets/jail.png",
          ImageType.asset,
        ),
        onFinish: () {
          newGame();
        },
      ),
      "Medium": Maze(
        player: MazeItem(
          "assets/exercise.png",
          ImageType.asset,
        ),
        columns: 10,
        rows: 20,
        wallThickness: 5,
        wallColor: Palette.medium,
        finish: MazeItem(
          "assets/jail.png",
          ImageType.asset,
        ),
        onFinish: () => newGame(),
      ),
      "Hard": Maze(
        player: MazeItem(
          "assets/exercise.png",
          ImageType.asset,
        ),
        columns: 20,
        rows: 30,
        wallThickness: 5,
        wallColor: Palette.hard,
        finish: MazeItem(
          "assets/jail.png",
          ImageType.asset,
        ),
        onFinish: () => newGame(),
      ),
    };
    final double screenHeight = MediaQuery.of(context).size.height;
    final double screenWidth = MediaQuery.of(context).size.width;
    final double topPadding = (screenHeight / 20);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Palette.lightPink,
        shadowColor: Palette.lightPink,
        elevation: 0.0,
        centerTitle: true,
        title: Text(
          "Help Evans Escape !",
          style: const TextStyle(
            color: Palette.scaffold,
            fontSize: 37.0,
            //fontWeight: FontWeight.bold,
            //letterSpacing: -2,
            fontFamily: "Alata",
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              getInfo();
            },
            icon: Icon(
              Icons.info_outline,
            ),
            iconSize: 30.0,
            color: Palette.scaffold,
          )
        ],
      ),
      body: Column(
        children: [
          Expanded(
            flex: 22,
            child: Container(
              padding: EdgeInsets.fromLTRB(0, topPadding, 0, 0),
              width: screenWidth,
              height: screenHeight,
              color: Colors.transparent,
              child: Container(
                decoration: BoxDecoration(
                  color: Palette.scaffold,
                  borderRadius: BorderRadius.only(
                    topLeft: const Radius.circular(50.0),
                    topRight: const Radius.circular(50.0),
                  ),
                ),
                //child: Text("Hello"),
                child: Column(
                  children: [
                    Expanded(
                      flex: 2,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Difficulty: ",
                            style: TextStyle(
                                color: Palette.textColor,
                                fontSize: 30.0,
                                fontWeight: FontWeight.bold,
                                letterSpacing: -2,
                                fontFamily: 'Alata'),
                          ),
                          Text(
                            "Easy",
                            style: TextStyle(
                              color: Palette.easy,
                              fontSize: 28.0,
                              //fontWeight: FontWeight.bold,
                              letterSpacing: -2,
                              fontFamily: 'Pacifico',
                            ),
                          )
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 20,
                      child: modes["Easy"],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
