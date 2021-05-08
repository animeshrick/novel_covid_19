import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

/*-------------------------text-------------------------*/
TextStyle customizeTextStyle(fontWeight, fontSize, fontColor) => TextStyle(
    fontWeight: fontWeight,
    wordSpacing: 3,
    color: fontColor,
    fontSize: fontSize);

Widget customText(String text, Color color, double size, {fontWeight}) {
  return Text(text,
      style: TextStyle(fontSize: size, color: color, fontWeight: fontWeight));
}

Widget customUnderlineText(String text, Color color, double size,
    {fontWeight}) {
  return Text(text,
      style: TextStyle(
        decoration: TextDecoration.underline,
        fontSize: size,
        color: color,
        fontWeight: fontWeight,
      ));
}

/*-------------------------images-------------------------*/
final String appIcon =
    'https://www.flaticon.com/svg/vstatic/svg/2904/2904253.svg?token=exp=1620482530~hmac=d4acf0ce52db70e8b578fdfaef759466';
final String covid1 =
    'https://thumbs.dreamstime.com/z/evil-coronavirus-covid-cartoon-character-pathogenic-bacteria-prohibited-symbol-evil-coronavirus-covid-cartoon-character-174649256.jpg';
final String covid2 =
    'https://media.istockphoto.com/vectors/cartoon-cute-coronavirus-covid19-doctor-safe-world-vector-vector-id1214919108?s=612x612';
final String covid3 =
    'https://img.freepik.com/free-vector/fight-corona-virus-covid-19-vector-drawing_171360-13.jpg?size=338&ext=jpg';

/*-------------------------colors-------------------------*/

final Color transperent = Colors.transparent;
final Color white = Colors.white;
final Color black = Colors.black;
final Color grey = Colors.grey;
final Color red = Colors.red;
final Color blue = Colors.blue;

//
String whoLink =
    'https://www.who.int/emergencies/diseases/novel-coronavirus-2019/global-research-on-novel-coronavirus-2019-ncov';

///
Widget customRow(
  String text1,
  String text2,
  String text3,
  String text4,
  String text5,
) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      customText(text1, black, 15),
      customText(text2, black, 15),
      customText(text3, black, 15),
      customText(text4, black, 15),
      customText(text5, black, 15),
    ],
  );
}

Widget customCard(
  String img,
  String text,
) {
  return Card(
    elevation: 1,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(35),
    ),
    child: Container(
      width: 1.sw,
      height: 0.15.sh,
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
      ),
      child: Row(
        children: [
          Image.network(img),
          SizedBox(
            width: 20,
          ),
          customText(text, black, 15),
        ],
      ),
    ),
  );
}

Widget customCardV1(
  String text1,
  String text2,
  String text3,
) {
  return Card(
    elevation: 1,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(35),
    ),
    child: Container(
      width: 1.sw,
      height: 0.15.sh,
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
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              customText(text1, black, 18),
              SizedBox(
                height: 5,
              ),
              customText(text2, black, 15),
              SizedBox(
                height: 5,
              ),
              customText(text3, black, 15),
            ],
          ),
          Container(
            child: Row(
              children: [
                CircleAvatar(
                  backgroundColor: Colors.green,
                  child: Icon(Icons.call),
                ),
                SizedBox(
                  width: 15,
                ),
                CircleAvatar(
                  backgroundColor: grey,
                  child: Icon(
                    Icons.message_outlined,
                    color: white,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    ),
  );
}
