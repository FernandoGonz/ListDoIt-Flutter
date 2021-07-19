import 'package:flutter/material.dart';

class Task extends StatelessWidget {

  final String taskDescription;
  bool isChecked = false;

  Task({required this.taskDescription});

  @override
  Widget build(BuildContext context) {
    return CheckboxListTile(
      title: Text(taskDescription),
      secondary: Icon(Icons.ac_unit),
      value: isChecked,
      onChanged: (bool? value) {
        isChecked = value!;
      },
    );
  }
}