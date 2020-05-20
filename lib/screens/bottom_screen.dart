import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey/models/task_data.dart';


class BottomDataSheet extends StatelessWidget {

  static String newTaskTitle;
  @override
  Widget build(BuildContext context) {

    return Container(
        color: Color(0xff757575),
        child: Container(
          padding: EdgeInsets.all(30.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20.0),
              topRight: Radius.circular(20.0),
            ),
            color: Colors.white,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Text(
                'Add Task',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.lightBlueAccent,
                  fontSize: 30.0
                ),
              ),
              TextField(
                textAlign: TextAlign.center,
                autofocus: true,
                style: TextStyle(
                  fontSize: 25.0
                ),
                onChanged: (value){
                  newTaskTitle = value;
                },
              ),
              SizedBox(height: 20.0,),
              FlatButton(
                onPressed: (){
                  Provider.of<TaskData>(context, listen: false).addTask(newTaskTitle);
                  Navigator.pop(context);
                },
                color: Colors.lightBlueAccent,
                child: Text(
                  'Add',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 25.0
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
