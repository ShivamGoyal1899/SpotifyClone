import 'package:flutter/material.dart';
import 'package:SpotOn/song_page.dart';
import 'package:SpotOn/home_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}