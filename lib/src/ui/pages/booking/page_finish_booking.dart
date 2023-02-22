import 'package:flutter/material.dart';

import '../../../../main.dart';
import '../../../constants/constant.dart';
import '../../components/buttons/button_primary.dart';


class FinishedBooking extends StatelessWidget {
  final String? bookingCode;

  const FinishedBooking({Key? key, this.bookingCode}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: colorPrimary,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            padding: const EdgeInsets.all(20),
            margin: EdgeInsets.only(top: size.height * 0.16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(Icons.check_circle, color: Colors.white, size: 150),
                SizedBox(height: 6),
                Text("Booking Sukses !",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 25)),
                SizedBox(height: 30),
                Text("Kode booking anda",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        fontSize: 13)),
                Text(bookingCode!,
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 25)),
                SizedBox(height: 30),
                RichText(
                  text: TextSpan(
                      text:
                          "Customer Service kami akan menghubungi anda untuk konfirmasi selanjutnya.",
                      style: TextStyle(
                          fontFamily: "Poppins",
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                          fontSize: 14)),
                  textAlign: TextAlign.center,
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(bottom: 40, right: 20, left: 20),
            child: Column(
              children: [
                ButtonPrimary(
                  buttonText: "Lihat Histori",
                  color: Colors.white,
                  textColor: colorPrimary,
                  onClicked: () {},
                ),
                SizedBox(height: 30),
                GestureDetector(
                  onTap: () {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext context) => MyApp()));
                  },
                  child: Text("Kembali ke Home",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                          fontSize: 16)),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
