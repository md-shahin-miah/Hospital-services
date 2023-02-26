import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


import '../../../constants/constant.dart';
import '../../../models/user.dart';
import '../../components/dialog_form.dart';

class ChangePatient extends StatefulWidget {
  const ChangePatient({Key? key, this.id}) : super(key: key);

  @override
  _ChangePatientState createState() => _ChangePatientState();

  final String? id;
}

class _ChangePatientState extends State<ChangePatient> {
  String? id;
  @override
  void initState() {
    super.initState();
    this.id = widget.id;
    this.getDummyUser();
  }

  List<User>? userList = <User>[];
  void getDummyUser() async {
    var jsonData = await rootBundle.loadString("assets/json/user.json");
    var decodedJson = json.decode(jsonData);
    setState(() {
      for (int i = 0; i < decodedJson.length; i++) {
        userList!.add(User.fromJson(decodedJson[i]));
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        shadowColor: Colors.black38,
        title: const Text(
          "Change Patient",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
      ),
      body: userList!.length == 0
          ? const CircularProgressIndicator()
          : Column(
              children: [
                LimitedBox(
                  maxHeight: size.height * 0.8,
                  child: ListView.builder(
                      shrinkWrap: true,
                      itemCount: userList!.length,
                      itemBuilder: (context, index) => PatientListItem(
                            user: userList![index],
                            selected:
                                userList![index].id == id ? true : false,
                            callbackFunction: () {
                              setState(() {
                                id = userList![index].id;
                              });
                              Navigator.pop(context, userList![index]);
                            },
                          )),
                ),
                const SizedBox(height: 20),
                GestureDetector(
                  onTap: () {
                    showFormBooking(size, false, context, () {});
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Icon(
                        Icons.add,
                        color: colorPrimary,
                      ),
                      Text(
                        "New Add",
                        style: TextStyle(
                            color: colorPrimary,
                            fontWeight: FontWeight.w600,
                            fontSize: 15),
                      ),
                    ],
                  ),
                ),
              ],
            ),
    );
  }
}

class PatientListItem extends StatelessWidget {
  const PatientListItem({
    Key? key,
    this.selected,
    this.user,
    this.callbackFunction,
  }) : super(key: key);

  final bool? selected;
  final User? user;
  final VoidCallback? callbackFunction;

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        child: GestureDetector(
          onTap: callbackFunction,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(user!.name!,
                      style: const TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 16)),
                  Text(
                    "Gender: ${user!.sex!}",
                    style: const TextStyle(color: Colors.grey),
                  ),
                  Text(
                    "Status : ${user!.status!}",
                    style: const TextStyle(color: Colors.grey),
                  ),
                ],
              ),
              selected!
                  ? const Icon(
                      Icons.check_circle_rounded,
                      color: colorPrimary,
                      size: 35,
                    )
                  : Container(
                      width: 30,
                      height: 30,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.grey),
                    ),
            ],
          ),
        ));
  }
}
