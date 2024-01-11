import 'package:flutter/material.dart';
import 'package:rutsubo/app/view/landing_page/landing_lists/landing_list_cells.dart';
import 'package:rutsubo/global_setting/app_colors.dart';

import 'package:rutsubo/global_setting/app_string.dart';
import 'package:rutsubo/global_setting/app_values.dart';
import 'package:rutsubo/responsive.dart';

class LandingListCellFourth extends StatelessWidget {
  const LandingListCellFourth({super.key});

  @override
  Widget build(BuildContext context) {
    return LandingListFlowCell(
      content: Responsive.isDesktop(context)
          ? const FourthListCellWeb()
          : Responsive.isTablet(context)
              ? const FourthListCellTablet()
              : const FourthListCellMobile(),
      imgPath: Responsive.isMobile(context)
          ? AppString.img_landing_background_full
          : AppString.img_landing_background_1,
      height: 500,
    );
  }
}

class FourthListCellWeb extends StatelessWidget {
  const FourthListCellWeb({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        RichText(
          textAlign: TextAlign.end,
          text: TextSpan(
            style: const TextStyle(
              fontSize: AppValues.webLandingFontSize,
              color: AppColors.white,
              height: AppValues.lineHeight,
            ),
            children: [
              landingTextSpan(
                '오사카예술대학 ~ 교토세이카\n 대학원 재학 동안 만든 \n',
                AppColors.white,
              ),
              landingTextSpan('\n', AppColors.white, fontSize: 5),
              landingTextSpan('해외 출신 만화가지망생들의\n', AppColors.white,
                  fontSize: 35),
              landingTextSpan('일본만화 데뷔', AppColors.highlightRed, fontSize: 35),
              landingTextSpan('를 목적으로 한\n', AppColors.white, fontSize: 35),
              landingTextSpan('만화연구회', AppColors.highlightBlue, fontSize: 35),
              landingTextSpan('입니다!\n', AppColors.white),
              landingTextSpan('\n', AppColors.white, fontSize: 5),
              landingTextSpan('수년간 축적한 연구회의 노하우로\n', AppColors.white),
              landingTextSpan(
                  '막막한 지망생분들께 피드백과 상담활동을\n해드리고 있습니다!', AppColors.white),
            ],
          ),
        ),
        const SizedBox(width: 50),
        SizedBox(
          width: 400,
          height: 400,
          child: Image.asset(AppString.logo_rustubo),
        ),
      ],
    );
  }
}

class FourthListCellTablet extends StatelessWidget {
  const FourthListCellTablet({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        RichText(
          textAlign: TextAlign.end,
          text: TextSpan(
            style: const TextStyle(
              fontSize: AppValues.tabletLandingFontSize,
              color: AppColors.white,
              height: AppValues.lineHeight,
            ),
            children: [
              landingTextSpan(
                '오사카예술대학 ~ 교토세이카\n 대학원 재학 동안 만든 \n',
                AppColors.white,
              ),
              landingTextSpan('\n', AppColors.white, fontSize: 5),
              landingTextSpan('해외 출신 만화가지망생들의\n', AppColors.white,
                  fontSize: 30),
              landingTextSpan('일본만화 데뷔', AppColors.highlightRed, fontSize: 30),
              landingTextSpan('를 목적으로 한\n', AppColors.white, fontSize: 30),
              landingTextSpan('만화연구회', AppColors.highlightBlue, fontSize: 30),
              landingTextSpan('입니다!\n', AppColors.white),
              landingTextSpan('\n', AppColors.white, fontSize: 5),
              landingTextSpan('수년간 축적한 연구회의 노하우로\n', AppColors.white),
              landingTextSpan(
                  '막막한 지망생분들께 피드백과 상담활동을\n해드리고 있습니다!', AppColors.white),
            ],
          ),
        ),
        const SizedBox(width: 30),
        SizedBox(
          width: 300,
          height: 300,
          child: Image.asset(AppString.logo_rustubo),
        ),
      ],
    );
  }
}

class FourthListCellMobile extends StatelessWidget {
  const FourthListCellMobile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: 200,
          height: 200,
          child: Image.asset(AppString.logo_rustubo),
        ),
        const SizedBox(width: 30),
        RichText(
          textAlign: TextAlign.center,
          text: TextSpan(
            style: const TextStyle(
              fontSize: AppValues.mobileLandingFontSize,
              color: AppColors.white,
              height: AppValues.lineHeight,
            ),
            children: [
              landingTextSpan(
                '오사카예술대학 ~ 교토세이카\n 대학원 재학 동안 만든 \n',
                AppColors.white,
              ),
              landingTextSpan('\n', AppColors.white, fontSize: 5),
              landingTextSpan('해외 출신 만화가지망생들의\n', AppColors.white,
                  fontSize: 25),
              landingTextSpan('일본만화 데뷔', AppColors.highlightRed, fontSize: 25),
              landingTextSpan('를 목적으로 한\n', AppColors.white, fontSize: 25),
              landingTextSpan('만화연구회', AppColors.highlightBlue, fontSize: 25),
              landingTextSpan('입니다!\n', AppColors.white),
              landingTextSpan('\n', AppColors.white, fontSize: 5),
              landingTextSpan('수년간 축적한 연구회의 노하우로\n', AppColors.white),
              landingTextSpan(
                  '막막한 지망생분들께 피드백과 상담활동을\n해드리고 있습니다!', AppColors.white),
            ],
          ),
        ),
      ],
    );
  }
}
