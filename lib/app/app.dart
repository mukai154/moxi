import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_themes/stacked_themes.dart';

// flutter pub run build_runner build --delete-conflicting-outputs

@StackedApp(
  routes: [
    ///ADD HOMEPAGE
  ],
  dependencies: [
    //LAZY SINGLETONS
    LazySingleton(
      classType: ThemeService,
      resolveUsing: ThemeService.getInstance,
    ),
    //REACTIVE LAZY SINGLETONS

    //SINGLETONS
  ],
)
class AppSetup {
  /// no purpose outside of annotation
}
