import 'package:flutter/material.dart';
import 'package:rutsubo/app/view/landing_page/landing_lists/landing_list_cells.dart';
import 'package:rutsubo/global_setting/app_colors.dart';
import 'package:rutsubo/global_setting/app_string.dart';

class LandingIntroduce extends StatelessWidget {
  const LandingIntroduce({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width - 252;

    return Padding(
      padding: EdgeInsets.only(left: 40, right: 40, bottom: 40),
      child: SizedBox(
        child: Row(
          children: [
            LandingMangaCell(
                height: 360,
                width: width / 10 * 2,
                color: AppColors.black,
                content: AggroContent()),
            SizedBox(
              width: width / 10 * 0.2,
            ),
            LandingMangaCell(
                height: 360,
                width: width / 10 * 7.8,
                content: IntroduceContent())
          ],
        ),
      ),
    );
  }
}

class AggroContent extends StatelessWidget {
  const AggroContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: RotatedBox(
        quarterTurns: 1,
        child: Text(
          '잠깐!',
          style: TextStyle(
            fontFamily: 'JALNAN',
            color: AppColors.white,
            fontSize: 80,
          ),
        ),
      ),
    );
  }
}

class IntroduceContent extends StatelessWidget {
  const IntroduceContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Spacer(),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Spacer(),
            Text(
              'RUTSUBO+ 란?',
              style: TextStyle(
                fontFamily: 'JALNAN',
                fontSize: 50,
              ),
            ),
            Text(
              '해외 출신 만화가지망생들의 일본만화 데뷔를\n목적으로 한 만화연구회입니다! \n수년간 축적한 연구회의 노하우로 \n막막한 지망생분들께 피드백과 \n상담활동을 해드리고 있습니다!',
              style: TextStyle(
                fontSize: 26,
              ),
            ),
            const Spacer(),
          ],
        ),
        Image.asset(
          AppString.logo_rustubo,
        ),
        const Spacer(),
      ],
    );
  }
}
