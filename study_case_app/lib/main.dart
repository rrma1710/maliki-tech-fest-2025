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
      title: 'Coba',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const StudyCaseApp(title: 'Demo'),
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
