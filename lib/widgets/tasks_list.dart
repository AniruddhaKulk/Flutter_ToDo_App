import 'package:flutter/material.dart';
import 'package:todo_app/model/task.dart';
import 'package:todo_app/widgets/task_tile.dart';

class TasksList extends StatefulWidget {

  final List<Task> tasksList;

  TasksList({this.tasksList});

  @override
  _TasksListState createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {

  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemBuilder: (context, index){
      return TaskTile(taskName: widget.tasksList[index].taskName,
        isCompleted: widget.tasksList[index].isCompleted,
        toggleCallback: (bool isChecked){
          setState(() {
            widget.tasksList[index].toggleCompleted();
          });
        });
    },
    itemCount: widget.tasksList.length,);
  }
}