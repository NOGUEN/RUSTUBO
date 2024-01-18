import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:rutsubo/app/routes/app_pages.dart';
import 'package:rutsubo/global_setting/app_colors.dart';
import 'package:rutsubo/global_setting/app_string.dart';

class LandingCTAButton extends StatelessWidget {
  const LandingCTAButton({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.toNamed(AppPages.APPLICATION);
      },
      child: Container(
        width: 400.w,
        height: 100.w,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50.w),
          color: AppColors.black,
        ),
        child: Center(
          child: Text(
            '신청하기 →',
            style: TextStyle(
              fontSize: 50.sp,
              fontFamily: AppString.font_family_jalnan,
              height: 1.5,
              color: AppColors.white,
            ),
          ),
        ),
      ),
    );
  }
}
