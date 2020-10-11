import 'dart:collection';
import 'dart:typed_data';

import 'package:flutter/foundation.dart';
import 'package:todo_app/model/task.dart';

class TaskData extends ChangeNotifier{

  List<Task> _tasks = [
    Task(taskName: 'Buy milk', isCompleted: false),
    Task(taskName: 'Buy eggs', isCompleted: false),
    Task(taskName: 'Buy bread', isCompleted: false),
  ];

  UnmodifiableListView<Task> get tasks {
    return UnmodifiableListView(_tasks);
  }

  int get numberOfTasks{
    return _tasks.length;
  }

  void addTask(Task task){
    _tasks.add(task);
    notifyListeners();
  }

  void toggleCompletion(Task task){
    task.toggleCompleted();
    notifyListeners();
  }

  void deleteTask(int index){
    _tasks.removeAt(index);
    notifyListeners();
  }
}