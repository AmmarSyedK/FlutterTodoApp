import 'package:hive/hive.dart';

class ToDoDatabase {
  List toDoList = [];
  // reference box
  final _myBox = Hive.box('mybox');

  // first time opening the app
  void createInitialData() {
    toDoList = [
      ["Apprendre trois lignes", false],
      ["Aller à Basic-fit", false],
      ["Faire à manger avec maman", false],
    ];
  }

  // load data from db
  void loadData() {
    toDoList = _myBox.get("TODOLIST");
  }

  //update db
  void updateData() {
    _myBox.put("TODOLIST", toDoList);
  }
}
