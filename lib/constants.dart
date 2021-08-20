import 'package:flutter/material.dart';
import 'input_page.dart';
import 'dart:math';

const textStyle = TextStyle(
  fontSize: 18.0,
  color: Color(0xFF8D8E98),
);

const bottomContainerHeight = 80.0;
const activeCardColor = Color(0xFF1D1E33);
const inactiveCardColor = Color(0xFF111328);
const bottomCardColor = Color(0xFFEB1555);

const numberTextStyle = TextStyle(
  fontSize: 50.0,
  fontWeight: FontWeight.w900,
);

const titleTextStyle = TextStyle(
  fontSize: 50.0,
  fontWeight: FontWeight.bold,
);

const resultTextStyle = TextStyle(
  fontSize: 70.0,
  fontWeight: FontWeight.bold,
);

const resultDescriptionTextStyle = TextStyle(
  fontSize: 20.0,
);

int height = 180;
int weight = 60;
int age = 19;
String result = '';
double bmi = 0;
String bmiComment = '';
String weightStandard = '';

void calculateBMI(height, weight) {
  bmi = weight / ((height / 100) * (height / 100));
  result = bmi.toStringAsFixed(1);
}

Gender selectedGender = Gender.male;

void bmiResults() {
  if (bmi <= 18.5) {
    weightStandard = 'Underweight';
    bmiComment = 'You are underweight';
  } else if (bmi >= 18.5 && bmi <= 24.9) {
    weightStandard = 'Healthy weight';
    bmiComment = 'You are at a healthy weight';
  } else if (bmi >= 25.0 && bmi <= 29.9) {
    weightStandard = 'Overweight';
    bmiComment = 'You are overweight';
  } else {
    weightStandard = 'Obese';
    bmiComment = 'You are obese';
  }
}
