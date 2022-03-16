import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:exp6/realtime_db.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // ensure initialisation
  FirebaseApp firebaseApp = await Firebase.initializeApp(
    options: const FirebaseOptions(
    apiKey: "AIzaSyCHJs37b_cBo26vUqzakzUudXZ0dU0l6CE",
  authDomain: "exp6-1b111.firebaseapp.com",
  projectId: "exp6-1b111",
  storageBucket: "exp6-1b111.appspot.com",
  messagingSenderId: "192040157689",
  appId: "1:192040157689:web:f42e920368f276cb43bd28",
  measurementId: "G-V7ZMLGFED8",
  databaseURL: "https://exp6-1b111-default-rtdb.firebaseio.com/")
  );
  runApp(const MaterialApp(
    home: realtime_db(),
  ));
}
