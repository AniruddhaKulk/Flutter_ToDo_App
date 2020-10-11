import 'package:flutter/material.dart';
import 'package:todo_app/model/task.dart';
import 'package:todo_app/widgets/task_tile.dart';

class TasksList extends StatefulWidget {

  @override
  _TasksListState createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {

  List<Task> tasks = [
    Task(taskName: 'Study Flutter', isCompleted: false),
    Task(taskName: 'Study Android', isCompleted: false),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemBuilder: (context, index){
      return TaskTile(taskName: tasks[index].taskName,
        isCompleted: tasks[index].isCompleted,
        toggleCallback: (bool isChecked){
          setState(() {
            tasks[index].toggleCompleted();
          });
        });
    },
    itemCount: tasks.length,);
  }
}