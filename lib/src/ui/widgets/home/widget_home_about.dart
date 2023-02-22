import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../../constants/constant.dart';
import '../../../models/home_doctor.dart';
import '../../components/cards/cards_about.dart';
import '../../components/cards/cards_doctor.dart';
import '../../pages/about/page_about_app.dart';


class HomeAbout extends StatefulWidget {
  @override
  _HomeAboutState createState() => _HomeAboutState();
}

class _HomeAboutState extends State<HomeAbout> {
  List<HomeDoctor> doctorList = <HomeDoctor>[];

  void getDummyDoctor() async {
    var jsonData = await rootBundle.loadString("assets/json/doctor.json");
    var decodedJson = json.decode(jsonData);
    setState(() {
      for (int i = 0; i < decodedJson.length; i++) {
        doctorList.add(HomeDoctor.fromJson(decodedJson[i]));
      }
    });
  }

  @override
  void initState() {
    super.initState();
    this.getDummyDoctor();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 560,
      decoration: BoxDecoration(
        color: colorPrimary,
      ),
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(left: 20, top: 20),
                child: Text(
                  "Tentang Kami",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(right: 20, top: 20),
                child: Material(
                    color: Colors.transparent,
                    child: InkWell(
                      child: Container(
                        padding: EdgeInsets.all(5),
                        child: Text(
                          "Selengkapnya",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                          ),
                        ),
                      ),
                      onTap: () {
                        print("More clicked!");
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => AboutDashboard()),
                        );
                      },
                    )),
              )
            ],
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(20, 20, 20, 10),
            child: AboutCards(),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
            child: Container(
                height: 200,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (BuildContext context, int id) {
                    return DoctorCards(
                      homeDoctor: doctorList[id],
                    );
                  },
                  itemCount: doctorList == null ? 0 : doctorList.length,
                )),
          )
        ],
      ),
    );
  }
}
