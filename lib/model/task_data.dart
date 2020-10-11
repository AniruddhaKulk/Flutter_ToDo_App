import 'package:flutter/foundation.dart';
import 'package:todo_app/model/task.dart';

class TaskData extends ChangeNotifier{

  List<Task> tasks = [
    Task(taskName: 'Study Flutter', isCompleted: false),
    Task(taskName: 'Study Android', isCompleted: false),
  ];

  int get numberOfTasks{
    return tasks.length;
  }
}