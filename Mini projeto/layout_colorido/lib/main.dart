import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: MyGrid(),
      ),
    );
  }
}

class MyGrid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 4,
      childAspectRatio: 1.0,
      mainAxisSpacing: 0,
      crossAxisSpacing: 0,
      children: [
        Container(color: Colors.red),
        Container(color: Colors.red),
        Container(color: Colors.red),
        Container(color: Colors.green),
        Container(color: Colors.red),
        Container(color: Colors.red),
        Container(color: Colors.blue),
        Container(color: Colors.yellow),
        Container(color: Colors.red),
        Container(color: Colors.green),
        Container(color: Colors.yellow),
        Container(color: Colors.yellow),
        Container(color: Colors.blue),
        Container(color: Colors.yellow),
        Container(color: Colors.yellow),
        Container(color: Colors.yellow),
        Container(color: Colors.green),
        Container(color: Colors.green),
        Container(color: Colors.red),
        Container(color: Colors.yellow),
        Container(color: Colors.green),
        Container(color: Colors.green),
        Container(color: Colors.green),
        Container(color: Colors.blue),
      ],
    );
  }
}
