import 'package:flutter/material.dart';

const colorPrimary = Color(0xFF2962FF);
const colorSecondary = Color(0xFFFF5E20);
const colorLabel1 = Color(0xFFF2994A);
const colorLabel2 = Color(0xFF6FCF97);

List<BoxShadow> darkShadow = [
  BoxShadow(
      offset: Offset(0, 0),
      blurRadius: 6,
      spreadRadius: 0,
      color: Colors.black12)
];

List<BoxShadow> lightShadow = [
  BoxShadow(
    color: Colors.grey[100]!,
    offset: Offset(0, 0),
    blurRadius: 10,
  )
];
