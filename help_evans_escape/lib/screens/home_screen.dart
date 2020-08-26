import 'package:flutter/material.dart';
import 'package:help_evans_escape/configs/config.dart';
import 'package:help_evans_escape/screens/screen.dart';
import 'package:maze/maze.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var _options = ["Easy", "Medium", "Hard"];
  var dropColor = {
    "Easy": Palette.easy,
    "Medium": Palette.medium,
    "Hard": Palette.hard,
  };

  var currentSelected = "Easy";

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
      Navigator.pushReplacement(
        context,
        SizeRoute(page: HomeScreen()),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
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
                            "Difficulty : ",
                            style: TextStyle(
                                color: Palette.textColor,
                                fontSize: 30.0,
                                fontWeight: FontWeight.bold,
                                letterSpacing: -2,
                                fontFamily: 'Alata'),
                          ),
                          DropdownButton<String>(
                            items: _options.map((String dropDownStringItem) {
                              return DropdownMenuItem<String>(
                                value: dropDownStringItem,
                                child: Text(
                                  "  " + dropDownStringItem,
                                  style: TextStyle(
                                    color: dropColor[dropDownStringItem],
                                    fontSize: 28.0,
                                    //fontWeight: FontWeight.bold,
                                    letterSpacing: -2,
                                    fontFamily: 'Pacifico',
                                  ),
                                ),
                              );
                            }).toList(),
                            onChanged: (String newValueSelected) {
                              setState(() {
                                this.currentSelected = newValueSelected;
                                if (currentSelected == "Medium") {
                                  Navigator.pushReplacement(
                                    context,
                                    SizeRoute(page: MediumMode()),
                                  );
                                } else if (currentSelected == "Hard") {
                                  Navigator.pushReplacement(
                                    context,
                                    SizeRoute(page: HardMode()),
                                  );
                                }
                              });
                            },
                            value: currentSelected,
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 20,
                      child: Maze(
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
