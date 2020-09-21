import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todey_flutter/modals/task_data.dart';
import 'task_tile.dart';



class TaskView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Consumer<TaskData>(
      // ignore: missing_return
      builder: (context,taskData,child) {

        return ListView.builder(
        itemBuilder: (context,index){
        return TaskTile(
        taskTitle : taskData.tasks[index].name,
        isChecked : taskData.tasks[index].isDone,
        checkboxCallback:(value){
        Provider.of<TaskData>(context,listen: false).checkboxTask(taskData.tasks[index]);
        },
        removeCallback: (){
          Provider.of<TaskData>(context,listen: false).removeTask(taskData.tasks[index]);
        },
        );
        },itemCount: taskData.tasks.length,
        );
      }
    );

  }
}









