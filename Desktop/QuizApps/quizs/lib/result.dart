import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
        home: SafeArea(
            child: Scaffold(
                appBar: AppBar(
      leading: IconButton(onPressed: () {}, icon: Icon(Icons.menu)),
      backgroundColor: Colors.blue,
      title: Text("Quiz App",
          style: TextStyle(
            fontSize: 30,
            color: Colors.red,
          )),
      actions: [IconButton(onPressed: () {}, icon: Icon(Icons.settings))],
      centerTitle: true,
    ))));
  }
}
