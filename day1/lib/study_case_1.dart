import 'package:flutter/material.dart';

/*
🧑‍💻 Study Kasus 1
Buatlah aplikasi sederhana dengan struktur:

MaterialApp → root aplikasi
Scaffold → struktur halaman utama
AppBar → judul "Study Case Day-1"
Body → teks "Selamat Datang di Flutter!"
FloatingActionButton → tombol tambah (+)

Hasil:

Halaman dengan judul AppBar "Study Case Day-1".
Body menampilkan teks "Selamat Datang di Flutter!".
Teks Berada di tengah halaman.
Tombol + di pojok kanan bawah.
*/

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Study Case 1 - Day 1')),
        body: Center(child: Text('Selamat Datang di Flutter')),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Icon(Icons.add),
        ),
      ),
    );
  }
}
