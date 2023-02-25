import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../models/home_doctor.dart';


class BookingItem extends StatelessWidget {
  const BookingItem({
    Key? key,
    required this.clickBack,
    required this.doctor,
  }) : super(key: key);

  final VoidCallback clickBack;
  final HomeDoctor doctor;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: clickBack,
      child: Container(
        color: Colors.transparent,
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 35),
        child: Row(
          children: [
            CircleAvatar(
              backgroundImage: AssetImage(doctor.photos!),
              backgroundColor: Colors.white,
              radius: 30,
            ),
            const SizedBox(
              width: 20,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    doctor.name!,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  Text(
                    doctor.specialist!,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 16,
                        color: Colors.grey),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
