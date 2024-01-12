import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rutsubo/app/controller/landing_page_controller.dart';
import 'package:rutsubo/app/view/landing_page/landing_lists/landing_list_cells.dart';
import 'package:rutsubo/global_setting/app_colors.dart';
import 'package:rutsubo/global_setting/app_string.dart';

class LandingAnswerThird extends StatelessWidget {
  const LandingAnswerThird({super.key, required this.controller});

  final LandingPageController controller;

  @override
  Widget build(BuildContext context) {
    controller.screenWidth.value = MediaQuery.of(context).size.width;
    return Padding(
      padding: EdgeInsets.only(left: 40.w, right: 40.w, bottom: 40.w),
      child: SizedBox(
          child: Row(
        children: [
          LandingMangaCell(
            height: 360.w,
            width: 920.w,
            content: const IntroduceContent(),
          ),
          const Spacer(),
          LandingMangaCell(
            height: 360.w,
            width: 200.w,
            color: AppColors.black,
            content: const AggroContent(),
          ),
        ],
      )),
    );
  }
}

class AggroContent extends StatelessWidget {
  const AggroContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        '셋\n째',
        style: TextStyle(
          fontFamily: AppString.font_family_jalnan,
          color: AppColors.white,
          fontSize: 80.sp,
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
              '일본어 검수',
              style: TextStyle(
                letterSpacing: 1.w,
                fontFamily: AppString.font_family_jalnan,
                fontSize: 50.sp,
              ),
            ),
            SizedBox(height: 5.w),
            Text(
              '자신의 작품을 일본 출판사의\n편집자에게 보여주기 위해서,\n편집자와 연결이 되고도 주기적으로\n편집자에게 완성도 높은 콘티를 보여주기 위해선\n일본어 검수가 필요합니다!',
              textAlign: TextAlign.start,
              style: TextStyle(
                letterSpacing: 1.w,
                fontSize: 26.w,
              ),
            ),
            const Spacer(),
          ],
        ),
        const Spacer(),
      ],
    );
  }
}
