import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todey_flutter/modals/task_data.dart';

String text;
class TaskBottomScreen extends StatelessWidget {






  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff757575),
      child: Container(
        padding: EdgeInsets.all(25.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(20.0),
            topLeft: Radius.circular(20.0),)
           ),
        child: Column(

          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text('Add List',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 30.0,fontWeight: FontWeight.w400,
                  color: Colors.lightBlueAccent),

                 ),
            TextField(autofocus: true,
              onChanged: (value){
              text = value;

              },

            ),
            SizedBox(height: 10.0),
            FlatButton(
              onPressed: (){
            Provider.of<TaskData>(context,listen: false).addTask(text);
            Navigator.pop(context);
             },
                color: Colors.lightBlueAccent,


              child: Text('Add',style: TextStyle(fontSize: 20.0,color: Colors.black,),
              ),


              )
          ],
        ),

      ),
    );


  }
}
