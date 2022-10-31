import 'package:test3/screens/home.dart';
import 'package:flutter/material.dart';
import 'package:test3/screens/home.dart';

void main(){
  runApp(MyApp());

}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    var yellow;
    return MaterialApp(
      title: 'DEREL Calculator',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.yellow,visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomeScreen(),
    );
  }
}