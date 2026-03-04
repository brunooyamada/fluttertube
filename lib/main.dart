import 'package:flutter/material.dart';
import 'package:fluttertube/api.dart';
import 'package:fluttertube/screens/home.dart';

void main() {
  Api api = Api();
  api.search("eletro");
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fluttertube',
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}
