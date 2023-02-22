import 'package:flutter/material.dart';

import '../../../constants/constant.dart';


class ProfileDetail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
        return Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0.0,
            leading: IconButton(
              icon: Icon(Icons.arrow_back_ios),
              onPressed: () {
                print('back');
                Navigator.pop(context);
              },
              color: Colors.black87,
            ),
            title: Text('Detail',
              style: TextStyle(
                color: Colors.black,
                fontSize: 24,
                fontWeight: FontWeight.bold
              ),
            ),
          ),
          body: Container(
            padding: EdgeInsets.all(20),
            child: ListView(
              children: [
                Text(
                  "Kontrol Mingguan",
                  style: TextStyle(
                    color: colorPrimary,
                    fontWeight: FontWeight.bold
                  ),
                ),
                Text(
                  "Waktunya Kontrol",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "06 Agustus 2020",
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.grey,
                  ),
                ),
                SizedBox(height:10),
            Row(
              children: [
                Column(
                  children: [
                    Text(
                      "Kamis",
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                    Text(
                      "08.30",
                      style: TextStyle(
                        fontSize: 28,
                        color: colorPrimary,
                      ),
                    ),
                  ],  
                ),
                SizedBox(width: 10),
                Text(
                  "|",
                  style: TextStyle(
                    fontSize: 72,
                    color: Colors.grey,
                  ),
                ),
                Icon(Icons.location_on_outlined),
                SizedBox(width: 10),
                Column(
                  children: [
                    Text(
                      "Rumah Sakit SMKDEV",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text("Jl. Margacinta No. 29"),
                  ],  
                )                
              ],
            ),
            SizedBox(height:10),
            Text("Amet - minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit. Exercitation veniam consequat sunt nostrud amet. Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit. Exercitation veniam consequat sunt nostrud amet."),
          ],
        ),
      ),
    );
  }
}