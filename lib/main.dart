import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/config.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:hospital_management/src/models/menuitems.dart';
import 'package:hospital_management/src/ui/dashboardmain.dart';

import 'package:hospital_management/src/ui/pages/about/page_about_app.dart';
import 'package:hospital_management/src/ui/pages/feedback/page_feedback_dashboard.dart';
import 'package:hospital_management/src/ui/pages/partner/page_partner_dashboard.dart';
import 'package:hospital_management/src/ui/pages/profile/page_profile_dashboard.dart';

import 'src/ui/components/bottom_navigation.dart';
import 'src/ui/menuscreen.dart';
import 'src/ui/pages/home/page_home_dashboard.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  MenuItems currentItem = MenuItemsGenerate.payment;

  @override
  Widget build(BuildContext context) => MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ZoomDrawer(
        borderRadius: 5,
        angle: -5,
        androidCloseOnBackTap: true,
        showShadow: false,
        mainScreenAbsorbPointer: true,
        mainScreenTapClose: true,
        menuBackgroundColor: Colors.purple,
        style: DrawerStyle.defaultStyle,
        slideWidth: 200,
        menuScreenWidth: 280,
        mainScreen: getScreen(),
        menuScreen: Builder(
          builder: (context) => MenuScreen(
              currentItem: currentItem,
              onSelectedItem: (item) {
                setState(() => currentItem = item);
                ZoomDrawer.of(context)!.close();
              }),
        ),
      ));

  Widget getScreen() {
    switch (currentItem) {
      case MenuItemsGenerate.payment:
        return MainBottomNav();
      case MenuItemsGenerate.dashboard:
        return DashboardMain();
      case MenuItemsGenerate.aboutus:
        return AboutDashboard();
      case MenuItemsGenerate.partners:
        return PartnerDashboard();
      case MenuItemsGenerate.feedback:
        return FeedbackDashboard();
      default:
        return MainBottomNav();
    }
  }
}
