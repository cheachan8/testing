import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quizs/controller.dart';

class Home extends StatefulWidget {
  @override
  State<Home> createState() => HomeState();
}

class HomeState extends State<Home> {
  final Controller controller = Get.put(Controller());

  final TextEditingController nameController = TextEditingController();
  @override
  Widget build(BuildContext context) {
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
        ),
        body: Container(
          width: double.infinity,
          height: double.infinity,
          child: Container(
            padding: EdgeInsets.all(16.0),
            decoration:
                BoxDecoration(color: const Color.fromARGB(255, 67, 118, 159)),
            child: Column(
              children: [
                SizedBox(
                  height: 30,
                ),
                Column(
                  children: [
                    Text(
                      '',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 30),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    TextField(
                      decoration: const InputDecoration(
                        labelText: 'Input your name',
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Get.toNamed("/EnterSceen");
                      },
                      child: Text('Start'),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),

        // bottomNavigationBarItem

        bottomNavigationBar: BottomNavigationBar(
          items: [
            const BottomNavigationBarItem(
              icon: Icon(Icons.menu),
              label: 'Menu',
            ),
            BottomNavigationBarItem(
              icon: Stack(
                clipBehavior: Clip.none,
                children: [
                  const Icon(Icons.home),
                  Positioned(
                    top: -5,
                    right: -10,
                    child: Container(
                      padding: const EdgeInsets.all(4),
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                      ),
                    ),
                  ),
                ],
              ),
              label: 'Home',
            ),
            const BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: 'Setting',
            ),
          ],
        ),
      )),
    );
  }
}
