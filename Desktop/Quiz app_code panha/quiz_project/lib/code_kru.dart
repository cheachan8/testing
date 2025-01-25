import 'package:flutter/material.dart';
import 'package:get/get.dart';
void main() {
  Get.put(MyState());
  runApp(GetMaterialApp(
    getPages: [
      GetPage(name: '/quiz', page: () => QuizScreen()),
    ],
    initialRoute: '/quiz',
  ));
}
class MyState extends GetxController {
  var questions = [
    {
      "question": "What is flutter",
      "answers": ["a framework", "a language", "a program", "a database"],
      "correctAnswer": 0
    },
    {
      "question": "What is java",
      "answers": ["a framework", "a language", "a program", "a database"],
      "correctAnswer": 0
    },
    {
      "question": "what is dart",
      "answers": ["a framework", "a language", "a program", "a database"],
      "correctAnswer": 0
    },
  ];
}

class QuizScreen extends StatefulWidget {
  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  int currentQuestion = 0;
  @override
  Widget build(BuildContext context) {
    var q = Get.find<MyState>().questions;
    return Scaffold(
        appBar: AppBar(
          title: Text("Quizz App"),
        ),
        body: Column(
          children: [
            Text("${currentQuestion + 1}/${q.length}"),
            Text(q[currentQuestion]['question'].toString()),
            Expanded(
              child: ListView.builder(
                itemCount: (q[currentQuestion]['answers'] as List).length,
                itemBuilder: (context, index) {
                  List answers = q[currentQuestion]['answers'] as List;
                  return GestureDetector(
                    onTap: () {
                      var correctAnswer =
                          q[currentQuestion]['correctAnswer'] as int;
                      if (correctAnswer == index) {
                        print('correct');
                      } else {
                        print('incorect');
                      }
                    },
                    child: Text(answers[index]),
                  );
                },
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    currentQuestion++;
                  });
                  print(currentQuestion);
                },
                child: Text("Next")),
          ],
        ));
  }
}
