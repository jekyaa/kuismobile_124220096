import 'package:flutter/material.dart';
import 'package:kuis/login_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'UPNVY',
      theme: ThemeData(
        primarySwatch: Colors.green, // Ubah warna tema menjadi hijau
      ),
      home: LoginPage(),
    );
  }
}
