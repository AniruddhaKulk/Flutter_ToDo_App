import 'package:flutter/material.dart';
import 'package:todo_app/views/task_screen.dart';

void main() => runApp(ToDoApp());


class ToDoApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: TasksScreen(),
    );
  }
}

