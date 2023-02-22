import 'package:flutter/material.dart';

import '../../constants/constant.dart';


class ShortDescriptionWidget extends StatelessWidget {
  const ShortDescriptionWidget({
    Key? key,
    required this.title,
    required this.shortDesc,
  }) : super(key: key);

  final String title, shortDesc;

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text(
        title,
        style: TextStyle(
            color: colorPrimary, fontSize: 20, fontWeight: FontWeight.bold),
      ),
      SizedBox(height: 20),
      RichText(
        text: TextSpan(
            text: shortDesc,
            style: TextStyle(
              fontSize: 14,
              color: Colors.grey,
            )),
        textAlign: TextAlign.justify,
      )
    ]);
  }
}
