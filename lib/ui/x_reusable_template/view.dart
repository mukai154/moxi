import 'package:flutter/material.dart';
import 'package:moxi/ui/x_reusable_template/view_model.dart';
import 'package:stacked/stacked.dart';

import '../widgets/common/navigation/app_bar/custom_app_bar.dart';

class XView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<XViewModel>.reactive(
      viewModelBuilder: () => XViewModel(),
      builder: (context, model, child) => Scaffold(
        appBar: CustomAppBar().basicAppBar(title: 'Title', showBackButton: true),
      ),
    );
  }
}
