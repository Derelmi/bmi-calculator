import 'package:flutter/material.dart';
 import 'package:flutter_projects/constants/app_constants.dart';

class RightBar extends StatelessWidget {
  // final double barWidth;

  // const RightBar({Key key, @required this.barWidth}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
         Container(
          height: 25,
          width: 100,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(20),
              bottomRight: Radius.circular(20),
            ),
         color: accentHexColor),
        ),
      ],
    );
  }
}