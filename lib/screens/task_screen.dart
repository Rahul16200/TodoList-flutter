import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:todey_flutter/modals/task_data.dart';
import 'package:todey_flutter/widgets/task_view.dart';

import 'task_bottom.dart';
import 'package:provider/provider.dart';


class TaskScreen extends StatefulWidget {
  @override
  _TaskScreenState createState() => _TaskScreenState();
}

class _TaskScreenState extends State<TaskScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.lightBlueAccent,
        onPressed:(){ showModalBottomSheet(context: context, builder: (context)=>TaskBottomScreen()
        );
        },
     child: Icon(
            Icons.add
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.only(
                top: 60.0, left: 30.0, right: 30.0, bottom: 30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 30.0,
                  child: Icon(
                    Icons.list, size: 40.0, color: Colors.lightBlueAccent,),
                ),
                SizedBox(height: 20.0,),
                Text('Todoey', style: TextStyle(fontSize: 50.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),),
                Text('${Provider.of<TaskData>(context).taskCount}tasks',
                  style: TextStyle(color: Colors.white, fontSize: 15.0),),

              ],
            ),

          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20.0),
                      topRight: Radius.circular(20.0))
              ),
              child: TaskView(),
            ),
          )
        ],
      ),
    );
  }
}




