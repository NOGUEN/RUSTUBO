import 'package:flutter/material.dart';
import 'package:rutsubo/app/controller/landing_page_controller.dart';
import 'package:rutsubo/app/view/landing_page/landing_lists/landing_list_cells.dart';
import 'package:rutsubo/global_setting/app_colors.dart';
import 'package:rutsubo/global_setting/app_fontweight.dart';
import 'package:rutsubo/global_setting/app_values.dart';
import 'package:rutsubo/responsive.dart';

class LandingListCellFirst extends StatelessWidget {
  const LandingListCellFirst({
    super.key,
    required this.controller,
  });

  final LandingPageController controller;

  @override
  Widget build(BuildContext context) {
    return LandingListWhiteCell(
      height: 300,
      content: Responsive.isDesktop(context)
          ? FirstListCellWeb(
              controller: controller,
            )
          : Responsive.isTablet(context)
              ? const FirstListCellTablet()
              : const FirstListCellMobile(),
      backgrondColor: AppColors.white,
    );
  }
}

class FirstListCellWeb extends StatelessWidget {
  const FirstListCellWeb({
    super.key,
    required this.controller,
  });

  final LandingPageController controller;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Center(
          child: RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
              style: const TextStyle(
                fontSize: AppValues.webLandingFontSize,
                color: Colors.black,
              ),
              children: [
                landingTextSpan("일본", Colors.red,
                    fontWeight: AppFontWeights.extrabold, fontSize: 40),
                landingTextSpan('에서 ', AppColors.black,
                    fontWeight: AppFontWeights.extrabold, fontSize: 40),
                landingTextSpan('만화가', Colors.red,
                    fontWeight: AppFontWeights.extrabold, fontSize: 40),
                landingTextSpan('로 데뷔,여러분도 가능합니다!\n', AppColors.black,
                    fontWeight: AppFontWeights.extrabold, fontSize: 40),
                landingTextSpan('\n', AppColors.black, fontSize: 10),
                landingTextSpan(
                    '세계 최대 만화 시장인 일본에서\n만화가가 되는 길을 알려드립니다!', AppColors.black),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class FirstListCellTablet extends StatelessWidget {
  const FirstListCellTablet({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        RichText(
          textAlign: TextAlign.center,
          text: TextSpan(
            style: const TextStyle(
              fontSize: AppValues.tabletLandingFontSize,
              color: Colors.black,
            ),
            children: [
              landingTextSpan("일본", Colors.red,
                  fontWeight: AppFontWeights.extrabold, fontSize: 40),
              landingTextSpan('에서 ', AppColors.black,
                  fontWeight: AppFontWeights.extrabold, fontSize: 40),
              landingTextSpan('만화가', Colors.red,
                  fontWeight: AppFontWeights.extrabold, fontSize: 40),
              landingTextSpan('로 데뷔,여러분도 가능합니다!\n', AppColors.black,
                  fontWeight: AppFontWeights.extrabold, fontSize: 40),
              landingTextSpan('\n', AppColors.black, fontSize: 10),
              landingTextSpan(
                  '세계 최대 만화 시장인 일본에서\n만화가가 되는 길을 알려드립니다!', AppColors.black),
            ],
          ),
        ),
      ],
    );
  }
}

class FirstListCellMobile extends StatelessWidget {
  const FirstListCellMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        RichText(
          textAlign: TextAlign.center,
          text: TextSpan(
            style: const TextStyle(
              fontSize: AppValues.mobileLandingFontSize,
              color: Colors.black,
            ),
            children: [
              landingTextSpan("일본", Colors.red,
                  fontWeight: AppFontWeights.extrabold, fontSize: 30),
              landingTextSpan('에서 ', AppColors.black,
                  fontWeight: AppFontWeights.extrabold, fontSize: 30),
              landingTextSpan('만화가', Colors.red,
                  fontWeight: AppFontWeights.extrabold, fontSize: 30),
              landingTextSpan('로 데뷔,\n여러분도 가능합니다!\n', AppColors.black,
                  fontWeight: AppFontWeights.extrabold, fontSize: 28),
              landingTextSpan('\n', AppColors.black, fontSize: 10),
              landingTextSpan(
                  '세계 최대 만화 시장인 일본에서\n만화가가 되는 길을 알려드립니다!', AppColors.black),
            ],
          ),
        ),
      ],
    );
  }
}
