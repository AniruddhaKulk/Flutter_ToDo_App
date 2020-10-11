import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {

  final String taskName;
  final bool isCompleted;
  final Function toggleCallback;
  final Function longPressCallback;

  TaskTile(
      {this.taskName, this.isCompleted, this.toggleCallback, this.longPressCallback});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: longPressCallback,
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
