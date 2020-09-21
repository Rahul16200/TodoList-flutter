
class Task{
  bool isDone;
  final String name;
  Task({this.name,this.isDone=false});

  void getDone(){
    isDone =!isDone;

  }



}