import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hospital_management/src/ui/pages/booking/page_booking_confirm.dart';

import '../../../constants/constant.dart';
import '../../../models/home_doctor.dart';
import '../../../models/user.dart';
import '../../components/dialog_form.dart';
import '../../widgets/booking/widget_bottom_nav.dart';
import '../../widgets/booking/widget_doctor_schedule_item.dart';
import '../../widgets/widget_short_description.dart';


class BookingDoctorDetail extends StatefulWidget {
  @override
  _BookingDoctorDetailState createState() => _BookingDoctorDetailState();
  const BookingDoctorDetail({Key? key, this.doctor}) : super(key: key);
  final HomeDoctor? doctor;
}

class _BookingDoctorDetailState extends State<BookingDoctorDetail> {
  List<User> userList = <User>[];

  void getDummyUser() async {
    var jsonData = await rootBundle.loadString("assets/json/user.json");
    var decodedJson = json.decode(jsonData);
    setState(() {
      for (int i = 0; i < decodedJson.length; i++) {
        userList.add(User.fromJson(decodedJson[i]));
      }
    });
  }

  @override
  void initState() {
    super.initState();
    getDummyUser();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: colorPrimary,
      body: Stack(
        children: [
          Positioned(
            left: 20,
            top: 40,
            child: FloatingActionButton(
              mini: true,
              onPressed: () {
                Navigator.pop(context);
              },
              backgroundColor: Colors.white,
              child: const Icon(
                Icons.arrow_back,
                color: Colors.black,
                size: 25,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: size.height * 0.14),
            width: size.width,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CircleAvatar(
                    backgroundImage: AssetImage(widget.doctor!.photos!),
                    backgroundColor: Colors.white,
                    radius: 70),
                const SizedBox(height: 10),
                Text(
                  widget.doctor!.name!,
                  style: const TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 6),
                Text(
                  widget.doctor!.specialist!,
                  style: const TextStyle(
                      color: Colors.white70,
                      fontSize: 20,
                      fontWeight: FontWeight.w400),
                )
              ],
            ),
          ),
          SizedBox.expand(
            child: DraggableScrollableSheet(
              initialChildSize: 0.45,
              minChildSize: 0.45,
              maxChildSize: 0.85,
              builder: (BuildContext context, s) {
                return Container(
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                      color: Colors.grey[50],
                      borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20))),
                  child: Stack(
                    children: [
                      Positioned(
                        left: size.width * 0.4,
                        child: Container(
                          width: 40,
                          height: 10,
                          margin: const EdgeInsets.only(bottom: 20),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: colorPrimary),
                        ),
                      ),
                      ListView(
                        controller: s,
                        padding: const EdgeInsets.only(top: 30, bottom: 10),
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                "Timetable",
                                style: TextStyle(
                                    color: colorPrimary,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(height: 10),
                              ScheduleItem(
                                day: "Monday",
                                time: "08.00-14.00",
                                hospital: "Famous General Hospital",
                              ),
                              ScheduleItem(
                                day: "Wednesday",
                                time: "08.00-14.00",
                                hospital: "Famous General Hospital",
                              )
                            ],
                          ),
                          const SizedBox(height: 20),
                          const ShortDescriptionWidget(
                            title: "Biography",
                            shortDesc:
                                "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum",
                          ),
                          const SizedBox(height: 20),
                          const ShortDescriptionWidget(
                            title: "Credentials",
                            shortDesc:
                                "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum",
                          ),
                          const SizedBox(height: 20),
                          const ShortDescriptionWidget(
                            title: "Academic Affiliation",
                            shortDesc:
                                "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum",
                          ),
                        ],
                      ),
                    ],
                  ),
                );
              },
            ),
          )
        ],
      ),
      bottomNavigationBar: BottomNavBooking(
        size: size,
        buttonClick: () {
          userList.isEmpty
              ? showFormBooking(size, true, context, () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext context) => BookingConfirm(
                                doctor: widget.doctor!,
                              )));
                })
              : Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (BuildContext context) => BookingConfirm(
                            doctor: widget.doctor!,
                            user: userList[0],
                          )));
        },
        buttonText: "Book now",
        colorButton: colorPrimary,
        textColor: Colors.white,
      ),
    );
  }
}
