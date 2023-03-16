import 'package:flutter/material.dart';

import '../../../app/app_colors.dart';
import '../../ui_helpers/ui_helpers.dart';
import 'buttons/custom_button.dart';
import 'custom_text.dart';

class ZeroStateView extends StatelessWidget {
  final String imageAssetName;
  final double imageSize;
  final double? opacity;
  final String header;
  final String subHeader;
  final String? mainActionButtonTitle;
  final VoidCallback? mainAction;
  final String? secondaryActionButtonTitle;
  final VoidCallback? secondaryAction;
  final VoidCallback? refreshData;
  final ScrollController? scrollController;
  final Color? backgroundColor;

  ZeroStateView({
    required this.imageAssetName,
    required this.imageSize,
    this.opacity,
    required this.header,
    required this.subHeader,
    required this.mainActionButtonTitle,
    required this.mainAction,
    required this.secondaryActionButtonTitle,
    required this.secondaryAction,
    required this.scrollController,
    required this.refreshData,
    this.backgroundColor,
  });

  Widget customImage() {
    return Align(
      alignment: Alignment.center,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.0),
        child: Opacity(
          opacity: opacity != null ? opacity! : 1.0,
          child: Image.asset(
            'assets/images/$imageAssetName.png',
            height: imageSize,
            fit: BoxFit.cover,
            filterQuality: FilterQuality.medium,
          ),
        ),
      ),
    );
  }

  Widget list() {
    return Center(
      child: ListView(
        physics: AlwaysScrollableScrollPhysics(),
        shrinkWrap: true,
        controller: scrollController,
        children: [
          imageAssetName.isEmpty ? Container() : customImage(),
          verticalSpaceSmall,
          Opacity(
            opacity: opacity != null ? opacity! : 1.0,
            child: CustomText(
              text: header,
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: appFontColor(),
              textAlign: TextAlign.center,
            ),
          ),
          verticalSpaceTiny,
          Opacity(
            opacity: opacity != null ? opacity! : 1.0,
            child: CustomText(
              text: subHeader,
              fontSize: 14,
              fontWeight: FontWeight.w400,
              color: appFontColor(),
              textAlign: TextAlign.center,
            ),
          ),
          verticalSpaceMedium,
          mainAction == null
              ? Container()
              : Container(
                  margin: EdgeInsets.symmetric(horizontal: 32),
                  child: CustomButton(
                    onPressed: mainAction,
                    text: mainActionButtonTitle,
                    textSize: 14,
                    textColor: appFontColor(),
                    height: 40,
                    width: 300,
                    backgroundColor: appButtonColorAlt(),
                    isBusy: false,
                    elevation: 2,
                  ),
                ),
          verticalSpaceMedium,
          secondaryAction == null
              ? Container()
              : CustomFlatButton(
                  onTap: secondaryAction,
                  fontColor: appTextButtonColor(),
                  fontSize: 14,
                  text: secondaryActionButtonTitle,
                  textAlign: TextAlign.center,
                  showBottomBorder: false,
                ),
          verticalSpaceSmall,
        ],
      ),
    );
  }

  Widget body() {
    return refreshData == null
        ? list()
        : RefreshIndicator(
            onRefresh: refreshData as Future<void> Function(),
            backgroundColor: appBackgroundColor(),
            color: appFontColorAlt(),
            child: list(),
          );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: screenHeight(context),
      color: backgroundColor == null ? appBackgroundColor() : backgroundColor,
      child: body(),
    );
  }
}
