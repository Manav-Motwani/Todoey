import 'package:flutter/material.dart';
import 'tasktile.dart';
import 'package:todoey/models/task_data.dart';
import 'package:provider/provider.dart';

class TaskList extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemBuilder: (context,index){
      return TaskTile(
        title: Provider.of<TaskData>(context).tasks[index].name,
        currentState:Provider.of<TaskData>(context).tasks[index].isDone,
        callbackCheckBox: (checkboxState){
          Provider.of<TaskData>(context,listen: false).updateTask(Provider.of<TaskData>(context,listen: false).tasks[index]);
        },
        delete: ()=>Provider.of<TaskData>(context,listen: false).deleteTask(Provider.of<TaskData>(context,listen: false).tasks[index]),
      );
    },
    itemCount: Provider.of<TaskData>(context).tasks.length,
    );
  }
}