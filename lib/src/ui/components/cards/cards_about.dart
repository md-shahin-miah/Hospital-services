import 'package:flutter/material.dart';

import '../../pages/about/page_about_app.dart';


class AboutCards extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 240,
      width: 380,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            blurRadius: 6,
            offset: Offset(1, 1))
          ]
        ),
      child: InkWell(
        splashColor: Colors.blue.withAlpha(30),
        onTap: () {
          print('Card tapped.');
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => AboutDashboard()),
          );
        },
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 160,
                  width: 380,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10)
                    ),
                    image: DecorationImage(
                      image: AssetImage('assets/images/hospital_03.jpg'),
                      fit: BoxFit.cover
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 2,horizontal: 10),
                  child: const Text(
                    "End Level Hospital Is The Best Hospital in Sylhet",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      )
    );
  }
}
