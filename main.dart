import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
  final appTitle = "Flutter Forms";
  return MaterialApp(
    debugShowCheckedModeBanner: false,
    title: appTitle,
    home:Scaffold(
      appBar: AppBar(
        title: Text(appTitle),
      ),
      body: MyForm(),
    )
  );
  }
}

class MyForm extends StatefulWidget {
  @override
  MyFormState createState(){
    return MyFormState();
  }
}

class MyFormState extends State<MyForm>{
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
  return Form(
    key: _formKey,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        TextFormField(
          decoration: InputDecoration(
            icon: Icon(Icons.person),
            hintText: 'Enter your name.',
            labelText: 'Name',
          ),
          validator: (value) {
            if (value!.isEmpty) {
              return 'Please enter valid name';
            }
            return null;
          },
        ),
        TextFormField(
          decoration: InputDecoration(
            icon: Icon(Icons.account_box_sharp),
            hintText: 'Enter your Roll number.',
            labelText: 'PRN',
          ),
          validator: (value) {
            if (value!.isEmpty) {
              return 'Please enter correct PRN';
            }
            return null;
          },
        ),
        TextFormField(
          decoration: InputDecoration(
            icon: Icon(Icons.cake_outlined),
            hintText: 'Enter your DOB.',
            labelText: 'D.O.B.',
          ),
          validator: (value) {
            if (value!.isEmpty) {
              return 'Please enter correct DOB';
            }
            return null;
          },
        ),
        new Container(
          padding: EdgeInsets.only(left: 150, top: 40),
          child: new RaisedButton(
            child: Text('Submit'),
            onPressed: (){
              if(_formKey.currentState!.validate()){
                Scaffold.of(context)
                    .showSnackBar(SnackBar(content: Text("Data is processing")));
              }
            },
          )
        )
      ],
    ),
  );
  }
}
