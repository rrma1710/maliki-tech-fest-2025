import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Study Case 4 - Day 2')),
        body: GestureDetector(
          onTap: () {
            print('Container di tekan');
            print('Waktu : ${DateTime.now()}');
          },
        ),
      ),
    );
  }
}
