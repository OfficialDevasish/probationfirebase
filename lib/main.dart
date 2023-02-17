import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:probationfirebase/firebase_storage/firebasestoragefile.dart';
import 'package:probationfirebase/loginwithphonenumber/MyPhone.dart';
import 'package:probationfirebase/loginwithphonenumber/phoneverification.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.system,
      theme: ThemeData(
          primarySwatch: Colors.green),
      debugShowCheckedModeBanner: false,
      routes: {
        'phone': (context) => MyPhone(),
        'verify': (context) => phoneverification()
      },
      home: cloudnotification(),
    );
  }
}