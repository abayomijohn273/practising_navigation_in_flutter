import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: InkWell(
          // onTap: () {
          //   Navigator.push(context,
          //       MaterialPageRoute(builder: (BuildContext context) {
          //     return Scaffold(
          //       appBar: AppBar(title: Text('My Page')),
          //       body: Center(
          //         child: FlatButton(
          //           child: Text('POP'),
          //           onPressed: () {
          //             Navigator.pop(context);
          //           },
          //         ),
          //       ),
          //     );
          //   }));
          // },

          // More better method
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (BuildContext context) => NewScreen()));
          },
          child: Text("Tap me"),
        ),
      ),
    );
  }
}

class NewScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: FlatButton(
            child: Text("Tap to go back"),
            onPressed: () => Navigator.pop(context)),
      ),
    );
  }
}
