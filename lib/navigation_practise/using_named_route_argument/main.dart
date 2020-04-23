import 'personDetail.dart';
import 'personModel.dart';
import 'package:flutter/material.dart';
import 'personModel.dart';

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
      // using onGenerateRoute for passing argument to another screen
      onGenerateRoute: (settings) {
        if (settings.name == PersonDetail2.routeName) {
          final Person person = settings.arguments;
          // Then, extract the required data from the arguments and
          // pass the data to the correct screen.
          return MaterialPageRoute(
            builder: (context) {
              return PersonDetail2(name: person.name, about: person.about);
            },
          );
        }
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
            Navigator.pushNamed(context, PersonDetail2.routeName,
                arguments: Person(
                  name: "Abayomi Olatunji",
                  about:
                      "Abayomi am a software developer with high proficiency level using ReactJs framework and flutter framwork",
                ));
          },
          child: Text("Click to view profile"),
        ),
      ),
    );
  }
}
