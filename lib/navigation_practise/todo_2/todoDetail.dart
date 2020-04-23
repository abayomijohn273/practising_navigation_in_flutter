import 'package:flutter/material.dart';

class TodoDetail extends StatelessWidget {
  final Map todo;
  TodoDetail({Key key, @required this.todo}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(todo["title"]),
        ),
        backgroundColor: Colors.blue,
        body: Container(
          margin: EdgeInsets.only(top: 20),
          child: Center(
            child: Column(
              children: <Widget>[
                Text(
                  todo["title"],
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
                SizedBox(height: 20),
                Text(
                  todo["description"],
                  style: TextStyle(color: Colors.white, fontSize: 24),
                ),
                // Text(todo["footer"]),
              ],
            ),
          ),
        ));
  }
}
