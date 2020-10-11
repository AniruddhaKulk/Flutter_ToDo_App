class Task{

  final String taskName;
  bool isCompleted;

  Task({this.taskName, this.isCompleted = false});

  void toggleCompleted(){
    isCompleted = !isCompleted;
  }

}