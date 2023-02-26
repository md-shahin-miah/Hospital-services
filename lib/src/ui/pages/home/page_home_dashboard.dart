import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import '../../menuwidgets.dart';
import '../../widgets/home/widget_home_about.dart';
import '../../widgets/home/widget_home_carousel.dart';
import '../../widgets/home/widget_home_maps.dart';
import '../../widgets/home/widget_home_news.dart';


class HomeDashboard extends StatefulWidget {
  @override
  _HomeDashboardState createState() => _HomeDashboardState();
}

class _HomeDashboardState extends State<HomeDashboard> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text('Main Screen'),
          leading: MenuWidget(),
        ),
      body: ListView(
        children: <Widget>[
          // Carousel
          HomeCarousel(),
          const Padding(
            padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
            child: Text(
              "Meet Us",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold
              ),
            ),
          ),
          // Maps
          HomeMaps(),
          const Padding(
            padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
            child: Text(
              "Ibn Sina Hospital",
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
            child: Text(
              "Subhanighat, Sylhet 3100 \nMonday - Friday : 08.00 - 20.00 \nSaturday : 08.00 - 17.00",
            ),
          ),
           const Padding(
            padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
            child: Text(
              "\nPopular Medical Center",
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
            child: Text(
              "New Medical College Road, Sylhet \nMonday - Friday : 08.00 - 20.00 \nSaturday : 08.00 - 13.00",
            ),
          ),
           const Padding(
            padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
            child: Text(
              "\nJRRMC sylhet",
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.fromLTRB(20, 0, 20, 20),
            child: Text(
              "Sunamgonj Road, Sylhet.\n Monday - Friday : 07.00 - 14.00, 16.00 - 19.00 \nSaturday : 07.00 - 12.00"
            ),
          ),
          // About
          HomeAbout(),
          const Padding(
            padding: EdgeInsets.fromLTRB(20, 30, 20, 20),
            child: Text(
              "Latest news",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18
              ),
            ),
          ),
          // News
          HomeNews(),
          const Padding(
            padding: EdgeInsets.fromLTRB(20, 30, 20, 10),
            child: Text(
              "Contact & Complaints",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
            child: Row(
              children: const [
                Icon(Icons.location_on_outlined),
                SizedBox(width:10),
                Text(
                  "End Level Hospital \nShibganj,sylhet ",
                ),
              ],
            )
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
            child: Row(
              children: const [
                Icon(Icons.email_outlined),
                SizedBox(width:10),
                Text(
                  "endlevel@med.dev",
                ),
              ],
            )
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(20, 10, 20,30),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: const [
                  Icon(Icons.phone_callback_outlined),
                  SizedBox(width:10),
                  Text(
                    "01788885000",
                  ),
                  SizedBox(width:30),
                  Icon(Icons.location_city_outlined),
                  SizedBox(width:10),
                  Text(
                    "+612 8000 0000",
                  ),
                ],
              ),
            )
          ),
        ]
      ),
    );
  }
}