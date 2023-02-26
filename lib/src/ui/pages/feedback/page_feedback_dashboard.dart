import 'package:cupertino_radio_choice/cupertino_radio_choice.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../constants/constant.dart';
import '../../components/buttons/button_primary.dart';
import '../../menuwidgets.dart';


class FeedbackDashboard extends StatefulWidget {
  @override
  _FeedbackDashboardState createState() => _FeedbackDashboardState();
}

class _FeedbackDashboardState extends State<FeedbackDashboard> {
  static final Map<String, String> ratingMap = {
    'satisfied': 'Satisfied',
    'normal': 'Normal',
    'not satisfied': 'Not Satisfied',
  };

  String _selectedRating = ratingMap.keys.first;

  @override
  Widget build(BuildContext context) {
    void onRatingSelected(String ratingKey) {
      setState(() {
        _selectedRating = ratingKey;
      });
    }

    return Scaffold(
      appBar: AppBar(
        title: Text("Feedback"),
        backgroundColor: colorPrimary,
        elevation: 0.0,
        leading:  const MenuWidget(),
      ),
      body: Form(
        child: ListView(
          padding: const EdgeInsets.fromLTRB(20, 10, 20, 30),
          children: <Widget>[
            const Text(
              "Famous Hospital Service Feedback Form",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 24,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
                "Thank you for your trust in using the Famous Hospital application and services. Please provide suggestions via this form, because each input is very useful for improving our services and further applications."),
            const SizedBox(
              height: 20,
            ),
            const Text(
              "How do you feel when you get our service?",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
            TextFormField(
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Please enter some text';
                }
                return null;
              },
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              "What do you think about the services we provide?",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
            TextFormField(
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Please enter some text';
                }
                return null;
              },
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              "Where are we lacking?",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
            TextFormField(
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Please enter some text';
                }
                return null;
              },
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              "What is your level of satisfaction with existing services/applications?",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            CupertinoRadioChoice(
                choices: ratingMap,
                onChange: onRatingSelected,
                initialKeyValue: _selectedRating),
            const SizedBox(
              height: 20,
            ),
            const Text(
              "What is your level of ease with existing services/applications?",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            CupertinoRadioChoice(
                choices: ratingMap,
                onChange: onRatingSelected,
                initialKeyValue: _selectedRating),
            const SizedBox(
              height: 20,
            ),
            const Text(
              "Improvement suggestions for us",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
            TextFormField(
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Please enter some text';
                }
                return null;
              },
            ),
            const SizedBox(
              height: 20,
            ),
            ButtonPrimary(
              buttonText: "Submit",
              color: colorPrimary,
              textColor: Colors.white,
              onClicked: () {},
            )
          ],
        ),
      ),
    );
  }
}
