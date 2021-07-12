import 'package:flutter/material.dart';
import 'Constant.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ReuseablePlusMinusIcon extends StatelessWidget {
  int weight=40;
  final label;
  final weightValue;

  ReuseablePlusMinusIcon({@required this.label,@required this.weightValue});
  @override
  Widget build(BuildContext context) {
    return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children:<Widget>[
      Text(label,
      style:kLabelTextStyle,
      ),
      Text(weightValue.toString(),
      style: kNumberTextStyle,
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          GestureDetector(
              child: CircleAvatar(
              child: Icon(FontAwesomeIcons.plus),
              radius:30.0,
              ),
              onTap: () {
                print("$label pressed plus");
              },
          ),
          SizedBox(
            width: 20
          ,),
          GestureDetector(
              child: CircleAvatar(
              child: Icon(FontAwesomeIcons.minus),
              radius:30.0,
              backgroundColor: Color(0xFF4C4F5E),
              ),
              onTap: () {
                print("$label pressed minus");
              },
          ),
          
        ],
      ),
                

    ],
      );
  }
}