import 'package:flutter/material.dart';

/*
🧑‍💻 Study Kasus 1
Tambahkan tombol project di Day-1, setelah widget textfield.

Hasil:

Tombol dengan teks "Masuk" di bawah widget TextField.
*/
void main() {
  runApp(const MyApp());
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
        appBar: AppBar(title: Text('Study Case 1 - Day 2')), 
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Masukkan Nama'),
              SizedBox(height: 5),
              TextField(
                decoration: InputDecoration(border: OutlineInputBorder()),
              ),
              SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {},
                child: Text('Masuk'),
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(120, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
