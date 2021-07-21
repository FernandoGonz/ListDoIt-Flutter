import 'package:flutter/material.dart';
import 'task_tile.dart';
import 'package:provider/provider.dart';
import '../models/task_data.dart';

class TaskList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // return ListView.builder(itemBuilder: (context, index) {
    //   return TaskCheckBox(
    //     name: Provider.of<TaskData>(context).tasks[index].name,
    //     isDone: Provider.of<TaskData>(context).tasks[index].isDone,
    //     toggleDone: () {
    //       // setState(() {
    //       //   Provider.of<TaskData>(context).tasks[index].toggleDone();
    //       // });
    //     },
    //   );
    // },
    //   itemCount: Provider.of<TaskData>(context).tasks.length,
    // );

    // other way to avoid write Provider.of<TaskData>(context)

    return Consumer<TaskData>(
      builder: (context, taskData, child) {
        return ListView.builder(
          itemBuilder: (context, index) {
            final task = taskData.tasks[index];
            return GestureDetector(
              onLongPress: () {
                taskData.deleteTask(task);
              },
              child: TaskCheckBox(
                name: task.name,
                isDone: task.isDone,
                toggleDone: () {
                  taskData.updateDoneTask(task);
                },
              ),
            );
          },
          itemCount: taskData.taskCount,
        );
      },
    );
  }
}
