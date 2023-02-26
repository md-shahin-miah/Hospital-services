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
              icon: const Icon(Icons.arrow_back_ios),
              onPressed: () {
                print('back');
                Navigator.pop(context);
              },
              color: Colors.black87,
            ),
            title: const Text('Detail',
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
                const Text(
                  "Weekly Control",
                  style: TextStyle(
                    color: colorPrimary,
                    fontWeight: FontWeight.bold
                  ),
                ),
                const Text(
                  "Time to Control",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Text(
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
                  children: const [
                    Text(
                      "Thursday",
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
                const Text(
                  "|",
                  style: TextStyle(
                    fontSize: 72,
                    color: Colors.grey,
                  ),
                ),
                Icon(Icons.location_on_outlined),
                SizedBox(width: 10),
                Column(
                  children: const [
                    Text(
                      "Famous Hospital",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text("Kajol Shah road, Sylhet "),
                  ],  
                )                
              ],
            ),
            SizedBox(height:10),
            const Text("Amet - minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit. Exercitation veniam consequat sunt nostrud amet. Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit. Exercitation veniam consequat sunt nostrud amet."),
          ],
        ),
      ),
    );
  }
}