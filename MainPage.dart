import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'main.dart';

void main() => runApp(const MyApp());

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Inbox Here'),
      ),
      body: Center(
        child: GestureDetector(
          onLongPress: () {
            Navigator.pop(context);
          },
          child: RaisedButton(
            color: Colors.blue,
            onPressed: () {},
            child: const Text('Back'),
          ),
        ),
      ),
    );
  }
}
