import 'package:flutter/material.dart';
import 'package:moxi/app/theme.config.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:stacked_themes/stacked_themes.dart';

void main() {
  runApp(const MoxiApp());
}

class MoxiApp extends StatelessWidget {
  const MoxiApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ThemeBuilder(
      lightTheme: lightTheme,
      darkTheme: darkTheme,
      builder: (context, regularTheme, darkTheme, themeMode) => MaterialApp(
        // showPerformanceOverlay: true,
        debugShowCheckedModeBanner: false,
        title: 'Moxi',
        theme: regularTheme,
        darkTheme: darkTheme,
        themeMode: themeMode == ThemeMode.system ? ThemeMode.light : themeMode,
        // initialRoute: Routes.RootViewRoute,
        // onGenerateRoute: StackedRouter().onGenerateRoute,
        navigatorKey: StackedService.navigatorKey,
      ),
    );
  }
}
