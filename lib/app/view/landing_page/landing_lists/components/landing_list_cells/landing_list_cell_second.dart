import 'package:flutter/material.dart';
import 'package:rutsubo/app/view/landing_page/landing_lists/landing_list_cells.dart';
import 'package:rutsubo/global_setting/app_colors.dart';
import 'package:rutsubo/global_setting/app_values.dart';
import 'package:rutsubo/responsive.dart';

class LandingListCellSecond extends StatelessWidget {
  const LandingListCellSecond({super.key});

  @override
  Widget build(BuildContext context) {
    return LandingListCell(
      backgrondColor: AppColors.transparent,
      height: 600,
      content: Responsive.isDesktop(context)
          ? const SecondListCellWeb()
          : Responsive.isTablet(context)
              ? const SecondListCellTablet()
              : const SecondListCellMobile(),
    );
  }
}

class SecondListCellWeb extends StatelessWidget {
  const SecondListCellWeb({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          height: 500,
          child: Image.asset('images/manga.png'),
        ),
        const SizedBox(width: 100),
        RichText(
          text: TextSpan(
            style: const TextStyle(
              fontSize: AppValues.webLandingFontSize,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
            children: [
              landingTextSpan("저는\n", AppColors.white, fontSize: 80),
              landingTextSpan("\n", AppColors.white, fontSize: 0),
              landingTextSpan("소년 점프 제 99회\n", AppColors.white),
              landingTextSpan("데즈카상", Colors.green, fontSize: 35),
              landingTextSpan("을 수상하고,\n현재 ", AppColors.white),
              landingTextSpan("주간소년점프", Colors.red, fontSize: 35),
              landingTextSpan("에서\n", AppColors.white),
              landingTextSpan('단편게재, 일러스트 제작 등을\n하며 신인작가로써\n만화활동을 하고 있습니다.',
                  AppColors.white),
            ],
          ),
        ),
      ],
    );
  }
}

class SecondListCellTablet extends StatelessWidget {
  const SecondListCellTablet({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          height: 500,
          child: Image.asset('images/manga.png'),
        ),
        const SizedBox(width: 100),
        RichText(
          text: TextSpan(
            style: const TextStyle(
              fontSize: AppValues.tabletLandingFontSize,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
            children: [
              landingTextSpan("저는\n", AppColors.white, fontSize: 80),
              landingTextSpan("\n", AppColors.white, fontSize: 40),
              landingTextSpan("소년 점프 제 99회\n", AppColors.white),
              landingTextSpan("데즈카상", Colors.green, fontSize: 35),
              landingTextSpan("을 수상하고,\n현재 ", AppColors.white),
              landingTextSpan("주간소년점프", Colors.red, fontSize: 35),
              landingTextSpan("에서\n", AppColors.white),
              landingTextSpan('단편게재, 일러스트 제작 등을\n하며 신인작가로써\n만화활동을 하고 있습니다.',
                  AppColors.white),
            ],
          ),
        ),
      ],
    );
  }
}

class SecondListCellMobile extends StatelessWidget {
  const SecondListCellMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 200,
          child: Image.asset('images/manga.png'),
        ),
        RichText(
          text: TextSpan(
            style: const TextStyle(
              fontSize: AppValues.mobileLandingFontSize,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
            children: [
              landingTextSpan("저는 ", AppColors.white, fontSize: 70),
              landingTextSpan("소년 점프 제 99회\n", AppColors.white),
              landingTextSpan("데즈카상", Colors.green, fontSize: 30),
              landingTextSpan("을 수상하고, 현재 ", AppColors.white),
              landingTextSpan("주간소년점프", Colors.red, fontSize: 30),
              landingTextSpan("에서\n", AppColors.white),
              landingTextSpan('단편게재, 일러스트 제작 등을 하며 신인작가로써\n만화활동을 하고 있습니다.',
                  AppColors.white),
            ],
          ),
        ),
      ],
    );
  }
}
