import 'package:flutter/material.dart';

/* holding the data from the checkbox one level higher in the widget tree*/
class ToDoEntry extends StatefulWidget {
  final String title;

  ToDoEntry({this.title});

  @override
  _ToDoEntryState createState() => _ToDoEntryState();
}

class _ToDoEntryState extends State<ToDoEntry> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        widget.title,
        style: TextStyle(
            decoration: isChecked ? TextDecoration.lineThrough : null),
      ),
      trailing: TaskCheckBox(
          isChecked: isChecked,
          onPress: (value) {
            setState(() {
              isChecked = value;
            });
          }),
    );
  }
}

class TaskCheckBox extends StatelessWidget {
  final bool isChecked;
  final Function onPress;

  TaskCheckBox({this.isChecked, this.onPress});
  @override
  Widget build(BuildContext context) {
    return Checkbox(
        activeColor: Colors.lightBlueAccent,
        value: isChecked,
        onChanged: (value) {
          onPress(value);
        });
  }
}

/*example with the task checkbox being a stateful widget only for local state updates
class ToDoEntry extends StatelessWidget {
  final String title;
  final bool isChecked = false;

  ToDoEntry({this.title});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title),
      trailing: TaskCheckBox(),
    );
  }
}

class TaskCheckBox extends StatefulWidget {
  @override
  _TaskCheckBoxState createState() => _TaskCheckBoxState();
}

class _TaskCheckBoxState extends State<TaskCheckBox> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Checkbox(
        activeColor: Colors.lightBlueAccent,
        value: isChecked,
        onChanged: (value) {
          setState(() {
            isChecked = value;
          });
        });
  }
}
*/
