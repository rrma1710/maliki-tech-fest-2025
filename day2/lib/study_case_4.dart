import 'package:flutter/material.dart';

/*
🧑‍💻 Study Kasus 4
Jadikan container sebelumnya bisa mendeteksi tap, lalu menampilkan pesan di console.

Hasil:

Container sebelumnya bisa di pencet dan mengembalikan nilai di console.
*/

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
          child: Center(
            child: Container(
              width: 200,
              height: 200,
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(15),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black26,
                    blurRadius: 10,
                    offset: Offset(0, 4),
                  ),
                ],
              ),
              child: Center(
                child: Text(
                  'Tekan Tombol',
                  style: TextStyle(
                    shadows: [
                      Shadow(
                        color: Colors.black26,
                        offset: Offset(2, 2),
                        blurRadius: 3,
                      ),
                    ],
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
