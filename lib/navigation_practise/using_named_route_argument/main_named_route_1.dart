import 'personDetail.dart';
import 'personModel.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: "/",
      routes: {
        "/": (_) => PersonList(),
        PersonDetail.routeName: (context) => PersonDetail(),
      },
    );
  }
}

class PersonList extends StatefulWidget {
  @override
  _PersonListState createState() => _PersonListState();
}

class _PersonListState extends State<PersonList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: RaisedButton(
          onPressed: () {
            Navigator.pushNamed(context, PersonDetail.routeName,
                arguments: Person(
                  name: "Abayomi Olatunji",
                  about:
                      "I am a software developer with high proficiency level using ReactJs framework and flutter framword",
                ));
          },
          child: Text("Click to view profile"),
        ),
      ),
    );
  }
}
