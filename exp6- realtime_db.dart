import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';

class realtime_db extends StatefulWidget {
  const realtime_db({Key? key}) : super(key: key);

  @override
  _realtime_dbState createState() => _realtime_dbState();
}

class _realtime_dbState extends State<realtime_db> {
  late DatabaseReference _dbref;
  String databasejson = "";
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _dbref = FirebaseDatabase.instance.reference();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(" Database - " + databasejson),
              ),
              TextButton(
                  onPressed: () {
                    _createDB();
                  },
                  child: const Text("1. Create DB")),
              TextButton(
                  onPressed: () {
                    _realdb_once();
                  },
                  child: const Text("2. Read value")),
              TextButton(
                  onPressed: () {
                    _readdb_onechild();
                  },
                  child: const Text("3. Read one child")),
              TextButton(
                  onPressed: () {
                    _updatevalue();
                  },
                  child: const Text("4. Update value")),
              TextButton(
                  onPressed: () {
                    _delete();
                  },
                  child: const Text("5. Delete value")),
            ],
          ),
        ),
      ),
    );
  }

  _updatevalue() {
    _dbref.child("jobprofile").update({"website2": "www.siesedu.in"});
  }
  
  _delete() {
    _dbref.child("profile").remove();
  }

  _createDB() {
    _dbref.child("profile").set(" my profile");
    _dbref
        .child("jobprofile")
        .set({'website': "www.siesgst.com", "website2": "www.siesedu.com"});
  }

  _realdb_once() {
    _dbref.once().then((DataSnapshot dataSnapshot) {
      print(" read once - " + dataSnapshot.value.toString());
      setState(() {
        databasejson = dataSnapshot.value.toString();
      });
    });
  }

  _readdb_onechild() {
    _dbref
        .child("jobprofile")
        .child("website2")
        .once()
        .then((DataSnapshot dataSnapshot) {
      print(" read once - " + dataSnapshot.value.toString());
      setState(() {
        databasejson = dataSnapshot.value.toString();
      });
    });
  }

  
}
