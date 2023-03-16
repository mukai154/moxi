import 'package:flutter/material.dart';

import '../../../../../app/app_colors.dart';

class CustomAppBar {
  PreferredSizeWidget basicAppBar({
    required String title,
    required bool showBackButton,
    Widget? bottomWidget,
    double? bottomWidgetHeight,
    VoidCallback? onPressedBack,
  }) {
    return AppBar(
      elevation: 0,
      backgroundColor: appBackgroundColor(),
      title: Text(
        title,
        style: TextStyle(
          color: appFontColor(),
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
      centerTitle: true,
      systemOverlayStyle: appBrightness(),
      leading: showBackButton
          ? BackButton(
              color: appIconColor(),
              onPressed: onPressedBack,
            )
          : Container(),
      bottom: PreferredSize(
        preferredSize: Size.fromHeight(
          bottomWidgetHeight ?? 4.0,
        ),
        child: bottomWidget ?? Container(),
      ),
    );
  }

  PreferredSizeWidget basicActionAppBar({
    required String title,
    required bool showBackButton,
    required Widget actionWidget,
    Widget? bottomWidget,
    double? bottomWidgetHeight,
    VoidCallback? onPressedBack,
  }) {
    return AppBar(
      elevation: 0,
      backgroundColor: appBackgroundColor(),
      title: Text(
        title,
        style: TextStyle(
          color: appFontColor(),
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
      centerTitle: true,
      systemOverlayStyle: appBrightness(),
      leading: showBackButton
          ? BackButton(
              color: appIconColor(),
              onPressed: onPressedBack,
            )
          : Container(),
      actions: [
        actionWidget,
      ],
      bottom: PreferredSize(
        preferredSize: Size.fromHeight(
          bottomWidgetHeight ?? 4.0,
        ),
        child: bottomWidget ?? Container(),
      ),
    );
  }
}
