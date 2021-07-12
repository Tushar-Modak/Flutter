import 'package:bmi_calculator/Result_Calculation.dart';
import 'package:bmi_calculator/Result_page.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'ReuseableCard.dart';
import 'ReuseableIconCardChild.dart';
import 'Result_page.dart';
import 'Constant.dart';

int height = 170;
int weight = 60;
int age = 25;

enum Gender { male, female }

class InputPage extends StatefulWidget {

  
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender genderActiveStatus;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text('BMI CALCULATOR'),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      print("Male Icon Pressed");
                      setState(() {
                        genderActiveStatus = Gender.male;
                      });
                    },
                    child: ReuseableCard(
                      colour: genderActiveStatus == Gender.male
                          ? kActiveCardColor
                          : kInactiveCardColor,
                      cardChild: ReuseableIconCardChild(
                          gender: "MALE", genderIcon: FontAwesomeIcons.male),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      print("Female Icon Pressed");
                      setState(() {
                        genderActiveStatus = Gender.female;
                      });
                    },
                    child: ReuseableCard(
                      colour: genderActiveStatus == Gender.female
                          ? kActiveCardColor
                          : kInactiveCardColor,
                      cardChild: ReuseableIconCardChild(
                          gender: "FEMALE",
                          genderIcon: FontAwesomeIcons.female),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReuseableCard(
              colour: kActiveCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'HEIGHT',
                    style: kLabelTextStyle,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text(
                        height.toString(),
                        style: kNumberTextStyle,
                      ),
                      Text(
                        'cm',
                        style: kLabelTextStyle,
                      ),
                    ],
                  ),
                  Slider(
                    value: height.toDouble(),
                    min: 120,
                    max: 220,
                    activeColor: Color(0xFFEB1555),
                    inactiveColor: Colors.white,
                    onChanged: (double val) {
                      setState(() {
                        height = val.round();
                      });
                    },
                  )
                ],
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReuseableCard(
                    colour: kActiveCardColor,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        //ReuseablePlusMinusIcon(label:'WEIGHT',weightValue:40),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              'WEIGHT',
                              style: kLabelTextStyle,
                            ),
                            Text(
                              weight.toString(),
                              style: kNumberTextStyle,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                GestureDetector(
                                  child: CircleAvatar(
                                    child: Icon(FontAwesomeIcons.plus,
                                     color: Colors.white,
                                    ),
                                    radius: 30.0,
                                    backgroundColor: Color(0xFF4C4F5E),
                                  ),
                                  onTap: () {
                                    setState(() {
                                      weight++;
                                    });
                                  },
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                GestureDetector(
                                  child: CircleAvatar(
                                    child: Icon(FontAwesomeIcons.minus,
                                     color: Colors.white,
                                    ),
                                    radius: 30.0,
                                    backgroundColor: Color(0xFF4C4F5E),
                                  ),
                                  onTap: () {
                                    setState(() {
                                      if(weight>0)
                                      {
                                        weight--;
                                      }
                                      
                                      
                                    });
                                  },
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: ReuseableCard(
                    colour: kActiveCardColor,
                    cardChild: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              'AGE',
                              style: kLabelTextStyle,
                            ),
                            Text(
                              age.toString(),
                              style: kNumberTextStyle,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                GestureDetector(
                                  child: CircleAvatar(
                                    child: Icon(FontAwesomeIcons.plus,
                                    color: Colors.white,
                                    ),
                                    radius: 30.0,
                                    backgroundColor: Color(0xFF4C4F5E),
                                  ),
                                  onTap: () {
                                    setState(() {
                                      age++;
                                    });
                                  },
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                GestureDetector(
                                  child: CircleAvatar(
                                    child: Icon(FontAwesomeIcons.minus,
                                     color: Colors.white,
                                    ),
                                    radius: 30.0,
                                    backgroundColor: Color(0xFF4C4F5E),
                                  ),
                                  onTap: () {
                                    setState(() {
                                      if(age>0)
                                      {
                                        age--;
                                      }
                                    });
                                  },
                                ),
                              ],
                            ),
                          ],
                        ),
                  ),
                ),
              ],
            ),
          ),
          GestureDetector(
              child: Container(
              margin: EdgeInsets.only(top: 10),
              color: kBottomContainerColor,
              width: double.infinity,
              height: kBottomContainerHeight,
              child: Center(
                child: Text('CALCULATE',
                  style: kBottomContainerLabel,  
                ),
              ),
            ),
            onTap: () {
              ResultCalculation resultCalculation=ResultCalculation(height: height, weight: weight);
              double result=resultCalculation.bmiCalculation();
              String status=resultCalculation.bmiStatus(result);
              String advice=resultCalculation.bmiAdvice(result);
              Color statusColor=resultCalculation.statusColor(result);
              Navigator.push(context, MaterialPageRoute(builder: (context)=>ResultPage(result:result,status: status,advice: advice,statusColor: statusColor,)));
            },
          ),
        ],
      ),
    );
  }
}
