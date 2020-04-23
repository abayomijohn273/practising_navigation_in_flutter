import 'personModel.dart';
import 'package:flutter/material.dart';

class PersonDetail extends StatelessWidget {
  static const routeName = "/personDetail";
  @override
  Widget build(BuildContext context) {
    final Person person = ModalRoute.of(context).settings.arguments;
    return Scaffold(
      appBar: AppBar(
        title: Text(person.name),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Center(
          child: Text(
            person.about,
          ),
        ),
      ),
    );
  }
}

// second option passing the argument to the main.dart using the onGenerateRoute setting
class PersonDetail2 extends StatelessWidget {
  static const routeName = "/personDetail";
  final String name;
  final String about;

  PersonDetail2({this.name, this.about});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(name),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Center(
          child: Text(
            about,
          ),
        ),
      ),
    );
  }
}
