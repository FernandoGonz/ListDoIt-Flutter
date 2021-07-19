import 'package:flutter/material.dart';
import 'task_tile.dart';

class TaskList extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Task(taskDescription: 'This is a task 1.'),
        Task(taskDescription: 'This is a task 2.'),
        Task(taskDescription: 'This is a task 3.'),
      ],
    );
  }
}

