import 'package:flutter/material.dart';

import '../../../models/partner.dart';


class PartnerCards extends StatefulWidget {
  final Partner partner;

  const PartnerCards({Key? key, required this.partner}) : super(key: key);
  @override
  _PartnerCardsState createState() => _PartnerCardsState();
}

class _PartnerCardsState extends State<PartnerCards> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 10, bottom: 5),
      padding: const EdgeInsets.all(5),
      height: 120,
      width: 140,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [BoxShadow(
          color: Colors.black.withOpacity(0.2),
          blurRadius: 6,
          offset: const Offset(1,1)
        )]
      ),
      child: InkWell(
        splashColor: Colors.blue.withAlpha(30),
        onTap: () {
          print('Card tapped.');
        },
        child: Container(
          height: 120,
          width:140,
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(10),
            topRight: Radius.circular(10)
          ),
          image: DecorationImage(
            image: AssetImage(widget.partner.logo!),
            fit: BoxFit.fitWidth
          ),
        ),
      ),
    )
  );
  }
}