import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ResultCalculation{

double result;
int height;
int weight;

ResultCalculation({@required this.height,@required this.weight});

double bmiCalculation()
{
  double heightStore =height/100;
  result=weight/(heightStore*heightStore);
  return result; 
}

String bmiStatus(double bmi)
{
  if(bmi>=25)
   return 'Overweight';
  else if(bmi>18.5)
    return 'Normal';
  else
    return 'Underweight';
}

Color statusColor(double bmi)
{
  if(bmi>=25)
   return Colors.redAccent;
  else if(bmi>18.5)
    return Colors.greenAccent;
  else
    return Colors.yellowAccent;

}

String bmiAdvice(double bmi)
{
  if(bmi>=25)
  {
    return 'Please try to do Exercise more and loose weight! ';
  }
  else if(bmi>18.5)
  {
    return 'You are in good shape now!';
  }
  else
  {
    return 'Eat more food to gain weight!';
  }
}

}