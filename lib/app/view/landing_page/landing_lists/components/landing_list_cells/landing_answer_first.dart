import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rutsubo/app/view/landing_page/landing_lists/landing_list_cells.dart';
import 'package:rutsubo/global_setting/app_colors.dart';
import 'package:rutsubo/global_setting/app_string.dart';
import 'package:rutsubo/global_setting/app_values.dart';

class LandingAnswerFirst extends StatelessWidget {
  const LandingAnswerFirst({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 40.w,
        right: 40.w,
        bottom: 40.w,
      ),
      child: SizedBox(
        child: WebContent(),
        // child: Responsive.isDesktop(context)
        //     ? WebContent()
        //     : Responsive.isTablet(context)
        //         ? TabletContent()
        //         : MobileContent(),
      ),
    );
  }
}

class WebContent extends StatelessWidget {
  const WebContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        LandingMangaCell(
          height: AppValues.landingListHeight.w,
          width: AppValues.landingListWidth,
          content: const IntroduceContent(),
        ),
        const Spacer(),
        LandingMangaCell(
          height: AppValues.landingListHeight.w,
          width: AppValues.landingAggroWidth,
          color: AppColors.black,
          content: const AggroContent(),
        ),
      ],
    );
  }
}

class TabletContent extends StatelessWidget {
  const TabletContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        LandingMangaCell(
          height: 360.w,
          width: 920.w,
          content: const IntroduceContent(),
        ),
        const Spacer(),
        LandingMangaCell(
          height: 360.w,
          width: 180.w,
          color: AppColors.black,
          content: const AggroContent(),
        ),
      ],
    );
  }
}

class MobileContent extends StatelessWidget {
  const MobileContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
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
    );
  }
}

class AggroContent extends StatelessWidget {
  const AggroContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        '첫\n째',
        style: TextStyle(
          fontFamily: AppString.font_family_jalnan,
          color: AppColors.white,
          fontSize: AppValues.landingAggroFontSize.sp,
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
        Image.asset(AppString.img_landing_illust),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Spacer(),
            Text(
              '멘토의 피드백',
              style: TextStyle(
                letterSpacing: 1.w,
                fontFamily: AppString.font_family_jalnan,
                fontSize: AppValues.landingTitleFontSize.sp,
              ),
            ),
            SizedBox(height: 5.w),
            Text(
              '데즈카상을 수상하고, 소년점프에서 활동 한 경험,\n대학원에서 연구한 일본 대중만화에 대한 제작론을 통해\n만화에 대해 피드백을 진행합니다!',
              textAlign: TextAlign.start,
              style: TextStyle(
                letterSpacing: 1.w,
                fontSize: AppValues.landingContentFontSize.sp,
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
