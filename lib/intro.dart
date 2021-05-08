import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:novel_covid_19/dashboard.dart';

import 'const.dart';

class Intro extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return IntroState();
  }
}

class IntroState extends State<Intro> {
  final List<Widget> mywidgets = [Intro1(), Intro2(), Intro3()];
  final _pageController = PageController();
  int _currentPage = 0;

  @override
  void initState() {
    super.initState();
    _pageController.addListener(() {
      setState(() {
        _currentPage = _pageController.page!.round();
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
                child: PageView.builder(
                    controller: _pageController,
                    itemCount: mywidgets.length,
                    itemBuilder: (context, i) {
                      return mywidgets[i];
                    })),
            Container(
              decoration: BoxDecoration(
                color: white,
                boxShadow: [
                  new BoxShadow(
                      color: grey, blurRadius: 4.0, offset: Offset(1, -1)),
                ],
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10.0),
                  topRight: Radius.circular(10.0),
                ),
                border: Border.all(
                  color: white,
                  width: 8,
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    child: Row(
                      children: getIndicator(),
                    ),
                  ),
                  RaisedButton(
                    onPressed: () {
                      Get.to(DashBoard());
                    },
                    color: red,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    child: Text('Skip',
                        style: TextStyle(color: white, fontSize: 16)),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  List<Widget> getIndicator() {
    return List<Widget>.generate(
        mywidgets.length,
        (index) => Container(
              margin: EdgeInsets.symmetric(horizontal: 4),
              width: 10,
              height: 10,
              decoration: BoxDecoration(
                  color: _currentPage == index
                      ? Colors.green[400]
                      : Colors.grey.withOpacity(0.3),
                  borderRadius: BorderRadius.circular(10)),
            ));
  }
}

class Intro1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: EdgeInsets.all(50),
              child: Column(
                children: [
                  CachedNetworkImage(
                    imageUrl: covid1,
                    height: 0.3.sh,
                    width: 1.sw,
                    placeholder: (context, url) =>
                        Center(child: CupertinoActivityIndicator()),
                    errorWidget: (context, url, error) => Icon(Icons.error),
                  ),
                  SizedBox(
                    height: 0.2.sh,
                  ),
                  SizedBox(
                    width: 0.7.sw,
                    child: Wrap(
                      alignment: WrapAlignment.center,
                      runAlignment: WrapAlignment.center,
                      children: [
                        Text('Stay safe !',
                            style: TextStyle(
                                fontSize: 25,
                                color: black,
                                fontWeight: FontWeight.w500)),
                        SizedBox(
                          height: 0.05.sh,
                        ),
                        Text(
                            'Home is the most safeest place .It is not safe for us outside. Stay updated with us',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 18,
                                color: black,
                                fontWeight: FontWeight.w300)),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Intro2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.all(50),
              child: Column(
                children: [
                  CachedNetworkImage(
                    imageUrl: covid2,
                    height: 0.3.sh,
                    width: 1.sw,
                    placeholder: (context, url) =>
                        Center(child: CupertinoActivityIndicator()),
                    errorWidget: (context, url, error) => Icon(Icons.error),
                  ),
                  SizedBox(
                    height: 0.2.sh,
                  ),
                  SizedBox(
                    width: 0.7.sw,
                    child: Wrap(
                      alignment: WrapAlignment.center,
                      runAlignment: WrapAlignment.center,
                      children: [
                        Text('Help is here !',
                            style: TextStyle(
                                fontSize: 25,
                                color: black,
                                fontWeight: FontWeight.w500)),
                        SizedBox(
                          height: 0.05.sh,
                        ),
                        Text(
                            'Doctors are always with us. They are giving their best to save us',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 18,
                                color: black,
                                fontWeight: FontWeight.w300)),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Intro3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.all(50),
              child: Column(
                children: [
                  CachedNetworkImage(
                    imageUrl: covid3,
                    height: 0.3.sh,
                    width: 1.sw,
                    placeholder: (context, url) =>
                        Center(child: CupertinoActivityIndicator()),
                    errorWidget: (context, url, error) => Icon(Icons.error),
                  ),
                  SizedBox(
                    height: 0.2.sh,
                  ),
                  SizedBox(
                    width: 0.7.sw,
                    child: Wrap(
                      alignment: WrapAlignment.center,
                      runAlignment: WrapAlignment.center,
                      children: [
                        Text('Use Sanitizer and Mask',
                            style: TextStyle(
                                fontSize: 25,
                                color: black,
                                fontWeight: FontWeight.w500)),
                        SizedBox(
                          height: 0.05.sh,
                        ),
                        Text(
                            'Use Sanitizer and Mask to help us for fighting with corona',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 18,
                                color: black,
                                fontWeight: FontWeight.w300)),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
