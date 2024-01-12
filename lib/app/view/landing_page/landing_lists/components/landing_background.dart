import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rutsubo/global_setting/app_colors.dart';
import 'package:rutsubo/global_setting/app_values.dart';

class LandingBackground extends StatelessWidget {
  const LandingBackground({
    super.key,
    required this.content,
  });

  final Widget content;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Center(
          child: Padding(
            padding: EdgeInsets.all(AppValues.manuscriptPadding.w),
            child: Container(
              width:
                  (AppValues.screenWidth - AppValues.manuscriptPadding * 2).w,
              decoration: BoxDecoration(
                border: Border.all(
                  width: 4.w,
                  color: AppColors.manuscriptBorder,
                ),
              ),
              child: Center(
                child: Padding(
                  padding: EdgeInsets.all(AppValues.manuscriptPadding.w),
                  child: Container(
                    width: (AppValues.screenWidth -
                            AppValues.manuscriptPadding * 4)
                        .w,
                    decoration: BoxDecoration(
                      border: Border.all(
                        width: 2.w,
                        color: AppColors.manuscriptBorder,
                      ),
                    ),
                    child: content,
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
