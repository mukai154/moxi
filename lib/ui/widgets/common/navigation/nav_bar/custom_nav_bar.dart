import 'package:flutter/material.dart';

import '../../../../../app/app_colors.dart';

class CustomNavBar extends StatelessWidget {
  final List<Widget>? navBarItems;

  CustomNavBar({this.navBarItems});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 80,
      decoration: BoxDecoration(
        border: Border(
          top: BorderSide(
            width: 0.2,
            color: appBorderColorAlt(),
          ),
        ),
        color: appBackgroundColor(),
        // boxShadow: [
        //   BoxShadow(
        //     color: appShadowColor(),
        //     spreadRadius: 0.1,
        //     blurRadius: 1.0,
        //     offset: Offset(0.0, 0.0),
        //   ),
        // ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: navBarItems!,
      ),
    );
  }
}
