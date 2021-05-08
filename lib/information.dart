import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:novel_covid_19/const.dart';

class Information extends StatelessWidget {
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
                      backgroundColor: red, child: Icon(Icons.info_outline)),
                  SizedBox(
                    width: 15,
                  ),
                  customText('Information Notes', black, 25,
                      fontWeight: FontWeight.bold),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Align(
                alignment: Alignment.topLeft,
                child: customText(
                    'Does and Doesn\'t in the pandemic', black, 20,
                    fontWeight: FontWeight.w300),
              ),
              SizedBox(
                height: 30,
              ),
              InkWell(
                  onTap: () => showBottom1(context),
                  child: customCard(covid2, 'Wash your hand properly')),
              SizedBox(
                height: 20,
              ),
              InkWell(
                  onTap: () => showBottom2(context),
                  child: customCard(covid3, 'Make social Distance')),
              SizedBox(
                height: 20,
              ),
              InkWell(
                  onTap: () => showBottom2(context),
                  child: customCard(covid2, 'Try avoiding gathering')),
              SizedBox(
                height: 20,
              ),
              InkWell(
                  onTap: () => showBottom3(context),
                  child: customCard(covid3, 'Use mask and sanitize')),
              SizedBox(
                height: 20,
              ),
              InkWell(
                  onTap: () => showBottom5(context),
                  child: customCard(covid3, 'Take Vacine if eligible')),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }

  showBottom1(BuildContext context) {
    return showBottomSheet(
      context: context,
      builder: (context) => Container(
        height: 0.4.sh,
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Spacer(),
                IconButton(
                    onPressed: () => Navigator.pop(context),
                    icon: Icon(Icons.close))
              ],
            ),
            customText('Why you should wash your hand properly !', red, 15,
                fontWeight: FontWeight.bold),
            SizedBox(
              height: 10,
            ),
            customText(
                'With COVID-19 transmission mainly spreading between people through direct, indirect (through contaminated objects or surfaces), or close contact with infected people via mouth and nose secretions, washing hands with soap and running water is of critical importance.',
                black,
                15),
          ],
        ),
      ),
    );
  }

  showBottom2(BuildContext context) {
    return showBottomSheet(
      context: context,
      builder: (context) => SingleChildScrollView(
        child: Container(
          height: 0.4.sh,
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Spacer(),
                  IconButton(
                      onPressed: () => Navigator.pop(context),
                      icon: Icon(Icons.close))
                ],
              ),
              customText('Why you should make social distance !', red, 15,
                  fontWeight: FontWeight.bold),
              SizedBox(
                height: 10,
              ),
              customText(
                  'COVID-19 spreads mainly among people who are in close contact (within about 6 feet) for a prolonged period. ',
                  black,
                  15),
            ],
          ),
        ),
      ),
    );
  }

  showBottom3(BuildContext context) {
    return showBottomSheet(
      context: context,
      builder: (context) => Container(
        height: 0.4.sh,
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Spacer(),
                IconButton(
                    onPressed: () => Navigator.pop(context),
                    icon: Icon(Icons.close))
              ],
            ),
            customText('Why you should use mask and sanitizer !', red, 17,
                fontWeight: FontWeight.bold),
            SizedBox(
              height: 10,
            ),
            customText(
                'Masks should be used as part of a comprehensive strategy of measures to suppress transmission and save lives; the use of a mask alone is not sufficient to provide an adequate level of protection against COVID-19.f COVID-19 is spreading in your communityding crowds, cleaning your hands, and coughing into a bent elbow or tissue. Check local advice where you live and work. Do it all!',
                black,
                15),
          ],
        ),
      ),
    );
  }

  showBottom4(BuildContext context) {
    return showBottomSheet(
      context: context,
      builder: (context) => Container(
        height: 0.3.sh,
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Spacer(),
                IconButton(
                    onPressed: () => Navigator.pop(context),
                    icon: Icon(Icons.close))
              ],
            ),
            customText('Why you should talk COVID Vacine !', red, 17,
                fontWeight: FontWeight.bold),
            SizedBox(
              height: 10,
            ),
            customText(
                'All COVID-19 vaccines currently available in the United States have been shown to be safe and effective at preventing COVID-19. All COVID-19 vaccines that are in development are being carefully evaluated in clinical trials and will be authorized or approved only if they make it substantially less likely you will get COVID-19.Based on what we know about vaccines for other diseases and early data from clinical trials, experts believe that getting a COVID-19 vaccine also helps keep you from getting seriously ill even if you do get COVID-19.Getting vaccinated yourself may also protect people around you, particularly people at increased risk for severe illness from COVID-19.',
                black,
                15),
          ],
        ),
      ),
    );
  }

  showBottom5(BuildContext context) {
    return showBottomSheet(
      context: context,
      builder: (context) => Container(
        height: 0.5.sh,
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Spacer(),
                IconButton(
                    onPressed: () => Navigator.pop(context),
                    icon: Icon(Icons.close))
              ],
            ),
            customText('Why you should use mask and sanitizer !', red, 17,
                fontWeight: FontWeight.bold),
            SizedBox(
              height: 10,
            ),
            customText(
                'Masks should be used as part of a comprehensive strategy of measures to suppress transmission and save lives; the use of a mask alone is not sufficient to provide an adequate level of protection against COVID-19.f COVID-19 is spreading in your community, stay safe by taking some simple precautions, such as physical distancing, wearing a mask, keeping rooms well ventilated, avoiding crowds, cleaning your hands!',
                black,
                15),
          ],
        ),
      ),
    );
  }
}
