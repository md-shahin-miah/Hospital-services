import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../../constants/constant.dart';
import '../../../models/event.dart';
import '../../../models/service.dart';
import '../../components/cards/cards_event.dart';
import '../../components/cards/cards_layanan.dart';
import '../../widgets/widget_header.dart';


class ServiceDashboard extends StatefulWidget {
  @override
  _ServiceDashboardState createState() => _ServiceDashboardState();
}

class _ServiceDashboardState extends State<ServiceDashboard> {
  List<Service> servicesList = [];
  List<Event> eventList = [];

  void getLayanan() async {
    var jsonData = await rootBundle.loadString("assets/json/layanan.json");
    var decodedJson = json.decode(jsonData);

    setState(() {
      for (var line in decodedJson) {
        servicesList.add(Service.fromJson(line));
      }
    });
  }

  void getEvents() async {
    var jsonData = await rootBundle.loadString("assets/json/event.json");
    var decodedJson = json.decode(jsonData);

    setState(() {
      for (var line in decodedJson) {
        eventList.add(Event.fromJson(line));
      }
    });
  }

  @override
  void initState() {
    super.initState();
    this.getLayanan();
    this.getEvents();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        body: SingleChildScrollView(
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            HeaderWidget(
              size: size,
              title: "Services",
            ),
            SizedBox(height: 20),
            const Padding(
              padding: EdgeInsets.fromLTRB(10, 10, 20, 10),
              child: Text(
                "Latest Facilities & Services",
                style: TextStyle(
                    color: colorPrimary,
                    fontWeight: FontWeight.bold,
                    fontSize: 18),
              ),
            ),
            Container(
                height: 200,
                margin: const EdgeInsets.symmetric(horizontal: 10),
                child: LayananButtonsWidget(list: servicesList)),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Divider(),
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(10, 10, 20, 0),
              child: Text(
                "Event & Promo",
                style: TextStyle(
                    color: colorPrimary,
                    fontWeight: FontWeight.bold,
                    fontSize: 18),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: EventButtonsWidget(list: eventList),
            )
          ],
        ),
      ),
    ));
  }
}
