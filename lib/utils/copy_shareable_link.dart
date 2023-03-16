import 'package:flutter/services.dart';
import 'package:stacked_services/stacked_services.dart';

import '../app/app.locator.dart';

Future<void> copyShareableLink({String? link}) async {
  final DialogService dialogService = locator<DialogService>();
  Clipboard.setData(ClipboardData(text: link));
  HapticFeedback.lightImpact();
  dialogService.showDialog(
    title: 'Link Copied!',
    description: "Share it anywhere you'd like",
    barrierDismissible: true,
    buttonTitle: "Ok",
  );
}

Future<void> copyStreamKey({String? streamKey}) async {
  final DialogService dialogService = locator<DialogService>();
  Clipboard.setData(ClipboardData(text: streamKey));
  HapticFeedback.lightImpact();
  dialogService.showDialog(
    title: 'Stream Key Copied!',
    description: 'Be Careful Where You Share It',
    barrierDismissible: true,
    buttonTitle: "Ok",
  );
}
