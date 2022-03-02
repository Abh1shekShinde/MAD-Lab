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
      body: Container(
        padding: EdgeInsets.all(50),
        child: GestureDetector(
          onLongPress: () {
            Navigator.pop(context);
            print("You long pressed the button");
          },

          child: RaisedButton(
            color: Colors.orange,
            onPressed: () {},
            child: const Text('Long press here to go Back!!'),
          ),
        ),
      ),
    );
  }
}
