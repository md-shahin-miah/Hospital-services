import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

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
      body: ListView(
        children: <Widget>[
          // Carousel
          HomeCarousel(),
          Padding(
            padding: EdgeInsets.fromLTRB(20, 20, 20, 10),
            child: Text(
              "Temui Kami",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold
              ),
            ),
          ),
          // Maps
          HomeMaps(),
          Padding(
            padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
            child: Text(
              "Rumah Sakit Tingkat Akhir",
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
            child: Text(
              "Jl. Margacinta No. 29 \nSenin - Jumat : 08.00 - 20.00 \nSabtu : 08.00 - 17.00",
            ),
          ),
           Padding(
            padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
            child: Text(
              "\nKlinik Tingkat Akhir",
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
            child: Text(
              "Jl. Mars Barat I No. 9 \nSenin - Jumat : 08.00 - 20.00 \nSabtu : 08.00 - 13.00",
            ),
          ),
           Padding(
            padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
            child: Text(
              "\nBPJS",
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(20, 0, 20, 20),
            child: Text(
              "Senin - Jumat : 07.00 - 14.00, 16.00 - 19.00 \nSabtu : 07.00 - 12.00"
            ),
          ),
          // About
          HomeAbout(),
          Padding(
            padding: EdgeInsets.fromLTRB(20, 30, 20, 20),
            child: Text(
              "Berita Terbaru",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18
              ),
            ),
          ),
          // News
          HomeNews(),
          Padding(
            padding: EdgeInsets.fromLTRB(20, 30, 20, 10),
            child: Text(
              "Kontak & Pengaduan",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
            child: Row(
              children: [
                Icon(Icons.location_on_outlined),
                SizedBox(width:10),
                Text(
                  "Rumah Sakit Tingkat Akhir \nJl. Margacinta No. 29",
                ),
              ],
            )
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
            child: Row(
              children: [
                Icon(Icons.email_outlined),
                SizedBox(width:10),
                Text(
                  "info@smk.dev",
                ),
              ],
            )
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(20, 10, 20,30),
            child: Row(
              children: [
                Icon(Icons.phone_callback_outlined),
                SizedBox(width:10),
                Text(
                  "+622 7000 0000",
                ),
                SizedBox(width:30),
                Icon(Icons.location_city_outlined),
                SizedBox(width:10),
                Text(
                  "+622 7000 0000",
                ),
              ],
            )
          ),
        ]
      ),
    );
  }
}