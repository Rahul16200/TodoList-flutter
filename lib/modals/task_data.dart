import 'package:flutter/foundation.dart';
import 'package:todey_flutter/modals/task.dart';
import 'dart:collection';


class TaskData extends ChangeNotifier{
  List<Task> _tasks = [
    Task(name: 'buy milks'),
    Task(name: 'buy breads'),
    Task(name: 'but chocolates'),
  ];
  UnmodifiableListView<Task> get tasks{
    return UnmodifiableListView(_tasks);
  }
   int get taskCount{
     return tasks.length;
   }

void addTask(String newValue){
     final task = Task(name: newValue);
     tasks.add(task);
     notifyListeners();
}
void checkboxTask(Task  task ){
    task.getDone();

    notifyListeners();
}
void removeTask(Task task){
    _tasks.remove(task);
    notifyListeners();
}
}