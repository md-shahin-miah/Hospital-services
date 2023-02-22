import 'package:flutter/material.dart';

import '../../../models/home_doctor.dart';
import '../../pages/booking/page_dokter_detail.dart';


class DoctorCards extends StatefulWidget {
  final HomeDoctor homeDoctor;

  const DoctorCards({Key? key, required this.homeDoctor}) : super(key: key);

  @override
  _DoctorCardsState createState() => _DoctorCardsState();
}

class _DoctorCardsState extends State<DoctorCards> {
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(right: 10, bottom: 5),
        height: 160,
        width: 140,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.2),
              blurRadius: 6,
              offset: Offset(1, 1)
            )
          ]
        ),
        child: InkWell(
          splashColor: Colors.blue.withAlpha(30),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (BuildContext context) => BookingDoctorDetail(
                  doctor: widget.homeDoctor,
                )
              )
            );
          },
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 115,
                    width: 140,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10)
                      ),
                      image: DecorationImage(
                        image: AssetImage(widget.homeDoctor.photos!),
                        fit: BoxFit.cover),
                      ),
                    ),
                  Container(
                    margin: EdgeInsets.fromLTRB(10, 15, 10, 0),
                    child: Text(
                      widget.homeDoctor.name!,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(10, 5, 10, 0),
                    child: Text(widget.homeDoctor.specialist!),
                ),
              ],
            ),
          ]
        )
      )
    );
  }
}
