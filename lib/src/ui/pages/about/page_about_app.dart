import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../constants/constant.dart';



class AboutDashboard extends StatefulWidget {
  @override
  _AboutDashboardState createState() => _AboutDashboardState();
}

class _AboutDashboardState extends State<AboutDashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        iconTheme: IconThemeData(color: Colors.black),
        title: Text(
          "Tentang Kami",
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 20
          ),
        ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            print('back');
            Navigator.pop(context);
          },
          color: Colors.black87,
        ),
      ),
      body: Container(
        child: Column(
          children: [
            Container(
              height:200,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image:AssetImage('assets/images/about.jpg'),
                  fit: BoxFit.cover
                )
              ),
            ),
            Container(
              padding: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children:[
                  Text(
                    "Sekilas Tentang RS Tingkat Akhir",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: colorPrimary,
                    )
                  ),
                  SizedBox(height: 10),
                  Text(
                    "RS Tingkat Akhir merupakan rumah sakit yang rumah sakit terbaik di Jawa Barat yang didukung oleh tenaga kerja terbaik se-Indonesia.",
                  ),
                  SizedBox(height: 10),
                  Text("Didirikan Oleh:\n- Zanuar Ekaputra\n- Agung Satrio\n- Pratama Yoga")
                ]
              )
            )
            
          ],
        ),
      ),
    );
  }
}
