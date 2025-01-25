import 'package:get/get.dart';

class MyState extends GetxController {
  var questions = [
    {
      "Question": "What is flutter?",
      "Answer": ["Framework", "Database", "Server", "Program"],
      "Correct": 0
    },
    {
      "Question": "How many days in a week?",
      "Answer": ["10", "5", "9", "7"],
      "Correct": 3
    },
    {
      "Question": "How many weeks in a month?",
      "Answer": ["10", "5", "4", "7"],
      "Correct": 2
    },
  ];
}
