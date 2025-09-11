import 'package:flutter/material.dart';

// void main(List<String> args) {
//   runApp(const PageSecond());
// }

class PageSecond extends StatefulWidget {
  const PageSecond({super.key});

  @override
  State<PageSecond> createState() => _PageSecondState();
}

class _PageSecondState extends State<PageSecond> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Study Case Day - 1')),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  color: Colors.black26,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: GestureDetector(
                          child: Container(
                            color: Colors.amber,
                            height: 100,
                            width: 100,
                            child: Image.asset(
                              'assets/gunung1.jpg',
                              fit: BoxFit.fill,
                            ),
                          ),
                          onTap: () {
                            print('Gambar gunung 1 di klik');
                          },
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: GestureDetector(
                          child: Container(
                            color: Colors.blue,
                            height: 100,
                            width: 100,
                            child: Image.asset(
                              'assets/gunung2.jpg',
                              fit: BoxFit.fill,
                            ),
                          ),
                          onTap: () {
                            print('Gambar gunung 2 di klik');
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  color: const Color.fromARGB(255, 71, 115, 129),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: GestureDetector(
                          child: Container(
                            color: Colors.green,
                            height: 100,
                            width: 100,
                            child: Image.network(
                              'https://ibeka.or.id/wp-content/uploads/2023/10/tanah-lot-temple-bali-island-indonesia_335224-394.jpg',
                              fit: BoxFit.fill,
                            ),
                          ),
                          onTap: () {
                            print('Gambar tanah lot di klik');
                          },
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: GestureDetector(
                          child: Container(
                            color: Colors.red,
                            height: 100,
                            width: 100,
                            child: Image.network(
                              'https://tidunglagoon.com/wp-content/uploads/2025/03/laoot.jpg',
                              fit: BoxFit.fill,
                            ),
                          ),
                          onTap: () {
                            print('Gambar laut di klik');
                          },
                        ),
                      ),
                    ],
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
