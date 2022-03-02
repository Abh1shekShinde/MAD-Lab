import 'package:flutter/material.dart';
import './MainPage.dart';
import 'PrimaryPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyStatefulWidget(),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  MyStatefulWidget({Key? key}) : super(key: key);

  @override
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Home',
      style: optionStyle,
    ),
    Text(
      'Business',
      style: optionStyle,
    ),
    Text(
      'School',
      style: optionStyle,
    ),
    Text(
      'Settings',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Flutter navigation")),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "Home",
              backgroundColor: Colors.redAccent),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'Business',
            backgroundColor: Colors.green,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'School',
            backgroundColor: Colors.orangeAccent,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
            backgroundColor: Colors.lightBlue,
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.black,
        onTap: _onItemTapped,
      ),
      drawer: Drawer(
        elevation: 20.0,
        child: Column(
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text('Abhishek Shinde'),
              accountEmail: Text('abhishek119@gmail.com'),
              currentAccountPicture: CircleAvatar(
                  backgroundColor: Colors.yellow, child: Text("AS")),
            ),
            ListTile(
              title: Text("Inbox"),
              leading: Icon(Icons.mail),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => MainPage()));
              },
            ),
            const Divider(
              height: 0.1,
            ),
            ListTile(
              title: Text("Primary"),
              leading: Icon(Icons.inbox),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => PrimaryPage()));
              },
            ),
            const Divider(
              height: 0.1,
            ),
            ListTile(
              title: Text("Social"),
              leading: Icon(Icons.people),
            ),
            const Divider(
              height: 0.1,
            ),
            ListTile(
              title: Text("Spam"),
              leading: Icon(Icons.mail),
            ),
            const Divider(
              height: 0.1,
            )
          ],
        ),
      ),
    );
  }
}

// class MainPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Inbox Here'),
//       ),
//       body: Center(
//         child: RaisedButton(
//           color: Colors.blue,
//           onPressed: () {
//             Navigator.pop(context);
//           },
//           child: Text('Back'),
//         ),
//       ),
//     );
//   }
// }

// class PrimaryPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Primary'),
//       ),
//       body: Center(
//         child: RaisedButton(
//           color: Colors.blue,
//           onPressed: () {
//             Navigator.pop(context);
//           },
//           child: Text('Back'),
//         ),
//       ),
//     );
//   }
// }
