// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors, sized_box_for_whitespace, use_key_in_widget_constructors, library_private_types_in_public_api, no_leading_underscores_for_local_identifiers, prefer_final_fields

import 'package:flutter_projects/constants/app_constants.dart';
import 'package:flutter_projects/widgets/left_bar.dart';
import 'package:flutter_projects/widgets/right_bar.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen();

  // const name({super.key});

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TextEditingController _heightController = TextEditingController();
  TextEditingController _weightController = TextEditingController();
  double _bmiResult = 0;
  String _textResult = "";
  @override
  Widget build(BuildContext context) {
    // var barWidth;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "DEREL BMI Calculator",
          style: TextStyle(color: accentHexColor, fontWeight: FontWeight.w300),
        ),
        backgroundColor: Colors.transparent,
        elevation: 500,
        // was initially 0
        centerTitle: true,
      ),
      backgroundColor: mainHexColor,
      body: SingleChildScrollView(
          child: Column(
        children: [
          SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                width: 130,
                child: TextField(
                  controller: _heightController,
                  style: TextStyle(
                      fontSize: 42,
                      fontWeight: FontWeight.w300,
                      color: Colors.white),
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "Height",
                    hintStyle: TextStyle(
                        fontSize: 42,
                        fontWeight: FontWeight.w300,
                        color: Colors.white.withOpacity(.8)),
                  ),
                ),
              ),
              Container(
                width: 130,
                child: TextField(
                  controller: _weightController,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 42,
                      fontWeight: FontWeight.w300,
                      color: Colors.white),
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "Weight",
                    hintStyle: TextStyle(
                        fontSize: 42,
                        fontWeight: FontWeight.w300,
                        color: Colors.white.withOpacity(.8)),
                  ),
                ),
              )
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          GestureDetector(
            onTap: () {
              double _h =double.parse(_heightController.text);
              double _w =double.parse(_weightController.text);
              setState(() {
                _bmiResult = _w/ (_h * _h);
                if(_bmiResult >25){
                  _textResult ="You are over weight";
                } else if(_bmiResult >= 18.5 && _bmiResult <= 25){
                  _textResult ="You have a normal weight";
                } else{
                  _textResult ="You are under weight";
                }
              });
            },
            child: Text(
              "Calculate",
              style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: accentHexColor),
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          Container(
            child: Text(
              _bmiResult.toStringAsFixed(2),
              style: TextStyle(fontSize: 50, color: Colors.white),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Visibility(
            visible: _textResult.isNotEmpty,
            child: Container(
              child: Text(
                _textResult,
                style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w400,
                    color: accentHexColor),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          LeftBar(
            barWidth: 40,
          ),
          SizedBox(
            height: 20,
          ),
          LeftBar(
            barWidth: 70,
          ),
          SizedBox(
            height: 20,
          ),
          LeftBar(
            barWidth: 40,
          ),
          SizedBox(
            height: 20,
          ),
          RightBar(
            barWidth: 40,
          ),
          SizedBox(
            height: 20,
          ),
          RightBar(
            barWidth: 70,
          ),
          SizedBox(
            height: 20,
          ),
          RightBar(
            barWidth: 100,
          ),
        ],
      )),
    );
  }
}
