// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

import 'package:rutsubo/app/view/landing_page/landing_page.dart';
import 'package:rutsubo/global_setting/app_colors.dart';
import 'package:rutsubo/global_setting/app_values.dart';

class LandingListWhiteCell extends StatelessWidget {
  LandingListWhiteCell({
    super.key,
    required this.content,
    required this.backgrondColor,
    this.height = AppValues.webLandingListHeight,
  });

  final Widget content;
  final Color backgrondColor;
  double? height;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: height,
      color: AppColors.white,
      child: Row(children: [
        const Spacer(),
        content,
        const Spacer(),
      ]),
    );
  }
}

class LandingListFlowCell extends StatelessWidget {
  LandingListFlowCell({
    super.key,
    required this.height,
    required this.content,
    required this.imgPath,
  });

  final GlobalKey _backgroundImageKey = GlobalKey();

  final double height;
  final Widget content;
  final String imgPath;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          width: double.infinity,
          height: height,
          child: Flow(
            delegate: ParallaxFlowDelegate(
              scrollable: Scrollable.of(context),
              listItemContext: context,
              backgroundImageKey: _backgroundImageKey,
            ),
            children: [
              SizedBox(
                child: Image.asset(
                  imgPath,
                  fit: BoxFit.cover,
                  key: _backgroundImageKey,
                ),
              ),
            ],
          ),
        ),
        Container(
          width: double.infinity,
          height: height,
          decoration: BoxDecoration(color: AppColors.black.withOpacity(0.8)),
        ),
        SizedBox(
          width: double.infinity,
          height: height,
          child: Row(
            children: [
              const Spacer(),
              content,
              const Spacer(),
            ],
          ),
        ),
      ],
    );
  }
}

TextSpan landingTextSpan(String text, Color color,
    {double? fontSize, FontWeight? fontWeight}) {
  return TextSpan(
    text: text,
    style: TextStyle(
      fontSize: fontSize,
      fontWeight: fontWeight,
      fontFamily: 'ChungjuKimSaeng',
      color: color,
    ),
  );
}
