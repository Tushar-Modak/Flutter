import 'package:bmi_calculator/Constant.dart';
import 'package:bmi_calculator/ReuseableCard.dart';
import 'package:flutter/material.dart';
import 'input_page.dart';

int x;
class ResultPage extends StatelessWidget {
  
  final double result;
  final String status;
  final String advice; 
  final Color statusColor;
  ResultPage({@required this.result,@required this.status,@required this.advice,@required this.statusColor});

  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xFF090C20),
        scaffoldBackgroundColor: Color(0xFF0A0E21),
        
      
      ),
      home: Scaffold(appBar: 
      AppBar(
        title: Center(
          child: Text('Your BMI Result',
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.w900),
          ),
        ),
       ),

       body: Column(
         mainAxisAlignment: MainAxisAlignment.center,
         crossAxisAlignment: CrossAxisAlignment.stretch,
         children:[
           Expanded(
             flex: 6,
             child: ReuseableCard(colour: kActiveCardColor,
             cardChild: Column(
               
               mainAxisAlignment: MainAxisAlignment.center,
               children: [
                 Text(status,
                 style: TextStyle(
                   color: statusColor,
                   fontSize: 25,
                   fontWeight: FontWeight.bold,
                  ),
                 ),
                 SizedBox(
                   height:50,
                 ),

                 Text(result.toStringAsFixed(1),
                 style: TextStyle(
                   color: Colors.white,
                   fontSize: 80,
                   fontWeight: FontWeight.w900,
                  ),
                 ),

                 SizedBox(
                   height:50,
                 ),

                 Text(advice,
                 textAlign:TextAlign.center,
                 style: TextStyle(
                   color: Colors.white,
                   fontSize: 20,
                   fontWeight: FontWeight.w400,
                  ),
                 ),


               ],
              ),
             ),
            ),
           Expanded(
             flex: 1,
             child: GestureDetector(
              child: Container(
              margin: EdgeInsets.only(top: 10),
              color: kBottomContainerColor,
              width: double.infinity,
              height: kBottomContainerHeight,
              child: Center(
                child: Text('RE-CALCULATE',
                  style: kBottomContainerLabel,  
                ),
              ),
            ),
            onTap: () {
              print('Calculator running!');
              Navigator.push(context, MaterialPageRoute(builder: (context)=>InputPage()));
              },
            ),
          ),
          
         ],
       ),
      ),
    );
  }
}