import 'package:flutter_projects/constants/app_constants.dart';
import 'package:flutter_projects/widgets/left_bar.dart';
import 'package:flutter_projects/widgets/right_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_projects/constants/app_constants.dart';

class HomeScreen extends StatefulWidget {
  // const name({super.key});

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "DEREL Calculator",
          style: TextStyle(color: accentHexColor, fontWeight: FontWeight.w300),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
      ),
      backgroundColor: mainHexColor,
      body: SingleChildScrollView(
          child: Column(
        children: [
          SizedBox(
            height: 20,
          ),
        ],
      )),
    );
  }
}
