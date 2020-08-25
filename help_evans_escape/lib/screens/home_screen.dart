import 'dart:math';
import 'package:help_evans_escape/configs/restart.dart';
import 'package:flutter/material.dart';
import 'package:help_evans_escape/configs/palette.dart';
import 'package:maze/maze.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  restart() {
    HotRestartController.performHotRestart(context);
  }

  @override
  Widget build(BuildContext context) {
    final modes = {
      "easy": Maze(
        player: MazeItem(
          "assets/evan.jpg",
          ImageType.asset,
        ),
        columns: 10,
        rows: 20,
        wallThickness: 5,
        wallColor: Palette.easy,
        finish: MazeItem(
          "assets/trophy.jpg",
          ImageType.asset,
        ),
        onFinish: () => restart(),
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
        onFinish: () => restart(),
      ),
    };
    final double screenHeight = MediaQuery.of(context).size.height;
    final double screenWidth = MediaQuery.of(context).size.width;
    final double topPadding = (screenHeight / 15);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Palette.scaffold,
        elevation: 0.0,
        title: Text(
          "Help Evans Escape !",
          style: const TextStyle(
            color: Colors.black,
            fontSize: 30.0,
            fontWeight: FontWeight.bold,
            letterSpacing: -2,
            fontFamily: 'Domine',
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.more_horiz),
          )
        ],
      ),
      body: Column(
        children: [
          Expanded(
            flex: 1,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Difficulty: ",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 25.0,
                      fontWeight: FontWeight.bold,
                      letterSpacing: -2,
                      fontFamily: 'Domine'),
                ),
                Text(
                  "Medium",
                  style: TextStyle(
                    color: Palette.medium,
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold,
                    letterSpacing: -2,
                    fontFamily: 'Domine',
                  ),
                )
              ],
            ),
          ),
          Expanded(
            flex: 22,
            child: Container(
              padding: EdgeInsets.fromLTRB(0, topPadding, 0, 0),
              width: screenWidth,
              height: screenHeight,
              color: Colors.transparent,
              child: Container(
                decoration: BoxDecoration(
                  color: Palette.iconBack,
                  borderRadius: BorderRadius.only(
                    topLeft: const Radius.circular(60.0),
                    //topRight: const Radius.circular(40.0),
                  ),
                ),
                //child: Text("Hello"),
                child: modes["Medium"],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
