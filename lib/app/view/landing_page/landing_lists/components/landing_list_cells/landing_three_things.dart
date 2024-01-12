import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rutsubo/app/view/landing_page/landing_lists/landing_list_cells.dart';
import 'package:rutsubo/global_setting/app_colors.dart';
import 'package:rutsubo/global_setting/app_string.dart';

class LandingThreeThings extends StatelessWidget {
  const LandingThreeThings({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 40.w, right: 40.w, bottom: 40.w),
      child: SizedBox(
        child: Column(
          children: [
            LandingMangaCell(
              height: 120.w,
              width: double.infinity,
              color: AppColors.black,
              content: const Question(),
            ),
            SizedBox(height: 40.w),
            LandingMangaCell(
              height: 360.w,
              width: double.infinity,
              color: AppColors.white,
              content: Container(),
            ),
          ],
        ),
      ),
    );
  }
}

class Question extends StatelessWidget {
  const Question({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        '그렇다면 RUTSUBO+는 어떤 것들을 지원해주나요?',
        style: TextStyle(
          fontFamily: AppString.font_family_jalnan,
          color: AppColors.white,
          fontSize: 40.sp,
        ),
      ),
    );
  }
}

class Answer extends StatelessWidget {
  const Answer({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        '그렇다면 RUTSUBO+는 어떤 것들을 지원해주나요?',
        style: TextStyle(
          fontFamily: AppString.font_family_jalnan,
          color: AppColors.white,
          fontSize: 40.sp,
        ),
      ),
    );
  }
}
