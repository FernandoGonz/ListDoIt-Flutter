import 'package:flutter/cupertino.dart';
import 'task.dart';
import 'dart:collection';

class TaskData extends ChangeNotifier{

  List<Task> _tasks = [
    Task(name: 'Buy eggs.'),
    Task(name: 'Buy some water.'),
    Task(name: 'Go to the gym.'),
  ];

  // in this kind of list the method add is not supported
  UnmodifiableListView<Task> get tasks {
    return UnmodifiableListView(_tasks);
  }

  // getter
  int get taskCount {
    return _tasks.length;
  }

  void addNewTask(String newTask) {
    _tasks.add(Task(name: newTask));
    notifyListeners();
  }

  void deleteTask(Task task) {
    _tasks.remove(task);
    notifyListeners();
  }

  void updateDoneTask(Task task) {
    task.toggleDone();
    notifyListeners();
  }

}
