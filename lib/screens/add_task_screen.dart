import 'package:flutter/material.dart';

class AddTaskScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
//      color: Color(0xFF1D5A75),

      child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(30),
              topLeft: Radius.circular(30),
            ),
            color: Colors.white,
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 30, horizontal: 50),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Text(
                  'Add Task',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.lightBlueAccent,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextField(
                  textAlign: TextAlign.center,
                  autofocus: true,
                ),
                SizedBox(
                  height: 15,
                ),
                FlatButton(
                  color: Colors.lightBlueAccent,
                  child: Text(
                    'Add',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  onPressed: () {
                    //add to list
                    print("Adding task");
                  },
                ),
              ],
            ),
          )),
    );
  }
}
