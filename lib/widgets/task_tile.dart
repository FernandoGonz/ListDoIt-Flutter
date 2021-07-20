import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TaskCheckBox extends StatelessWidget {

  final bool isDone;
  final String name;
  final VoidCallback toggleDone;

  TaskCheckBox({required this.isDone, required this.name, required this.toggleDone});

  @override
  Widget build(BuildContext context) {
    return CheckboxListTile(
      title: Text(
        name,
        style: TextStyle(
          decoration: isDone
              ? TextDecoration.lineThrough
              : null,
        ),
      ),
      secondary: Icon(Icons.ac_unit),
      activeColor: Colors.lightBlueAccent,
      value: isDone,
      onChanged: (newValue) {
        toggleDone();
      },
    );
  }
}
