import 'package:flutter/material.dart';
import "todo.dart";
import 'detail_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final todos = List<Todo>.generate(
    20,
    (index) => Todo(
      title: "Todo $index",
      description: "A description of what needs to be done for Todo $index",
    ),
  );
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: "/",
      routes: {
        "/": (_) => TodoListScreen(todos: todos),
      },
    );
  }
}

class TodoListScreen extends StatefulWidget {
  final todos;
  TodoListScreen({this.todos});
  @override
  _TodoListScreenState createState() => _TodoListScreenState();
}

class _TodoListScreenState extends State<TodoListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(itemBuilder: (context, index) {
        return ListTile(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => TodoDetail(
                  todo: widget.todos[index],
                ),
              ),
            );
          },
          title: Text(widget.todos[index].title),
        );
      }),
    );
  }
}
