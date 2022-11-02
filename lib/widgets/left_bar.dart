import 'package:flutter/material.dart';
 import 'package:flutter_projects/constants/app_constants.dart';

class LeftBar extends StatelessWidget {
  var barWidth;

  // final double barWidth;
// const LeftBar({Key key, required this.barWidth}) : super(key: key);
 // get barWidth => null;

  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
         Container(
          height: 25,
          width: barWidth,
          // width: 100,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              bottomLeft: Radius.circular(20),
            ),
         color: accentHexColor),
        ),
      ],
    );
  }
}