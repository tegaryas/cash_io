import 'package:flutter/material.dart';
import 'package:ikopi_baru/Screens/HomePage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Cash.Io',
      home: HomePage(),
    );
  }
}
