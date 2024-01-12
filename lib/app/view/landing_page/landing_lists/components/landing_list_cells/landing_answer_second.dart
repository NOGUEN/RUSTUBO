import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rutsubo/app/controller/landing_page_controller.dart';
import 'package:rutsubo/app/view/landing_page/landing_lists/landing_list_cells.dart';
import 'package:rutsubo/global_setting/app_colors.dart';
import 'package:rutsubo/global_setting/app_string.dart';

class LandingAnswerSecond extends StatelessWidget {
  const LandingAnswerSecond({super.key, required this.controller});

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
            width: 200.w,
            color: AppColors.black,
            content: const AggroContent(),
          ),
          const Spacer(),
          LandingMangaCell(
            height: 360.w,
            width: 920.w,
            content: const IntroduceContent(),
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
        '둘\n째',
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
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            const Spacer(),
            Text(
              '멘토의 피드백',
              style: TextStyle(
                fontFamily: AppString.font_family_jalnan,
                fontSize: 50.sp,
              ),
            ),
            SizedBox(height: 5.w),
            Text(
              '데즈카상을 수상하고, 소년점프에서 활동 한 경험,\n대학원에서 연구한 일본 대중만화에 대한 제작론을 통해\n만화에 대해 피드백을 진행합니다!',
              textAlign: TextAlign.end,
              style: TextStyle(
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
