// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

import 'package:rutsubo/global_setting/app_fontweight.dart';

class LandingMangaCell extends StatelessWidget {
  LandingMangaCell({
    super.key,
    required this.height,
    required this.content,
    required this.width,
    this.color,
  });

  final double height;
  final Widget content;
  final double width;
  Color? color;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        border: Border.all(width: 8),
        color: color,
      ),
      child: content,
    );
  }
}

TextSpan landingTextSpan(String text, Color color,
    {double? fontSize,
    FontWeight? fontWeight = AppFontWeights.medium,
    String fontFamily = 'Pretendard'}) {
  return TextSpan(
    text: text,
    style: TextStyle(
      fontSize: fontSize,
      fontFamily: fontFamily,
      fontWeight: fontWeight,
      color: color,
    ),
  );
}
