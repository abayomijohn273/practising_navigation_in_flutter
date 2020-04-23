// pass the arguments using RouteSettings

import "package:flutter/material.dart";
import "todoModel.dart";

class TodoDetail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final TodoModel todo = ModalRoute.of(context).settings.arguments;
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
