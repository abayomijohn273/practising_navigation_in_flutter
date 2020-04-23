import "package:flutter/material.dart";
import 'todoDetail.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: TodoList(),
    );
  }
}

class TodoList extends StatelessWidget {
  final List<Map<String, String>> todos = [
    {
      "title": "Heading 1",
      "description": "This is a practical section of the app"
    },
    {
      "title": "Heading 2",
      "description": "This is a practical section of the app 2"
    },
    {
      "title": "Heading 3",
      "description": "This is a practical section of the app 3"
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          itemCount: todos.length,
          itemBuilder: (context, index) {
            return ListTile(
                key: Key(index.toString()),
                title: Text(todos[index]['title']),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => TodoDetail(
                        todo: todos[index],
                      ),
                    ),
                  );
                });
          }),
    );
  }
}
