import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../constants/constant.dart';
import '../pages/about/page_about_app.dart';
import '../pages/booking/page_booking_dashboard.dart';
import '../pages/home/page_home_dashboard.dart';

import '../pages/partner/page_partner_dashboard.dart';
import '../pages/profile/page_profile_dashboard.dart';
import '../pages/services/page_service_dashboard.dart';


class MainBottomNav extends StatefulWidget {
  @override
  _MainBottomNavState createState() => _MainBottomNavState();
}

class _MainBottomNavState extends State<MainBottomNav> {
  int _selectedIndex = 0;
  int currentIndex = 0;
  String text = 'Home';
  Future<void> _onItemTapped(int index) async {
    switch (index) {
      case 0:
        setState(() {
          _selectedIndex = index;
        });
        break;
      case 1:
        setState(() {
          _selectedIndex = index;
        });
        break;
      case 2:
        setState(() {
          _selectedIndex = index;
        });
        break;
      case 3:
        setState(() {
          _selectedIndex = index;
        });
        break;
      // case 4:
      //   await showMenu(
      //     context: context,
      //     position: RelativeRect.fromLTRB(MediaQuery.of(context).size.width,
      //       MediaQuery.of(context).size.height * 0.7, 0.0, 0.0),
      //     elevation: 0,
      //     color: Colors.transparent,
      //     items: [
      //       PopupMenuItem(
      //         value: null,
      //         child: Container(
      //           margin: EdgeInsets.all(2),
      //           width: 160,
      //           child: ElevatedButton(
      //             style: ButtonStyle(
      //
      //                 foregroundColor: MaterialStateProperty.all<Color>(colorPrimary),
      //                 shape: MaterialStateProperty.all<RoundedRectangleBorder>(
      //                     RoundedRectangleBorder(
      //                         borderRadius: BorderRadius.circular(20),
      //                         side: BorderSide(color: Colors.red)))),
      //
      //               onPressed: () {
      //                 print("about us pressed");
      //                 Navigator.push(
      //                   context,
      //                   MaterialPageRoute(
      //                     builder: (context) => AboutDashboard()),
      //                 );
      //               },
      //
      //               child: Row(
      //                 children: const [
      //                   Text(
      //                     "About Us",
      //                     style: TextStyle(color: Colors.white),
      //                   ),
      //                   SizedBox(width: 5),
      //                   Icon(
      //                     Icons.group_outlined,
      //                     color: Colors.white,
      //                   )
      //               ],
      //             ),
      //           ),
      //         )
      //       ),
      //       PopupMenuItem(
      //         child: Container(
      //           margin: EdgeInsets.all(2),
      //           width: 180,
      //
      //           child: ElevatedButton(
      //             style: ButtonStyle(
      //
      //                 foregroundColor: MaterialStateProperty.all<Color>(colorPrimary),
      //                 shape: MaterialStateProperty.all<RoundedRectangleBorder>(
      //                     RoundedRectangleBorder(
      //                         borderRadius: BorderRadius.circular(20),
      //                        ))),
      //
      //             onPressed: () {
      //               print("partner & career pressed");
      //               Navigator.push(
      //                 context,
      //                 MaterialPageRoute(
      //                   builder: (context) => PartnerDashboard()),
      //               );
      //             },
      //
      //             child: Row(
      //               children: const [
      //                 Text(
      //                   "Partner & Career",
      //                   style: TextStyle(color: Colors.white),
      //                 ),
      //                 SizedBox(width: 5),
      //                 Icon(
      //                   Icons.work_outline,
      //                   color: Colors.white,
      //                 )
      //               ],
      //             ),
      //           ),
      //         ),
      //       ),
      //       PopupMenuItem(
      //         child: Container(
      //           margin: EdgeInsets.all(1),
      //           width: 130,
      //           child: ElevatedButton(
      //             style: ButtonStyle(
      //                 foregroundColor: MaterialStateProperty.all<Color>(colorPrimary),
      //                 shape: MaterialStateProperty.all<RoundedRectangleBorder>(
      //                     RoundedRectangleBorder(
      //                       borderRadius: BorderRadius.circular(20),
      //                     ))),
      //
      //             onPressed: () {
      //               Navigator.push(
      //                 context,
      //                 MaterialPageRoute(
      //                   builder: (context) => FeedbackDashboard()),
      //               );
      //             },
      //
      //             child: Row(
      //               children: const [
      //                 Text(
      //                   "Feedback",
      //                   style: TextStyle(color: Colors.white),
      //                 ),
      //                 SizedBox(width: 5),
      //                 Icon(
      //                   Icons.feedback_outlined,
      //                   color: Colors.white,
      //                 )
      //               ],
      //             ),
      //           ),
      //         ),
      //       ),
      //     ],
      //   );
      //   break;
      default:
        setState(() {
          _selectedIndex = index;
        });
    }
  }

  List<Widget> pageList = <Widget>[];

  @override
  void initState() {
    pageList.add(HomeDashboard());
    pageList.add(ServiceDashboard());
    pageList.add(BookingDashboard());
    pageList.add(ProfileDashboard());

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _selectedIndex,
        children: pageList,
      ),
      bottomNavigationBar: BottomNavigationBar(
        showUnselectedLabels: true,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined), label: "Home"),
          BottomNavigationBarItem(
            icon: Icon(Icons.work_outline_outlined),
            label: "Services",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_today_outlined),
            label: 'Booking',
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.person_outline_outlined), label: 'Profile'),

        ],
        unselectedItemColor: Colors.grey[400],
        selectedItemColor: colorPrimary,
        backgroundColor: Colors.white,
        iconSize: 25,
        elevation: 0.0,
        onTap: _onItemTapped,
        currentIndex: _selectedIndex,
      ),
    );
  }
}
