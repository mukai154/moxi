import 'package:flutter/material.dart';

const Widget horizontalSpaceTiny = SizedBox(width: 4.0);
const Widget horizontalSpaceSmall = SizedBox(width: 8.0);
const Widget horizontalSpaceMedium = SizedBox(width: 16.0);
const Widget horizontalSpaceLarge = SizedBox(width: 24.0);
const Widget horizontalSpaceHuge = SizedBox(width: 32.0);
const Widget horizontalSpaceMassive = SizedBox(width: 64.0);

const Widget verticalSpaceTiny = SizedBox(height: 4.0);
const Widget verticalSpaceSmall = SizedBox(height: 8.0);
const Widget verticalSpaceMedium = SizedBox(height: 16.0);
const Widget verticalSpaceLarge = SizedBox(height: 24.0);
const Widget verticalSpaceHuge = SizedBox(height: 32.0);
const Widget verticalSpaceMassive = SizedBox(height: 64.0);

Widget spacedDivider = Column(
  children: const <Widget>[
    verticalSpaceMedium,
    Divider(color: Colors.blueGrey, height: 5.0),
    verticalSpaceMedium,
  ],
);

double screenWidth(BuildContext context) => MediaQuery.of(context).size.width;
double screenHeight(BuildContext context) => MediaQuery.of(context).size.height;

double screenHeightFraction(BuildContext context, {int dividedBy = 1, double offsetBy = 0}) => (screenHeight(context) - offsetBy) / dividedBy;
double screenWidthFraction(BuildContext context, {int dividedBy = 1, double offsetBy = 0}) => (screenWidth(context) - offsetBy) / dividedBy;

double halfScreenWidth(BuildContext context) => screenWidthFraction(context, dividedBy: 2);
double thirdScreenWidth(BuildContext context) => screenWidthFraction(context, dividedBy: 3);
