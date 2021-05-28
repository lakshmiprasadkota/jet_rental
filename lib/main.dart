import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jet_rental/screens/first_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Lp Hackathon',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.orange),
      home: FirstScreen(),
    );
  }
}
