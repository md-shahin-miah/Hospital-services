import 'package:flutter/material.dart';

import '../../../constants/constant.dart';
import '../../pages/about/page_about_app.dart';


class CarouselCards extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 280,
      child: Stack(
        children: [
          Container(
            height: 280,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/hospital_03.jpg'),
                fit: BoxFit.cover
              ),
            ),
          ),
          Column(
            children: [
              Container(
                margin: EdgeInsets.all(10),
                child: const Text(
                  "Overview of the Famous Hospital",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    shadows: [
                      Shadow(
                        blurRadius: 15.0,
                        color: Colors.black,
                        offset: Offset(2.0, 2.0),
                        ),
                      ],
                  ),
                )
              ),
              Container(
                margin: EdgeInsets.all(10),
                child: const Text(
                  "The Famous Hospital is the best hospital in Sylhet, supported by the best workforce in Bangladesh.",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    shadows: [
                      Shadow(
                        blurRadius: 15.0,
                        color: Colors.black,
                        offset: Offset(2.0, 2.0),
                        ),
                      ],
                  ),
                )
              ),                
            ],
          ),
          Positioned(
            top: 220,
            left: 300,
            child: ElevatedButton(
              style: ButtonStyle(
                    foregroundColor: MaterialStateProperty.all<Color>(colorPrimary),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                            side: BorderSide(color: Colors.grey)))),

            onPressed: (){
              print("floating pressed!");
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => AboutDashboard()),
                  );
            },
              child: const Text('Read',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white
              ),
            )
          ),
        ),                
      ],
    )                
  );
  }
}