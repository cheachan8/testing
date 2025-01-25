import 'package:get/get.dart';

class Controller extends GetxController {
  var score = 0.obs;

  List<Map<String, dynamic>> question = [
    {
      'question': 'What is Flutter ?',
      'answer': ['Language', 'Framework', 'IDE', 'Tool'],
      'correct': 1,
    },
    {
      'question': 'What is Vscode?',
      'answer': ['A language', 'A framework', 'An IDE', 'A tool'],
      'correct': 2,
    },
    {
      'question': 'What is Html?',
      'answer': ['A language', 'A framework', 'An IDE', 'A tool'],
      'correct': 0,
    },
    {
      'question': 'What is C++?',
      'answer': ['A language', 'A framework', 'An IDE', 'A tool'],
      'correct': 0,
    },
    {
      'question': 'What is JAVA?',
      'answer': ['A language', 'A framework', 'An IDE', 'A tool'],
      'correct': 0,
    },
  ];
  void increaseScore() {
    score++;
  }

  void resetSore() {
    score.value = 0;
  }
}
