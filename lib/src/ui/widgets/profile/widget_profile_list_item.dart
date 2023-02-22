import 'package:flutter/material.dart';

import '../../../constants/constant.dart';
import '../../pages/profile/page_profile_detail.dart';


class ProfileListItem extends StatelessWidget {
  const ProfileListItem({
    Key? key,
    required this.read,
    required this.done,
    required this.title,
    required this.subtitle,
    required this.waktu,
    required this.type,
    required this.badge,
  }) : super(key: key);

  final bool read, done, type;
  final String title, subtitle, waktu, badge;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        print("notif pressed");
        Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => ProfileDetail()),
        );
      }, 
      child:Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(color: read ? Colors.white : Colors.grey[100]),
      child: Container(
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  radius: 25,
                ),
                SizedBox(width: 20),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 5),
                    Container(
                      width: 300,
                      child: Text(
                        subtitle,
                        style: TextStyle(
                          fontWeight: FontWeight.w400, fontSize: 12),
                      ),
                    ),
                    SizedBox(height: 15),
                    Container(
                      width: 300,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            waktu,
                            style: TextStyle(
                              color: Colors.grey,
                              fontWeight: FontWeight.w500,
                              fontSize: 12),
                            ),
                            type
                            ? Container(
                              padding: EdgeInsets.symmetric(
                                horizontal: 20, vertical: 5
                              ),
                              decoration: BoxDecoration(
                                color: read
                                  ? Colors.transparent
                                  : colorSecondary,
                                borderRadius: BorderRadius.circular(15)
                              ),
                              child: read
                                ? Text("")
                                : Text(
                                  "New",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 12
                                  ),
                                )
                              )
                            : Container(
                              padding: EdgeInsets.symmetric(
                                horizontal: 20, vertical: 5
                              ),
                              decoration: BoxDecoration(
                                color: done ? colorLabel2 : colorLabel1,
                                borderRadius: BorderRadius.circular(15)
                              ),
                              child: Text(
                                badge,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 12
                                ),
                              )
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
