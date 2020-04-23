import "package:flutter/material.dart";
import "todo.dart";

class TodoDetail extends StatelessWidget {
  final Todo todo;
  TodoDetail({Key key, @required this.todo}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(todo.title),
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Text(
          todo.description,
        ),
      ),
    );
  }
}
