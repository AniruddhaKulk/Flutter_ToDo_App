import 'package:flutter/material.dart';
import 'package:todo_app/model/task_data.dart';
import 'package:todo_app/widgets/task_tile.dart';
import 'package:provider/provider.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, data, child) {
        return ListView.builder(
          itemBuilder: (context, index) {
            final task = data.tasks[index];
            return TaskTile(
                taskName: task.taskName,
                isCompleted:
                task.isCompleted,
                toggleCallback: (bool isChecked) {
                    data.toggleCompletion(task);
                });
          },
          itemCount: data.numberOfTasks,
        );
      },
    );
  }
}
