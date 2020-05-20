import 'package:flutter/foundation.dart';
import 'task.dart';

class TaskData extends ChangeNotifier{
  List<Task> tasks = [];
  void addTask(String newTask){
    final task = Task(name: newTask);
    tasks.add(task);
    notifyListeners();
  }
  void updateTask(Task task){
    task.toggleCheckbox();
    notifyListeners();
  }
  void deleteTask(Task task){
    tasks.remove(task);
    notifyListeners();
  }
}