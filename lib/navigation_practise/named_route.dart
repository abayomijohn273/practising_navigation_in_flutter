import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: "/",
      routes: {
        "/": (BuildContext context) => Home(
              title: "Home Page",
            ),
        "/about": (BuildContext context) => About(
              title: "About us",
            ),
        "/another": (BuildContext context) => AnotherScreen(
              title: "Another Screen",
            ),
      },
    );
  }
}

class Home extends StatelessWidget {
  final String title;
  Home({this.title});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[600],
        title: Text(title),
      ),
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          children: <Widget>[
            Text(
              "Home Page",
              style: TextStyle(
                fontSize: 24,
                color: Colors.white,
              ),
            ),
            FlatButton(
              onPressed: () => Navigator.pushNamed(context, "/about"),
              child: Text("Click to About us"),
            )
          ],
        ),
      ),
    );
  }
}

class About extends StatelessWidget {
  final String title;
  About({this.title});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[600],
        title: Text(title),
      ),
      backgroundColor: Colors.blue,
      body: Center(
        child: Column(
          children: <Widget>[
            Text(
              "About us",
              style: TextStyle(
                fontSize: 24,
                color: Colors.white,
              ),
            ),
            FlatButton(
              onPressed: () => Navigator.pushNamed(context, "/another"),
              child: Text(
                "Navigate to another sreen",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class AnotherScreen extends StatelessWidget {
  final String title;
  AnotherScreen({this.title});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      backgroundColor: Colors.red,
      body: Center(
        child: Text("Another Screen"),
      ),
    );
  }
}
