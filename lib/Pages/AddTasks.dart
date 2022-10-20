// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_todo_nizar_app/main.dart';

class AddTasks extends StatelessWidget {
   const AddTasks({super.key});


 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SizedBox(
        width: double.infinity,
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                padding: EdgeInsets.symmetric(vertical: 5, horizontal: 9),
                child: TextField(
                  controller: myController,
                  decoration: InputDecoration(
                      // fillColor:Colors.blue,
                      // iconColor: Colors.blue,
                      labelText: "new Todo ",
                      labelStyle: TextStyle(color: Colors.blue)),
                  maxLength: 20,
                ),
              ),
              TextButton(
                onPressed: () {
                  addnewTask();
                  Navigator.pushNamed(context, "/todo");
                },
                style: ButtonStyle(),
                child: Text(
                  "Add",
                  style: TextStyle(fontSize: 20, color: Colors.blue),
                ),
              ),
            ]),
      ),
    );
  }
}



//  Navigator.pushNamed(context, "/todo");
