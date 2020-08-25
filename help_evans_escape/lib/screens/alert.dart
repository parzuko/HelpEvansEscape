import 'package:flutter/material.dart';

class InfoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text("Hello"),
      content: Text("Bro"),
    );
  }

  // void getInfo(BuildContext context) {
  //   var infoPage = AlertDialog(
  //     title: Text("Hello"),
  //     content: Text("Sliding Images"),
  //   );

  //   showInfo(
  //     context: context,
  //     builder: (BuildContext context) {
  //       return infoPage;
  //     },
  //   );
  // }
}
