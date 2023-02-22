import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hospital_management/src/ui/pages/booking/page_dokter_detail.dart';

import '../../../constants/constant.dart';
import '../../../models/home_doctor.dart';
import '../../widgets/booking/widget_booking_item.dart';
import '../../widgets/widget_header.dart';


class BookingDashboard extends StatefulWidget {
  const BookingDashboard({Key? key}) : super(key: key);

  @override
  _BookingDashboardState createState() => _BookingDashboardState();
}

class _BookingDashboardState extends State<BookingDashboard> {
  @override
  void initState() {
    super.initState();
    this.getDummyDoctor();
  }

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
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: Column(
        children: [
          HeaderWidget(
            size: size,
            title: "Booking",
          ),
          doctorList.length == 0
              ? Container(
                  margin: EdgeInsets.only(top: 20),
                  child: CircularProgressIndicator(
                    backgroundColor: colorPrimary,
                    valueColor: AlwaysStoppedAnimation(Colors.white),
                  ))
              : Expanded(
                  child: ListView.builder(
                  itemCount: doctorList.length,
                  itemBuilder: (BuildContext context, int index) {
                    return BookingItem(
                      doctor: doctorList[index],
                      clickBack: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (BuildContext context) =>
                                    BookingDoctorDetail(
                                      doctor: doctorList[index],
                                    )));
                      },
                    );
                  },
                )),
        ],
      ),
    );
  }
}
