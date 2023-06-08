import 'package:flutter/material.dart';
import 'package:hach/hach.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('My App'),
        ),
        body: Center(
          child: MyHachButton(
            text: 'Test Button',
            onPressed: () {
              print('Button pressed!');
            },
          ),
        ),
      ),
    );
  }
}
