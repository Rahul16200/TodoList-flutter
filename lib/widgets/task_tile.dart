import 'package:flutter/material.dart';

class TaskTile  extends StatelessWidget {
  TaskTile({this.isChecked,this.taskTitle,this.checkboxCallback,this.removeCallback});
  final String taskTitle;
  final bool isChecked;
  final Function checkboxCallback;
  final Function removeCallback;

  @override
  Widget build(BuildContext context) {
    return ListTile(title: Text( taskTitle,
    style: TextStyle(decoration: isChecked ? TextDecoration.lineThrough:null,
     color: Colors.black),),
    trailing: Checkbox(
      value:isChecked,
      onChanged: (value) {
        checkboxCallback(value);
      }

    ),
      onLongPress: removeCallback,
    );
    }
   }









//  bool isChecked = true ;
//  void getStateValue(bool stateValue){
//    setState(() {
//      isChecked = stateValue;
//    });
//  }










