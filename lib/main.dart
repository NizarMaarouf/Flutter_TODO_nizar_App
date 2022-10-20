// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_todo_nizar_app/Pages/AddTasks.dart';

import 'package:flutter_todo_nizar_app/Pages/TodoList.dart';

import 'package:google_fonts/google_fonts.dart';

void main() {
  GoogleFonts.config.allowRuntimeFetching = false;
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        "/addtask": (context) =>  AddTasks(),
        "/todo": (context) => const MyApp(),
      },
      home: ToDoApp(),
    );
  }
}

class ToDoApp extends StatefulWidget {
  const ToDoApp({super.key});
  

  @override
  State<ToDoApp> createState() => _ToDoAppState();
}

class Task {
  String title;
  bool status;
  Task({
    required this.title,
    required this.status,
  });
}

List allTasks = [
  Task(title: "Publish video", status: false),
  Task(title: "Laugh louder", status: true),
  Task(title: "GEM", status: true),
  Task(title: "call mom", status: false),
  //  Task(title: "call dad", status: false),
];

  final myController = TextEditingController();
  addnewTask() {

  allTasks.add(
    Task(title:myController.text, status: false));
}



class _ToDoAppState extends State<ToDoApp> {



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(58, 66, 86, 0.7),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color.fromRGBO(58, 66, 86, 1),
        title: Text(
          "TO DO APP",
          style: TextStyle(
            fontSize: 33,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            // ToDoList(),
            ...allTasks.map((item) => ToDoList(
                  vartitle: item.title,
                  donORnot: item.status,
                )),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          Navigator.pushNamed(context, "/addtask");
        },
      ),
    );
  }
}
