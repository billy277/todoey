import 'package:flutter/material.dart';
import 'package:todoey_flutter/components/task_list_entry.dart';
import 'task_entry.dart';
import 'task.dart';
import 'task_list_entry.dart';

class TasksList extends StatefulWidget {
  @override
  _TasksListState createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {
  /*This example uses a new class for each task */

  List<Task> listOfTasks = [
    Task(title: "Buy Milk"),
    Task(title: "Buy Other stuff"),
  ];

  List<Widget> newList = [];

  void generateTaskEntries() {
    for (Task task in listOfTasks) {
      TaskEntry tmp = TaskEntry(
        title: task.title,
        isChecked: task.isChecked,
        toggleCheck: task.toggleCheck,
      );
      newList.add(tmp);
    }
    print(newList);
  }

  /*this example uses the task_entry file where the state is lifted up to achieve functionliaty*/

  List<Widget> oldList = [
    ToDoEntry(title: "Buy some stuff"),
    ToDoEntry(title: "this is with lifting up state example"),
  ];

  @override
  void initState() {
    super.initState();
    generateTaskEntries();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        padding: EdgeInsets.symmetric(
          horizontal: 25,
          vertical: 20,
        ),
        children: oldList,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(30),
          topLeft: Radius.circular(30),
        ),
      ),
    );
  }
}
