import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rutsubo/app/view/landing_page/landing_lists/landing_list_cells.dart';
import 'package:rutsubo/global_setting/app_colors.dart';
import 'package:rutsubo/global_setting/app_string.dart';

class LandingAnswerSecond extends StatelessWidget {
  const LandingAnswerSecond({super.key});

  @override
  Widget build(BuildContext context) {
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
            width: 950.w,
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
              "정보",
              style: TextStyle(
                letterSpacing: 1.w,
                fontFamily: AppString.font_family_jalnan,
                fontSize: 50.sp,
              ),
            ),
            SizedBox(height: 5.w),
            Text(
              '외국인이 쉽게 알 수 없는 정보,\n대회일정과 심사 요소 등\n외국에서 접하기 어려운 여러가지 정보가 없다면\n개척해 나갈 수 없습니다!',
              textAlign: TextAlign.end,
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
