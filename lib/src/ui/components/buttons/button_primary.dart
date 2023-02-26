import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hospital_management/src/constants/constant.dart';

class ButtonPrimary extends StatelessWidget {
  const ButtonPrimary({
    Key? key,
    required this.color,
    required this.textColor,
    required this.buttonText,
    this.onClicked,
  }) : super(key: key);

  final Color color, textColor;
  final String buttonText;
  final onClicked;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onClicked,
      style: ButtonStyle(
          foregroundColor: MaterialStateProperty.all<Color>(textColor),
          backgroundColor: MaterialStateProperty.all<Color>(color),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                  side: BorderSide(color: colorPrimary)))),
      child: Container(
        height: 50,
        padding: EdgeInsets.symmetric(horizontal: 45),
        child: Center(
          child: Text(
            buttonText,
            style: TextStyle(fontSize: 18),
          ),
        ),
      ),
    );
  }
}
