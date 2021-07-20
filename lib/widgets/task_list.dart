import 'package:flutter/material.dart';
import 'task_tile.dart';
import '../models/task.dart';

class TaskList extends StatefulWidget {

  @override
  _TaskListState createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> {

  List<Task> tasks = [
    Task(name: 'Buy milk.'),
    Task(name: 'Buy food to Suryganso'),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemBuilder: (context, index) {
      return TaskCheckBox(
        name: tasks[index].name,
        isDone: tasks[index].isDone,
        toggleDone: () {
          setState(() {
            tasks[index].toggleDone();
          });
        },
      );
    },
    itemCount: tasks.length,
    );
  }
}

