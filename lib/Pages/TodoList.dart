// ignore_for_file: prefer_const_constructors, sort_child_properties_last

import 'package:flutter/material.dart';

class ToDoList extends StatelessWidget {
  final String vartitle;
  final bool donORnot;
  const ToDoList({Key? key, required this.vartitle, required this.donORnot})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return FractionallySizedBox(
      widthFactor: 0.9,
      child: Container(
        margin: EdgeInsets.all(10),
        padding: EdgeInsets.all(10.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            Text(
              vartitle,
              style: TextStyle(
                  color: Colors.white, fontFamily: 'Oswald', fontSize: 20),
            ),
            donORnot == true
                ? Icon(Icons.check, size: 30, color: Colors.green)
                : Icon(Icons.close, size: 30, color: Colors.red)
          ],
        ),
        decoration: BoxDecoration(
          color: Color.fromRGBO(209, 224, 224, 0.2),
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}
