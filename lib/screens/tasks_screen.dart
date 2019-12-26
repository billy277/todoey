import 'package:flutter/material.dart';
import 'package:todoey_flutter/components/tasks_list.dart';
import 'add_task_screen.dart';

class TasksScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Container(
              width: double.infinity,
              padding:
                  EdgeInsets.only(top: 70, bottom: 30, right: 30, left: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 30,
                    child: Icon(
                      Icons.format_list_bulleted,
                      color: Colors.lightBlueAccent,
                      size: 40,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Todoey',
                    style: TextStyle(
                      fontSize: 50,
                      fontWeight: FontWeight.w700,
                      color: Colors.white,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      '12 Tasks',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                ],
              ),
            ),
            Expanded(
              child: TasksList(),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          //add new task screen
          showModalBottomSheet(
            context: context,
            builder: (context) => AddTaskScreen(),
            backgroundColor: Color(0xFF1D5A75),
          );
          print("FAB pressed");
        },
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
        backgroundColor: Colors.lightBlueAccent,
      ),
    );
  }
}
