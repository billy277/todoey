import 'package:flutter/material.dart';

class TaskEntry extends StatelessWidget {
  final bool isChecked;
  final Function toggleCheck;
  final String title;

  TaskEntry({this.title, this.isChecked, this.toggleCheck});
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        title,
        style: TextStyle(
            decoration: isChecked ? TextDecoration.lineThrough : null),
      ),
      trailing: Checkbox(value: isChecked, onChanged: toggleCheck),
    );
  }
}
