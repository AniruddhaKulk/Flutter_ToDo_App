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
            return TaskTile(
                taskName: data.tasks[index].taskName,
                isCompleted:
                data.tasks[index].isCompleted,
                toggleCallback: (bool isChecked) {
                  /*setState(() {
              Provider.of<TaskData>(context).tasks[index].toggleCompleted();
            });*/
                });
          },
          itemCount: data.numberOfTasks,
        );
      },
    );
  }
}
