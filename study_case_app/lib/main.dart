import 'package:flutter/material.dart';
import 'package:study_case_app/pagesecond.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color.fromARGB(255, 48, 55, 178),
        ),
      ),
      home: const StudyCaseApp(title: 'Study Case'),
    );
  }
}

class StudyCaseApp extends StatefulWidget {
  final dynamic title;

  const StudyCaseApp({super.key, required this.title});

  @override
  State<StudyCaseApp> createState() => _StudyCaseAppState();
}

class _StudyCaseAppState extends State<StudyCaseApp> {
  final TextEditingController _controller = TextEditingController();
  String _inputText = '';
  int counter = 1;
  int setDefault = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Study Case Day - $setDefault')),
      body: Column(
        children: [
          Center(child: Text('Selamat Datang $_inputText di Flutter!')),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: _controller,
              onChanged: (value) {
                setState(() {
                  _inputText = _controller.text;
                });
              },
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hint: Text('Pengguna'),
              ),
            ),
          ),
          SizedBox(height: 10),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute<void>(
                  builder: (context) => const PageSecond(),
                ),
              );
            },
            style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(
                  12,
                ), // Ubah radius sesuai kebutuhan
              ),
              minimumSize: Size(
                80,
                48,
              ), // Membuat button kotak lebar penuh dan tinggi 48
            ),
            child: Text('Masuk'),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            setDefault = counter++;
          });
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
