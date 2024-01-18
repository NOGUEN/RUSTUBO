import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rutsubo/app/view/landing_page/landing_lists/landing_list_cells.dart';
import 'package:rutsubo/global_setting/app_colors.dart';
import 'package:rutsubo/global_setting/app_string.dart';

class LandingTitle extends StatelessWidget {
  const LandingTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(40.w),
      child: LandingMangaCell(
        height: 450.w,
        width: double.infinity,
        content: Stack(
          children: [
            SizedBox(
              width: double.infinity,
              child: Image.asset(
                AppString.img_landing_title,
                width: 1200.w,
                height: 450.w,
                fit: BoxFit.cover,
                color: Colors.white.withOpacity(0.6),
                colorBlendMode: BlendMode.modulate,
              ),
            ),
            Center(
              child: Stack(
                children: <Widget>[
                  Text(
                    AppString.app_title,
                    style: TextStyle(
                      letterSpacing: 5.w,
                      fontSize: 80.sp,
                      fontFamily: AppString.font_family_jalnan,
                      foreground: Paint()
                        ..style = PaintingStyle.stroke
                        ..strokeWidth = 8.w
                        ..color = AppColors.black,
                    ),
                  ),
                  Text(
                    AppString.app_title,
                    style: TextStyle(
                      fontSize: 80.sp,
                      letterSpacing: 5.w,
                      fontFamily: AppString.font_family_jalnan,
                      color: AppColors.white,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
