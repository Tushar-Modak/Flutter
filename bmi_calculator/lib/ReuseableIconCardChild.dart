import 'package:flutter/material.dart';
import 'Constant.dart';
class ReuseableIconCardChild extends StatelessWidget {
  final gender;
  final genderIcon;
  ReuseableIconCardChild({@required this.gender,@required this.genderIcon});
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children:<Widget>[
        Icon(genderIcon,
         size: 50,
        ),
        SizedBox(
          height: 20,
        ),
        Text(gender,
        style: kLabelTextStyle,
        ),
      ]
    );
  }
}