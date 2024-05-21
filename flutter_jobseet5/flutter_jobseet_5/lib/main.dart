import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Flutter App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            TeksUtama(
              teks1: 'nama : Aurel',
              teks2: 'nim : Sti2012',
            ),
            TeksUtama(
              teks1: 'Apa kabar',
              teks2: 'Budi',
            ),
            TeksUtama(
              teks1: 'Apa kabar',
              teks2: 'Andi',
            ),
            TeksUtama(
              teks1: 'Apa kabar',
              teks2: 'Santi',
            ),
          ],
        ),
      ),
    );
  }
}

class TeksUtama extends StatelessWidget {
  final String teks1;
  final String teks2;
  

  const TeksUtama({required this.teks1, required this.teks2, super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        
        Text (teks1,
        textDirection: TextDirection.ltr,
 style: TextStyle(
 fontSize: 45,
 fontWeight: FontWeight.bold,
 backgroundColor: Colors.red)),
        Text(teks2),
      ],
    );
  }
}
