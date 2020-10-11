import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_app/model/task.dart';
import 'package:todo_app/model/task_data.dart';

class AddTaskScreen extends StatelessWidget {

  String taskName;
  var taskController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0XFF757575),
      child: Container(
        padding: EdgeInsets.all(24.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(24.0),
            topRight: Radius.circular(24.0),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Add New Task',
              style: TextStyle(
                color: Colors.teal,
                fontSize: 28.0,
                fontWeight: FontWeight.w300,
              ),
              textAlign: TextAlign.center,
            ),
            TextField(
              textAlign: TextAlign.center,
              autofocus: true,
              onChanged: (newText){
                taskName = newText;
              },
              controller: taskController,
            ),
            FlatButton(
              child: Text('Add',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w300,
                fontSize: 18.0
              ),),
              color: Colors.teal,
              onPressed: (){
                final task = Task(taskName: taskName);
                Provider.of<TaskData>(context, listen: false).addTask(task);
                taskController.clear();
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
