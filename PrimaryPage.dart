import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'main.dart';

class PrimaryPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Primary'),
      ),
      body: new Center(
        child: RaisedButton(
          color: Colors.blue,
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text('Back'),
        ),
      ),
    );
  }
}
