import 'package:flutter/material.dart';
import 'package:rutsubo/app/view/landing_page/landing_lists/landing_list_cells.dart';
import 'package:rutsubo/global_setting/app_colors.dart';
import 'package:rutsubo/global_setting/app_fontweight.dart';
import 'package:rutsubo/responsive.dart';

class LandingListCellThird extends StatelessWidget {
  const LandingListCellThird({super.key});

  @override
  Widget build(BuildContext context) {
    return LandingListWhiteCell(
      backgrondColor: AppColors.white,
      height: Responsive.isMobile(context) ? 200 : 250,
      content: Row(
        children: [
          RichText(
            text: TextSpan(
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
              children: [
                landingTextSpan("RUSTUBO+ 란?", AppColors.black,
                    fontSize: Responsive.isMobile(context) ? 40 : 60,
                    fontWeight: AppFontWeights.extrabold),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
