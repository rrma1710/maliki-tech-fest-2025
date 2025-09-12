import 'package:flutter/material.dart';

/*
🧑‍💻 Study Kasus 3
Gabungkan dua study case sebelumnya, menjadi 1 File

AppBar bertuliskan "Study Case Day-1"
Body berisi:
Teks "Selamat Datang di Flutter!".
TextField
Jika user memasukan nama maka rubah teks "Selamat Datang ${inputan_user} di Flutter!"
Hasil:

Halaman dengan judul AppBar "Study Case Day-1".
Body menampilkan teks "Selamat Datang di Flutter!".
Teks Berada di tengah halaman.
Teks bisa berubah sesuai dengan apa yang user inputkan.
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
  final TextEditingController _controller = TextEditingController();
  String _inputData = '';

  @override
  void initState() {
    super.initState();
    _controller.addListener(() {
      setState(() {
        _inputData = _controller.text;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Study Case 3 - Day 1')),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Selamat Datang ${'$_inputData '}di Flutter',
                  style: TextStyle(fontWeight: FontWeight.w700),
                ),
                SizedBox(height: 10),
                TextField(
                  controller: _controller,
                  decoration: InputDecoration(border: OutlineInputBorder()),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
