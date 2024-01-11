import 'package:flutter/material.dart';
import 'package:rutsubo/app/view/landing_page/landing_lists/landing_list_cells.dart';
import 'package:rutsubo/global_setting/app_colors.dart';
import 'package:rutsubo/global_setting/app_string.dart';
import 'package:rutsubo/global_setting/app_values.dart';

class LandingListCellFourth extends StatelessWidget {
  const LandingListCellFourth({super.key});

  @override
  Widget build(BuildContext context) {
    return LandingListFlowCell(
      content: const FourthListCellWeb(),
      imgPath: AppString.img_landing_background_3,
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
                '오사카예술대학~교토세이카\n 대학원 재학 동안 만들었던, \n해외 출신 만화가지망생들의\n',
                AppColors.white,
              ),
              landingTextSpan('일본만화 데뷔를 목적으로 한\n만화연구회입니다!\n', AppColors.white),
              landingTextSpan('수년간 축적한 연구회의 노하우로\n', AppColors.white),
              landingTextSpan(
                  '막막한 지망생분들께 피드백과 상담활동을\n해드리고 있습니다!\n', AppColors.white),
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
