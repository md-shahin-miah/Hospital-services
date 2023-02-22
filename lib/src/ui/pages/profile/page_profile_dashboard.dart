import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../constants/constant.dart';
import '../../widgets/profile/widget_profile_list_item.dart';


class ProfileDashboard extends StatefulWidget {
  @override
  _ProfileDashboardState createState() => _ProfileDashboardState();
}

class _ProfileDashboardState extends State<ProfileDashboard> {
  late bool read;
  bool active = true;
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: colorPrimary,
      body: SingleChildScrollView(
        child: Container(
            child: Column(
          children: <Widget>[
            Container(
              width: size.width,
              padding: EdgeInsets.fromLTRB(20, size.height * 0.07, 20, 0),
              child: Text(
                "Profile",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                  top: size.height * 0.05, left: 10, right: 10, bottom: 10),
              width: size.width,
              child: Stack(
                children: [
                  Container(
                    width: size.width,
                    margin: EdgeInsets.only(top: 50),
                    padding: EdgeInsets.only(bottom: 20, top: 80),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.white,
                        
                        ),
                    child: Column(
                      children: [
                        Text(
                          "Irfan Trianto",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 10),
                        Text(
                          "Laki-laki",
                          style: TextStyle(
                              // fontWeight: FontWeight.bold
                              ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          "081394777888",
                          style: TextStyle(
                              // fontWeight: FontWeight.bold
                              ),
                        ),
                        SizedBox(height: 20),
                        Container(
                          width: size.width * 0.6,
                          padding: EdgeInsets.all(2),
                          decoration: BoxDecoration(
                              color: Colors.grey[200],
                              borderRadius: BorderRadius.circular(5)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    active = true;
                                  });
                                },
                                child: Stack(
                                  children: [
                                    Container(
                                        width: 120,
                                        padding:
                                            EdgeInsets.symmetric(vertical: 10),
                                        decoration: BoxDecoration(
                                            color: active
                                                ? Colors.white
                                                : Colors.transparent,
                                            borderRadius:
                                                BorderRadius.circular(5)),
                                        child: Center(
                                            child: Text(
                                          "Notifikasi",
                                          style: TextStyle(color: Colors.black),
                                        ))),
                                    Positioned(
                                      top: 1.0,
                                      right: 4.0,
                                      child: Container(
                                        padding:
                                            EdgeInsets.symmetric(horizontal: 5),
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(20),
                                            color: colorSecondary),
                                        child: Text("2",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 12,
                                                fontWeight: FontWeight.w500)),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    active = false;
                                  });
                                },
                                child: Stack(
                                  children: [
                                    Container(
                                        width: 120,
                                        padding:
                                            EdgeInsets.symmetric(vertical: 10),
                                        decoration: BoxDecoration(
                                            color: !active
                                                ? Colors.white
                                                : Colors.transparent,
                                            borderRadius:
                                                BorderRadius.circular(5)),
                                        child: Center(
                                            child: Text(
                                          "Histori",
                                          style: TextStyle(color: Colors.black),
                                        ))),
                                    Positioned(
                                      top: 1.0,
                                      right: 4.0,
                                      child: Container(
                                        padding:
                                            EdgeInsets.symmetric(horizontal: 5),
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(20),
                                            color: colorSecondary),
                                        child: Text("2",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 12,
                                                fontWeight: FontWeight.w500)),
                                      ),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                        SizedBox(height: 20),
                        // NOTIFIKASI
                        active
                            ? Container(
                                child: Column(
                                  children: [
                                    ProfileListItem(
                                      title: "Waktunya Kontrol Nih !",
                                      subtitle:
                                          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard ",
                                      badge: "New",
                                      waktu: "2 jam yang lalu",
                                      read: false,
                                      done: false,
                                      type: active,
                                    ),
                                    ProfileListItem(
                                      title: "Waktunya Kontrol Nih !",
                                      subtitle:
                                          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard ",
                                      badge: "New",
                                      waktu: "2 jam yang lalu",
                                      read: true,
                                      done: true,
                                      type: active,
                                    ),
                                    ProfileListItem(
                                      title: "Event",
                                      subtitle:
                                          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard ",
                                      badge: "New",
                                      waktu: "2 jam yang lalu",
                                      read: false,
                                      done: false,
                                      type: active,
                                    ),
                                    ProfileListItem(
                                      title: "Promo",
                                      subtitle:
                                          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard ",
                                      badge: "New",
                                      waktu: "2 jam yang lalu",
                                      read: true,
                                      done: true,
                                      type: active,
                                    )
                                  ],
                                ),
                              )
                            :
                            // HISTORI
                            Container(
                                child: Column(
                                  children: [
                                    ProfileListItem(
                                      title: "DOKTOR 1",
                                      subtitle: "ahli syaraf",
                                      badge: "2 hari lagi",
                                      waktu: "2 jam yang lalu",
                                      read: false,
                                      done: false,
                                      type: active,
                                    ),
                                    ProfileListItem(
                                      title: "DOKTOR 2",
                                      subtitle: "ahli syaraf",
                                      badge: "Selesai",
                                      waktu: "2 jam yang lalu",
                                      read: true,
                                      done: true,
                                      type: active,
                                    ),
                                    ProfileListItem(
                                      title: "DOKTOR 3",
                                      subtitle: "ahli syaraf",
                                      badge: "1 hari lagi",
                                      waktu: "2 jam yang lalu",
                                      read: false,
                                      done: false,
                                      type: active,
                                    ),
                                    ProfileListItem(
                                      title: "DOKTOR 4",
                                      subtitle: "ahli syaraf",
                                      badge: "Selesai",
                                      waktu: "2 jam yang lalu",
                                      read: true,
                                      done: true,
                                      type: active,
                                    ),
                                    ProfileListItem(
                                      title: "DOKTOR 5",
                                      subtitle: "ahli syaraf",
                                      badge: "Selesai",
                                      waktu: "2 jam yang lalu",
                                      read: true,
                                      done: true,
                                      type: active,
                                    ),
                                  ],
                                ),
                              )
                      ],
                    ),
                  ),
                  Container(
                      color: Colors.transparent,
                      child: Center(
                        child: Container(
                          alignment: Alignment.center,
                          // color: Colors.redAccent,
                          height: 100,
                          width: 100,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.grey,
                            image: DecorationImage(
                                image: AssetImage('assets/images/lars_bak.png'),
                                fit: BoxFit.cover),
                          ),
                        ),
                      )),
                ],
              ),
            )
          ],
        )),
      ),
    );
  }
}
