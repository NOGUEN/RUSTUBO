import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:rutsubo/app/controller/landing_page_controller.dart';
import 'package:rutsubo/app/view/landing_page/landing_lists/landing_list_cells.dart';
import 'package:rutsubo/global_setting/app_colors.dart';
import 'package:rutsubo/global_setting/app_string.dart';

class LandingIntroduce extends StatelessWidget {
  const LandingIntroduce({super.key, required this.controller});

  final LandingPageController controller;

  @override
  Widget build(BuildContext context) {
    controller.screenWidth.value = MediaQuery.of(context).size.width;
    return Padding(
      padding: EdgeInsets.only(left: 40.w, right: 40.w, bottom: 40.w),
      child: SizedBox(
        child: Obx(
          () {
            if (controller.screenWidth.value == 0) {}
            return Row(
              children: [
                LandingMangaCell(
                  height: 360.w,
                  width: 200.w,
                  color: AppColors.black,
                  content: const AggroContent(),
                ),
                const Spacer(),
                LandingMangaCell(
                  height: 360.w,
                  width: 920.w,
                  content: const IntroduceContent(),
                )
              ],
            );
          },
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
            fontFamily: AppString.font_family_jalnan,
            color: AppColors.white,
            fontSize: 80.sp,
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
                fontFamily: AppString.font_family_jalnan,
                fontSize: 50.sp,
              ),
            ),
            SizedBox(height: 5.w),
            Text(
              '해외 출신 만화가지망생들의 일본만화 데뷔를\n목적으로 한 만화연구회입니다! \n수년간 축적한 연구회의 노하우로 \n막막한 지망생분들께 피드백과 \n상담활동을 해드리고 있습니다!',
              style: TextStyle(
                fontSize: 26.w,
              ),
            ),
            const Spacer(),
          ],
        ),
        SizedBox(
          height: 300.w,
          width: 300.w,
          child: Image.asset(
            AppString.logo_rustubo,
          ),
        ),
        const Spacer(),
      ],
    );
  }
}