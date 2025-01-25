import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Screen extends StatefulWidget {
  const Screen({super.key});

  @override
  State<Screen> createState() => _ScreenState();
}

class _ScreenState extends State<Screen> {
  final TextEditingController nameController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                    'Quiz App',
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
                      Get.toNamed('/Quiz');
                    },
                    child: Text('Next'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
