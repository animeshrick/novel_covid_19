import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:novel_covid_19/const.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.fromLTRB(27, 45, 25, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  customUnderlineText('COVID-19', black, 25,
                      fontWeight: FontWeight.bold),
                  Spacer(),
                  SvgPicture.asset("assets/covidIcon.svg")
                ],
              ),
              SizedBox(
                height: 15,
              ),

              ///india
              Card(
                elevation: 1,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(35),
                ),
                child: Container(
                  width: 1.sw,
                  height: 0.35.sh,
                  padding: EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: grey.withOpacity(0.3),
                        spreadRadius: 10,
                        blurRadius: 5,
                        offset: Offset(0, 7), // changes position of shadow
                      ),
                    ],
                    color: white,
                    image: new DecorationImage(
                        fit: BoxFit.cover,
                        colorFilter: ColorFilter.mode(
                            Colors.black.withOpacity(0.2), BlendMode.dstATop),
                        image: new NetworkImage(
                            'https://imgk.timesnownews.com/story/1565779931-National_Flag.jpg?tr=w-600,h-450,fo-auto')),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      customUnderlineText('COVID-19, Cases in INDIA', black, 20,
                          fontWeight: FontWeight.bold),
                      SizedBox(
                        height: 5,
                      ),
                      customText('8th May,2021 8.45 PM', black, 15),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Column(
                            children: [
                              customUnderlineText('Active Cases', black, 18),
                              SizedBox(
                                height: 10,
                              ),
                              customText('Today - 15 % ↑ ', black, 18),
                            ],
                          ),
                          Column(
                            children: [
                              customUnderlineText('Total a day', black, 18),
                              SizedBox(
                                height: 10,
                              ),
                              customText('227 People ↑', black, 18),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Column(
                            children: [
                              customUnderlineText('Deaths', black, 18),
                              SizedBox(
                                height: 10,
                              ),
                              customText('Today - 1.2 % ↓', black, 15)
                            ],
                          ),
                          Column(
                            children: [
                              customUnderlineText('Recovered', black, 18),
                              SizedBox(
                                height: 10,
                              ),
                              customText('15 People ↑', black, 15)
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Divider(),

              ///state wise
              Card(
                elevation: 1,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(35),
                ),
                child: Container(
                  width: 1.sw,
                  height: 0.58.sh,
                  padding: EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    color: white,
                    boxShadow: [
                      BoxShadow(
                        color: grey.withOpacity(0.3),
                        spreadRadius: 10,
                        blurRadius: 5,
                        offset: Offset(0, 7), // changes position of shadow
                      ),
                    ],
                    image: new DecorationImage(
                      fit: BoxFit.cover,
                      colorFilter: ColorFilter.mode(
                          Colors.black.withOpacity(0.2), BlendMode.dstATop),
                      image: new NetworkImage(covid3),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          customUnderlineText('State', black, 18,
                              fontWeight: FontWeight.bold),
                          customUnderlineText('Recover', black, 18,
                              fontWeight: FontWeight.bold),
                          customUnderlineText('Death', black, 18,
                              fontWeight: FontWeight.bold),
                          customUnderlineText('Active', black, 18,
                              fontWeight: FontWeight.bold),
                          customUnderlineText('Total', black, 18,
                              fontWeight: FontWeight.bold),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          customRow('WB', '112', '005', '15', '1302'),
                          SizedBox(
                            height: 15,
                          ),
                          customRow('UP', '110', '005', '75', '157'),
                          SizedBox(
                            height: 15,
                          ),
                          customRow('Kerala', '1000', '555', '2000', '3500'),
                          SizedBox(
                            height: 15,
                          ),
                          customRow('MP', '23', '48', '15', '45'),
                          SizedBox(
                            height: 15,
                          ),
                          customRow('Delhi', '512', '150', '24', '1500'),
                          SizedBox(
                            height: 15,
                          ),
                          customRow('Gujrat', '48', '45', '157', '1500'),
                          SizedBox(
                            height: 15,
                          ),
                          customRow('Sikim', '102', '100', '50', '630'),
                          SizedBox(
                            height: 15,
                          ),
                          customRow('Goa', '267', '58', '45', '587'),
                          SizedBox(
                            height: 0.04.sh,
                          ),
                          TextButton(
                              onPressed: () {},
                              child:
                                  customText('For more click here !', blue, 14))
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Divider(),
              SizedBox(
                height: 20,
              ),
              customText('Corona virus hit our states map view', black, 25,
                  fontWeight: FontWeight.bold),
              SizedBox(
                height: 15,
              ),
              CachedNetworkImage(
                imageUrl:
                    'https://c.files.bbci.co.uk/66DA/production/_114403362_indiac19.jpg',
                height: 0.5.sh,
                width: 1.sw,
                placeholder: (context, url) =>
                    Center(child: CupertinoActivityIndicator()),
                errorWidget: (context, url, error) => Icon(Icons.error),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
