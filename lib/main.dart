import 'package:flutter/material.dart';

//original syntax
// void main() {
//   runApp(MyApp());
// }


//modern shorthand
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Text('Hello!'),
    );
  }
}
