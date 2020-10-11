import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {

  final String taskName;
  final bool isCompleted;
  final Function toggleCallback;

  TaskTile({this.taskName, this.isCompleted, this.toggleCallback});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        taskName,
        style: TextStyle(
            decoration:
                isCompleted ? TextDecoration.lineThrough : TextDecoration.none),
      ),
      trailing: Checkbox(
        activeColor: Colors.teal,
        value: isCompleted,
        onChanged: toggleCallback,
      ),
    );
  }
}
