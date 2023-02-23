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
    required this.time,
    required this.type,
    required this.badge,
  }) : super(key: key);

  final bool read, done, type;
  final String title, subtitle, time, badge;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        print("pressed notification");
        Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => ProfileDetail()),
        );
      }, 
      child:Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(color: read ? Colors.white : Colors.grey[100]),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const CircleAvatar(
                radius: 25,
              ),
              const SizedBox(width: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 5),
                  Container(
                    width: 200,
                    child: Text(
                      subtitle,
                      style: const TextStyle(
                        fontWeight: FontWeight.w400, fontSize: 12),
                    ),
                  ),
                  const SizedBox(height: 5),
                  SizedBox(
                    width: 200,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          time,
                          style: const TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.w500,
                            fontSize: 12),
                          ),
                          type
                          ? Container(
                            padding: const EdgeInsets.symmetric(
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
                              : const Text(
                                "New",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 12
                                ),
                              )
                            )
                          : Container(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 20, vertical: 5
                            ),
                            decoration: BoxDecoration(
                              color: done ? colorLabel2 : colorLabel1,
                              borderRadius: BorderRadius.circular(15)
                            ),
                            child: Text(
                              badge,
                              style: const TextStyle(
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
    );
  }
}
