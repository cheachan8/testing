import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:quiz_project/data.dart';

void main() {
  Get.put(MyState());
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Quiz(),
  ));
}

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  int currently = 0;

  @override
  Widget build(BuildContext context) {
    var q = Get.find<MyState>().questions;
    var a = q[currently]["Answer"] as List;
    var c = q[currently]["Correct"] as int;
    return Scaffold(
      body: Center(
        child: Container(
          child: Column(
            children: [
              SizedBox(height: 30),
              Text(
                'Quiz',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 30),
              ),
              SizedBox(height: 30),
              Text('${currently + 1}/${q.length}'),
              SizedBox(height: 30),
              Text(q[currently]['Question'].toString()),
              SizedBox(height: 30),
              for (int i = 0; i < a.length; i++)
                Container(
                    alignment: Alignment.topLeft,
                    padding: EdgeInsets.only(left: 20),
                    child: GestureDetector(
                        onTap: () {
                          if (c == i) {
                            print("Correct answer! ");
                          } else {
                            print("Incorrect answer!");
                          }
                        },
                        child: Text("${i + 1}.${a[i]}"))),
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      currently++;
                    });
                  },
                  child: Text("Next Question"))
            ],
          ),
        ),
      ),
    );
  }
}
