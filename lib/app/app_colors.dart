import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:moxi/app/app.locator.dart';
import 'package:moxi/constants/custom_colors.dart';
import 'package:stacked_themes/stacked_themes.dart';

final ThemeService _themeService = locator<ThemeService>();

bool isDarkMode() {
  return _themeService.isDarkMode;
}

Color appBackgroundColor() {
  return _themeService.isDarkMode ? Colors.black : Colors.white;
}

Color appButtonColor() {
  return _themeService.isDarkMode ? Colors.black : Colors.white;
}

Color appButtonColorAlt() {
  return _themeService.isDarkMode ? CustomColors.steelGray : CustomColors.iosOffWhite;
}

Color appTagBackgroundColor() {
  return _themeService.isDarkMode ? Colors.white12 : CustomColors.iosOffWhite;
}

Color appIconColor() {
  return _themeService.isDarkMode ? Colors.white : Colors.black;
}

Color appIconColorAlt() {
  return _themeService.isDarkMode ? Colors.white38 : Colors.black45;
}

Color appFontColor() {
  return _themeService.isDarkMode ? CustomColors.iosOffWhite : Colors.black;
}

Color appFontColorAlt() {
  return _themeService.isDarkMode ? Colors.white54 : Colors.black54;
}

Color appDividerColor() {
  return _themeService.isDarkMode ? Colors.white12 : Colors.black12;
}

Color appBorderColor() {
  return _themeService.isDarkMode ? Colors.white24 : Colors.black26;
}

Color appBorderColorAlt() {
  return _themeService.isDarkMode ? Colors.white12 : Colors.black12;
}

Color iconButtonBackgroundColor() {
  return _themeService.isDarkMode ? Colors.white12 : CustomColors.iosOffWhite;
}

Color appConfirmationColor() {
  return CustomColors.darkMountainGreen;
}

Color appDestructiveColor() {
  return Colors.redAccent;
}

Color appActiveColor() {
  return Colors.blue;
}

Color appInActiveColor() {
  return _themeService.isDarkMode ? Colors.white : Colors.black;
}

Color appInActiveColorAlt() {
  return _themeService.isDarkMode ? Colors.white38 : Colors.black38;
}

Color appShadowColor() {
  return _themeService.isDarkMode ? Colors.white12 : Colors.black12;
}

Color appTextFieldContainerColor() {
  return _themeService.isDarkMode ? Colors.white12 : CustomColors.iosOffWhite;
}

Color appSearchFieldContainerColor() {
  return _themeService.isDarkMode ? Colors.black : CustomColors.iosOffWhite;
}

Color appCursorColor() {
  return _themeService.isDarkMode ? Colors.white : Colors.black;
}

Color appImageButtonColor() {
  return _themeService.isDarkMode ? Colors.white12 : CustomColors.iosOffWhite;
}

Color appTextButtonColor() {
  return Colors.blue;
}

Color appSavedContentColor() {
  return CustomColors.carminPink;
}

Color appShimmerBaseColor() {
  return _themeService.isDarkMode ? CustomColors.textFieldGray : CustomColors.iosOffWhite;
}

Color appShimmerHighlightColor() {
  return _themeService.isDarkMode ? Colors.white : Colors.white;
}

SystemUiOverlayStyle appBrightness() {
  return _themeService.isDarkMode ? SystemUiOverlayStyle.light : SystemUiOverlayStyle.dark;
}
