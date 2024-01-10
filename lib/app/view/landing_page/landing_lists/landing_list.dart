import 'package:flutter/material.dart';
import 'package:rutsubo/app/controller/landing_page_controller.dart';
import 'package:rutsubo/app/view/landing_page/landing_lists/components/landing_list_cells/landing_list_cell_first.dart';
import 'package:rutsubo/app/view/landing_page/landing_lists/components/landing_list_cells/landing_list_cell_second.dart';
import 'package:rutsubo/app/view/landing_page/landing_lists/landing_list_cells.dart';
import 'package:rutsubo/app/view/landing_page/landing_page.dart';
import 'package:rutsubo/global_setting/app_colors.dart';
import 'package:rutsubo/global_setting/app_string.dart';
import 'package:rutsubo/responsive.dart';

class LandingList extends StatelessWidget {
  LandingList({super.key, required this.controller});

  final GlobalKey _backgroundImageKey = GlobalKey();
  final LandingPageController controller;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 2000,
      child: Stack(children: [
        Flow(
          delegate: ParallaxFlowDelegate(
            backgroundImageKey: _backgroundImageKey,
            scrollable: Scrollable.of(context),
            listItemContext: context,
          ),
          children: [
            SizedBox(
              child: Image.asset(
                AppString.img_landing_background,
                fit: BoxFit.cover,
                key: _backgroundImageKey,
              ),
            ),
          ],
        ),
        Container(
          width: double.infinity,
          height: Responsive.isDesktop(context)
              ? 1500
              : Responsive.isTablet(context)
                  ? 1200
                  : 900,
          decoration: BoxDecoration(color: AppColors.black.withOpacity(0.8)),
        ),
        SizedBox(
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              LandingListCellFirst(controller: controller),
              LandingListCellSecond(),
              LandingListCell3(),
            ],
          ),
        ),
      ]),
    );
  }
}
