import 'package:flutter/material.dart';

/*
🧑‍💻 Study Kasus 4
Tambahkan fitur counter untuk menambah nilai dari "Day-1"

Hasil (awalnya):

"Study Case Day-1"
Hasil (setelah menekan tombol + dua kali):

"Study Case Day-2"
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
  int _counter = 1;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  //solusi menggunakan boolean
  void _updateCounter(bool isIncrement) {
    setState(() {
      if (isIncrement) {
        _counter++;
      } else {
        if (_counter > 0) _counter--;
      }
    });
  }

  // void _incrementCounter() {
  //   setState(() {
  //     _counter++;
  //   });
  // }

  // void _decrementCounter() {
  //   setState(() {
  //     _counter--;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Study Case 4 - Day ${_counter}')),
        body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: Expanded(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      minimumSize: Size(150, 150),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                    ),
                    onPressed: () {
                      _updateCounter(false);
                      // _decrementCounter();
                    },
                    child: Icon(Icons.remove),
                  ),
                ),
              ),
              SizedBox(width: 30),
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: Expanded(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      minimumSize: Size(150, 150),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                    ),
                    onPressed: () {
                      _updateCounter(true);
                      // _incrementCounter();
                    },
                    child: Icon(Icons.add),
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
