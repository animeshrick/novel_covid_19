import 'package:flutter/material.dart';
import 'package:novel_covid_19/const.dart';

class Helpline extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.fromLTRB(27, 45, 25, 0),
          child: Column(
            children: [
              Row(
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.green,
                    child: Icon(Icons.call),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  customText('HELPLINE CONTACT', black, 25,
                      fontWeight: FontWeight.bold),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              customCardV1('Dr. Mrinal', '+91 5555555555', 'MD Medicine'),
              SizedBox(
                height: 25,
              ),
              customCardV1('Dr. Banerjee', '+91 5555555555', 'MD Medicine'),
              SizedBox(
                height: 25,
              ),
              customCardV1('Dr. Chatterjee', '+91 5555555555', 'MD Medicine'),
              SizedBox(
                height: 25,
              ),
              customCardV1('Dr. Bera', '+91 5555555555', 'MD Medicine'),
              SizedBox(
                height: 25,
              ),
              customCardV1('Dr. Kundu', '+91 5555555555', 'MD Medicine'),
              SizedBox(
                height: 25,
              ),
              customCardV1('Dr. krishna', '+91 5555555555', 'MD Medicine'),
            ],
          ),
        ),
      ),
    );
  }
}
