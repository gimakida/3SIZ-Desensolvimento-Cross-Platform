import 'package:flutter/material.dart';
import 'package:myapp/domain/person.dart';
import 'package:myapp/domain/student.dart';
import 'package:myapp/domain/teacher.dart';

class HomeScreen extends StatefulWidget {
  final String title;
  const HomeScreen({super.key, required this.title});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
late Person person;
late Teacher teacher;
late Student student;

@override
  void initState() {
   person = Person(name: "Giovanna", age:25, height:1.61);
   teacher = Teacher(name: "João", age:30, height:1.81);
   student = Student(name: "Kat", age:21, height:1.71);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.title)),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Informações da pessoa", 
          style: TextStyle(fontWeight:FontWeight.bold)),
          Text(person.presenter()),
          Text("Informações do professor"),
          Text(teacher.presenter()),
          Text("Informações do aluno"),
          Text(student.presenter()),
        ],
      ),
    );
  }
}