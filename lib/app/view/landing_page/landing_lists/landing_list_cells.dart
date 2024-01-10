// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:rutsubo/global_setting/app_colors.dart';
import 'package:rutsubo/global_setting/app_values.dart';

class LandingListCell extends StatelessWidget {
  LandingListCell({
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
      color: backgrondColor,
      child: Row(children: [
        const Spacer(),
        content,
        const Spacer(),
      ]),
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
      color: color,
    ),
  );
}

class LandingListCell3 extends StatelessWidget {
  const LandingListCell3({super.key});

  @override
  Widget build(BuildContext context) {
    return LandingListCell(
      backgrondColor: AppColors.white,
      content: Row(
        children: [
          RichText(
            text: TextSpan(
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
              children: [
                landingTextSpan("RUSTUBO란?", AppColors.black,
                    fontSize: 60, fontWeight: FontWeight.bold),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
