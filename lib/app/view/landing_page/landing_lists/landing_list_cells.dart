import 'package:flutter/material.dart';
import 'package:rutsubo/global_setting/app_colors.dart';
import 'package:rutsubo/global_setting/app_values.dart';

class LandingListCell extends StatelessWidget {
  const LandingListCell({
    super.key,
    required this.content,
    required this.backgrondColor,
  });

  final List<Widget> content;
  final Color backgrondColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: AppValues.webLandingListHeight,
      color: backgrondColor,
      child: Row(children: [
        const Spacer(),
        Row(children: content),
        const Spacer(),
      ]),
    );
  }
}

TextSpan landingTextSpan(String text, Color color) {
  return TextSpan(
    text: text,
    style: TextStyle(
      fontSize: AppValues.webLandingFontSize,
      fontWeight: FontWeight.bold,
      color: color,
    ),
  );
}

class LandingListCell1 extends StatelessWidget {
  const LandingListCell1({super.key});

  @override
  Widget build(BuildContext context) {
    return LandingListCell(
      backgrondColor: AppColors.white,
      content: [
        RichText(
          text: TextSpan(
            style: const TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
            children: [
              landingTextSpan("일본", Colors.red),
              landingTextSpan('에서 ', AppColors.black),
              landingTextSpan('만화가', AppColors.black),
              landingTextSpan('로 데뷔\n', AppColors.black),
              landingTextSpan('', AppColors.black),
              landingTextSpan('', AppColors.black),
            ],
          ),
        ),
      ],
    );
  }
}

class LandingListCell2 extends StatelessWidget {
  const LandingListCell2({super.key});

  @override
  Widget build(BuildContext context) {
    return LandingListCell(
      backgrondColor: AppColors.transparent,
      content: [
        const SizedBox(
          width: 500,
        ),
        RichText(
          text: const TextSpan(
            text: '소년 점프 데즈카 상\n',
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: Color(0xFF39D882),
            ),
            children: [
              TextSpan(
                text: '수상자의\n전문상담을 받아보세요',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: AppColors.white,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class LandingListCell3 extends StatelessWidget {
  const LandingListCell3({super.key});

  @override
  Widget build(BuildContext context) {
    return LandingListCell(backgrondColor: AppColors.white, content: []);
  }
}
