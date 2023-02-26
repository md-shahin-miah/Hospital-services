import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../constants/constant.dart';
import '../../menuwidgets.dart';



class AboutDashboard extends StatefulWidget {
  @override
  _AboutDashboardState createState() => _AboutDashboardState();
}

class _AboutDashboardState extends State<AboutDashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: colorPrimary,
        elevation: 0.0,
        iconTheme: const IconThemeData(color: Colors.black),
        title: const Text(
          "About Us",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 20
          ),
        ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back,color: Colors.white,),
          onPressed: () {
            print('back');
            Navigator.pop(context);
          },
          color: Colors.black87,
        ),
      ),
      body: Column(
        children: [
          Container(
            height:200,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image:AssetImage('assets/images/about.jpg'),
                fit: BoxFit.cover
              )
            ),
          ),
          Container(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children:const [
                Text(
                  "Overview of the Famous Hospital",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    color: colorPrimary,
                  )
                ),
                SizedBox(height: 10),
                Text(
                  "The Famous Hospital is the best hospital in Sylhet, supported by the best workforce in Bangladesh.",
                ),
                SizedBox(height: 10),
                Text(
                    "Established By:\n- Shahin miah \n- Sattbroto\n- Ziadul islam")
              ]
            )
          )

        ],
      ),
    );
  }
}
