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
                },
                longPressCallback: (){
                  _showConfirmationDialog(context, data, index);
                },);
          },
          itemCount: data.numberOfTasks,
        );
      },
    );
  }

  void _showConfirmationDialog(BuildContext context, TaskData data, int index) {
    // flutter defined function
    showDialog(
      context: context,
      builder: (BuildContext context) {
        // return object of type Dialog
        return AlertDialog(
          title: new Text("Delete"),
          content: new Text("Do you want to delete?"),
          actions: <Widget>[
            // usually buttons at the bottom of the dialog
            new FlatButton(
              color: Colors.teal,
              child: new Text("Yes",
              style: TextStyle(
                color: Colors.white
              ),),
              onPressed: () {
                data.deleteTask(index);
                Navigator.of(context).pop();
              },
            ),
            new FlatButton(
              color: Colors.teal,
              child: new Text("No",
                style: TextStyle(
                    color: Colors.white
                ),),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }
}
