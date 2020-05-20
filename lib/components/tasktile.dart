import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final String title;
  final Function callbackCheckBox;
  final bool currentState;
  final Function delete;
  TaskTile({@required this.title,@required this.callbackCheckBox,@required this.currentState,@required this.delete});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title,style: TextStyle(fontSize: 20.0,decoration: currentState?TextDecoration.lineThrough:null),),
      trailing: Checkbox(
          value: currentState,
          onChanged: callbackCheckBox,
      ),
      onLongPress: delete,
    );
  }
}