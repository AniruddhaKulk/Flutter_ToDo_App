import 'dart:collection';
import 'dart:typed_data';

import 'package:flutter/foundation.dart';
import 'package:todo_app/model/task.dart';

class TaskData extends ChangeNotifier{

  List<Task> _tasks = [
    Task(taskName: 'Study Flutter', isCompleted: false),
    Task(taskName: 'Study Android', isCompleted: false),
  ];

  UnmodifiableListView<Task> get tasks {
    return _tasks;
  }

  int get numberOfTasks{
    return _tasks.length;
  }

  void addTask(Task task){
    print('new ${task.taskName}');
    _tasks.add(task);
    notifyListeners();
  }
}