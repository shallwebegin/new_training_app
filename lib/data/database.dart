import 'package:hive_flutter/hive_flutter.dart';

class toDoDataBase {
  List toDoList = [];

//reference our box

  final _myBox = Hive.box('mybox');

// run this method if this is the 1st time ever opening this app
  void createInitialData() {
    toDoList = [
      ['Make tutorial', false],
      ['Do Exercise', false],
    ];
  }

  //load the data from databse
  void loadData() {
    toDoList = _myBox.get('TODOLIST');
  }

  // update the database
  void uptadeDatabase() {
    _myBox.put('TODOLIST', toDoList);
  }
}
