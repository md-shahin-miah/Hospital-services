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
                const Icon(Icons.check_circle, color: Colors.white, size: 150),
                const SizedBox(height: 6),
                const Text("Booking Successful!",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 25)),
                const SizedBox(height: 30),
                const Text("Your booking code",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        fontSize: 13)),
                Text(bookingCode!,
                    style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 25)),
                const SizedBox(height: 30),
                RichText(
                  text: const TextSpan(
                      text:
                          "Our Customer Service will contact you for further confirmation.",
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
            margin: const EdgeInsets.only(bottom: 40, right: 20, left: 20),
            child: Column(
              children: [
                ButtonPrimary(
                  buttonText: "View History",
                  color: Colors.white,
                  textColor: colorPrimary,
                  onClicked: () {},
                ),
                const SizedBox(height: 30),
                GestureDetector(
                  onTap: () {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext context) => MyApp()));
                  },
                  child: const Text("Return to Home",
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
