// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors, sized_box_for_whitespace, use_key_in_widget_constructors

import 'package:flutter_projects/constants/app_constants.dart';
import 'package:flutter_projects/widgets/left_bar.dart';
import 'package:flutter_projects/widgets/right_bar.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  // const name({super.key});

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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
        elevation: 0,
        centerTitle: true,
      ),
      backgroundColor: mainHexColor,
      body: SingleChildScrollView(
          child: Column(
        children: [
          SizedBox(
            height: 20,
          ),Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              width: 130,
              child: TextField(
                style: TextStyle(
                  fontSize: 42,
                  fontWeight: FontWeight.w300,
                  color: Colors.white
                ),
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "Height",
                  hintStyle: TextStyle(
                    fontSize: 42,
                    fontWeight: FontWeight.w300,
                    color: Colors.white.withOpacity(.8)
                    ),
                ),
              ),
            ),
            Container( width: 130,
              child: TextField(
                style: TextStyle(
                  fontSize: 42,
                  fontWeight: FontWeight.w300,
                  color:Colors.white
                ),
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "Weight",
                  hintStyle: TextStyle(
                    fontSize: 42,
                    fontWeight: FontWeight.w300,
                    color: Colors.white.withOpacity(.8)
                    ),
                     ),
              ),
            )

          ],),
         const SizedBox(height: 30,),
          Container(
            child: Text("Calculate", style:TextStyle(fontSize: 22,fontWeight: FontWeight.bold, color: accentHexColor),),
          ),
          const SizedBox(height: 50,),
          Container(
            child: Text("10", style: TextStyle(fontSize: 50, color:Colors.white),),
          ),
          const SizedBox(height: 30,),
          Container(
             child: Text("Normal weight", style: TextStyle(fontSize: 22,fontWeight: FontWeight.w400, color: accentHexColor),),
          ),
          
           SizedBox(height: 10,),
           LeftBar(barWidth:40,),
           SizedBox(height: 20,),
           LeftBar(barWidth:70,),
           SizedBox(height: 20,),
           LeftBar(barWidth:40,),


           SizedBox(height: 20,),
           RightBar(barWidth:40,),
           SizedBox(height: 20,),
           RightBar(barWidth:70,),
           SizedBox(height: 20,),
           RightBar(barWidth:100,),
          

          ],
      )),
    );
  }
}
